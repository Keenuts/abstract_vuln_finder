#pragma once
#include "Env.hh"
#include "Func.hh"
#include "Graph.hh"
#include "IR_manip.hh"
#include "Var.hh"
#include <list>
#include <llvm/ADT/StringMap.h>
#include <llvm/IR/Value.h>
#include <map>
#include <memory>
#include <string>
#include <utility>
#include <vector>

/* This class transforms the IR to be compatible with our own CFG.
 * Needs to be called for each functions.
 */
class TransformToCFG {
public:
  TransformToCFG();
  std::shared_ptr<Node> convert_function_to_node(IR_manip &ir, struct Env &env,
                                                 const std::string &func);
  std::shared_ptr<Node> convert_function_to_node(struct Env &env,
                                                 llvm::Function *func);

private:
  std::shared_ptr<Node>
  parse_instructions(struct Env &env, std::shared_ptr<Node> node,
                     const std::list<llvm::Instruction *>::iterator begin,
                     std::list<llvm::Instruction *>::iterator current,
                     const std::list<llvm::Instruction *>::iterator end);
  unsigned _node_cnt; // node counter
  unsigned _arc_cnt;  // arc counter
};
