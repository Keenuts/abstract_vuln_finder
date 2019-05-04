#include "CFG.hh"
#include <fstream>

CFG::CFG() {}

CFG::CFG(IR_manip &ir) {
  set_cfg_init_entry(ir);
  set_cfg_init_exit(ir);
}

CFG::CFG(IR_manip &ir, const std::string &func_name) {
  TransformToCFG ttc;
  struct Env env;
  ttc.convert_function_to_node(ir, env, func_name);
  _cfg_vars.insert(_cfg_vars.end(), env.env_vars.begin(), env.env_vars.end());
  _cfg_funcs.insert(_cfg_funcs.end(), env.env_func.begin(), env.env_func.end());
  set_arcs_and_nodes(env);
}
//Fix: Change the CFG type to an unordered set
void CFG::add_arc(struct Env& env, std::shared_ptr<Arc> arc)
{
  if (arc == nullptr)
    return;
  _cfg_arcs.push_back(arc);
  add_node(env, arc->node_out);
}

void CFG::add_node(struct Env& env, std::shared_ptr<Node> node)
{
  if (node == nullptr)
    return;
  _cfg_nodes.push_back(node);
  for (auto& I : node->arc_out)
    add_arc(env, I);
}

void CFG::set_arcs_and_nodes(struct Env& env)
{
  add_node(env, (*env.env_func.begin())->func_entry);
}
const std::vector<std::shared_ptr<Var>> CFG::get_cfg_vars() const {
  return _cfg_vars;
}

const std::vector<std::shared_ptr<Func>> CFG::get_cfg_funcs() const {
  return _cfg_funcs;
}

const std::vector<std::shared_ptr<Node>> CFG::get_cfg_nodes() const {
  return _cfg_nodes;
}

const std::vector<std::shared_ptr<Arc>> CFG::get_cfg_arcs() const {
  return _cfg_arcs;
}

const std::shared_ptr<Node> CFG::get_cfg_init_entry() const {
  return _cfg_init_entry;
}

const std::shared_ptr<Node> CFG::get_cfg_init_exit() const {
  return _cfg_init_exit;
}

void CFG::add_cfg_var(std::shared_ptr<Var> var) { _cfg_vars.push_back(var); }

void CFG::add_cfg_func(std::shared_ptr<Func> func) {
  _cfg_funcs.push_back(func);
}

void CFG::add_cfg_node(std::shared_ptr<Node> node) {
  _cfg_nodes.push_back(node);
}

void CFG::add_cfg_arc(std::shared_ptr<Arc> arc) { _cfg_arcs.push_back(arc); }

void CFG::set_cfg_init_entry(std::shared_ptr<Node> init_entry) {
  _cfg_init_entry = init_entry;
}

void CFG::set_cfg_init_entry(IR_manip &ir) {
  TransformToCFG ttc;
  struct Env env;

  _cfg_init_entry =
      ttc.convert_function_to_node(ir, env, "__mcsema_constructor");
  if (_cfg_init_entry == nullptr)
    return; // Fix : Make node from default function constructor
  // llvm::errs() << *(*_cfg_init_entry->arc_out.begin())->inst;
}
void CFG::set_cfg_init_exit(std::shared_ptr<Node> init_exit) {
  _cfg_init_exit = init_exit;
}

void CFG::set_cfg_init_exit(IR_manip &ir) {
  TransformToCFG ttc;
  struct Env env;
  _cfg_init_exit = ttc.convert_function_to_node(ir, env, "__mcsema_destructor");
  if (_cfg_init_exit == nullptr)
    return; // Fix: Make node from default function destructor
}

void CFG::print_arc(std::fstream &file, std::shared_ptr<Arc> arc) {
  if (arc == nullptr)
    return;
  std::string inst;
  llvm::raw_string_ostream rso(inst);
  arc->inst->print(rso);
  file << arc->node_in->id << " -> " << arc->node_out->id << " [label=\""
       << inst << "\"];\n";
  print_node(file, arc->node_out);
}

void CFG::print_node(std::fstream &file, std::shared_ptr<Node> node) {
  if (node == nullptr)
    return;
  for (auto &I : node->arc_out)
    print_arc(file, I);
}

void CFG::print_init() {
  std::fstream file;
  llvm::Function *func =
      (*_cfg_init_entry->arc_out.begin())->inst->getFunction();
  std::string filename = func->getName().str();
  filename.append(".dot");
  file.open(filename,
            std::fstream::in | std::fstream::out | std::fstream::trunc);
  if (file.is_open() == false) {
    std::cerr << "Failed to open file for printing\n";
    return;
  }

  file << "digraph ";
  file << func->getName().str() << " {\n";
  print_node(file, _cfg_init_entry);
  file << "}";
  file.close();
}
