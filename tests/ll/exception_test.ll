; ModuleID = 'exception_test.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu-elf"

%union.anon = type { i64 }
%seg_401550__rodata_type = type <{ [16 x i8], [27 x i8], [21 x i8], [28 x i8], [22 x i8], [39 x i8], [28 x i8], [27 x i8], [18 x i8], [25 x i8] }>
%seg_401834__gcc_except_table_type = type <{ [316 x i8], i32, i32, i32 }>
%seg_601de8__init_array_type = type <{ i64, i64 }>
%seg_601ff8__got_type = type <{ i64 }>
%seg_602000__got_plt_type = type <{ [24 x i8], i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }>
%_edata_type = type <{ [24 x i8] }>
%num_tests_type = type <{ [4 x i8] }>
%struct.State = type { %struct.ArchState, [32 x %union.VectorReg], %struct.ArithFlags, %union.anon, %struct.Segments, %struct.AddressSpace, %struct.GPR, %struct.X87Stack, %struct.MMX, %struct.FPUStatusFlags, %union.anon, %union.FPU, %struct.SegmentCaches }
%struct.ArchState = type { i32, i32, %union.anon }
%union.VectorReg = type { %union.vec512_t }
%union.vec512_t = type { %struct.uint64v8_t }
%struct.uint64v8_t = type { [8 x i64] }
%struct.ArithFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.Segments = type { i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector, i16, %union.SegmentSelector }
%union.SegmentSelector = type { i16 }
%struct.AddressSpace = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.Reg = type { %union.anon }
%struct.GPR = type { i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg, i64, %struct.Reg }
%struct.X87Stack = type { [8 x %struct.anon.3] }
%struct.anon.3 = type { i64, double }
%struct.MMX = type { [8 x %struct.anon.4] }
%struct.anon.4 = type { i64, %union.vec64_t }
%union.vec64_t = type { %struct.uint64v1_t }
%struct.uint64v1_t = type { [1 x i64] }
%struct.FPUStatusFlags = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [4 x i8] }
%union.FPU = type { %struct.anon.13 }
%struct.anon.13 = type { %struct.FpuFXSAVE, [96 x i8] }
%struct.FpuFXSAVE = type { %union.SegmentSelector, %union.SegmentSelector, %union.FPUAbridgedTagWord, i8, i16, i32, %union.SegmentSelector, i16, i32, %union.SegmentSelector, i16, %union.FPUControlStatus, %union.FPUControlStatus, [8 x %struct.FPUStackElem], [16 x %union.vec128_t] }
%union.FPUAbridgedTagWord = type { i8 }
%union.FPUControlStatus = type { i32 }
%struct.FPUStackElem = type { %union.anon.11, [6 x i8] }
%union.anon.11 = type { %struct.float80_t }
%struct.float80_t = type { [10 x i8] }
%union.vec128_t = type { %struct.uint128v1_t }
%struct.uint128v1_t = type { [1 x i128] }
%struct.SegmentCaches = type { %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow, %struct.SegmentShadow }
%struct.SegmentShadow = type { %union.anon, i32, i32 }
%struct.Memory = type opaque

@DR0 = external global i64, align 8
@DR1 = external global i64, align 8
@DR2 = external global i64, align 8
@DR3 = external global i64, align 8
@DR4 = external global i64, align 8
@DR5 = external global i64, align 8
@DR6 = external global i64, align 8
@DR7 = external global i64, align 8
@gCR0 = external global %union.anon, align 1
@gCR1 = external global %union.anon, align 1
@gCR2 = external global %union.anon, align 1
@gCR3 = external global %union.anon, align 1
@gCR4 = external global %union.anon, align 1
@gCR8 = external global %union.anon, align 1
@_ZNSt11logic_errorC2ERKS_ = external global i64, align 64
@_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = external global i64, align 8
@_ZTId = external global i8, align 256
@_ZTVSt12out_of_range = external global i8, align 16
@_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = external global i64, align 16
@_ZTISt12out_of_range = external global i8, align 16
@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev = external global i64, align 8
@_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ = external global i64, align 16
@_ZNSt13runtime_errorC1ERKS_ = external global i64, align 8
@_ZTISt13runtime_error = external global i8, align 16
@seg_401550__rodata = internal constant %seg_401550__rodata_type <{ [16 x i8] c"\01\00\02\00\00\00\00\00333333\11@", [27 x i8] c"  Throwing out_of_range()\0A\00", [21 x i8] c"out_of_range comment\00", [28 x i8] c"  Throwing runtime_error()\0A\00", [22 x i8] c"runtime_error comment\00", [39 x i8] c"Fallback mode, Not throwing exception\0A\00", [28 x i8] c"Catching: runtime_error %s\0A\00", [27 x i8] c"Catching: out_of_range %s\0A\00", [18 x i8] c"Catching: double\0A\00", [25 x i8] c"Throw test finished! %d\0A\00" }>
@seg_401834__gcc_except_table = internal global %seg_401834__gcc_except_table_type <{ [316 x i8] c"\FF\03I\03A\00\00\00\00H\00\00\00\00\00\00\00\00H\00\00\00\14\00\00\00\93\00\00\00\00a\00\00\00-\00\00\00\A1\00\00\00\00\AA\00\00\00\09\00\00\00\EC\00\00\00\01\B3\00\00\00F\00\00\00\00\00\00\00\00\01\00\00\00\00\00\FF\03I\03A\00\00\00\00H\00\00\00\00\00\00\00\00H\00\00\00\14\00\00\00\93\00\00\00\00a\00\00\00-\00\00\00\A1\00\00\00\00\AA\00\00\00\09\00\00\00\EC\00\00\00\01\B3\00\00\00F\00\00\00\00\00\00\00\00\01\00\00\00\00\00\FF\03\AA\81\80\00\03\8F\01D\00\00\00\05\00\00\00S\00\00\00\05I\00\00\00A\00\00\00\00\00\00\00\00\8A\00\00\00\12\00\00\00\87\02\00\00\00\9C\00\00\00\80\00\00\00\00\00\00\00\00\1C\01\00\00\15\00\00\00f\02\00\00\001\01\00\00y\00\00\00\00\00\00\00\00\AA\01\00\00\15\00\00\00E\02\00\00\00\BF\01\00\00(\00\00\00\00\00\00\00\00\E7\01\00\00I\00\00\00S\00\00\00\05W\02\00\00&\00\00\00\9E\02\00\00\07}\02\00\001\00\00\00\00\00\00\00\00\01\00\02}\03}\04\00\00\00\00\00", i32 0, i32 0, i32 0 }>
@seg_601de8__init_array = internal global %seg_601de8__init_array_type <{ i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400f70_frame_dummy to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @callback_sub_400f40___do_global_dtors_aux to i64) }>
@seg_601ff8__got = internal global %seg_601ff8__got_type <{ i64 ptrtoint (i64 ()* @__gmon_start__ to i64) }>
@seg_602000__got_plt = internal global %seg_602000__got_plt_type <{ [24 x i8] c"\F8\1D`\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64)* @printf to i64), i64 0, i64 ptrtoint (i64 (i64)* @_ZNKSt11logic_error4whatEv to i64), i64 ptrtoint (i64 (i64, i64, i64, i64, i64, i64, i64, i64)* @__libc_start_main to i64), i64 0, i64 ptrtoint (i64 (i64)* @_ZSt9terminatev to i64), i64 ptrtoint (i64 (i64)* @atoi to i64), i64 ptrtoint (i64 (i64)* @_ZNSt12out_of_rangeD1Ev to i64), i64 0, i64 ptrtoint (i64 (i64)* @__cxa_allocate_exception to i64), i64 ptrtoint (i64 (i64)* @_ZNSaIcED1Ev to i64), i64 ptrtoint (i64 (i64)* @__cxa_free_exception to i64), i64 ptrtoint (i64 (i64)* @_ZNSt13runtime_errorD1Ev to i64), i64 ptrtoint (i64 (i64)* @__cxa_get_exception_ptr to i64), i64 0, i64 ptrtoint (i64 (i64, i64, i64)* @__cxa_throw to i64), i64 0, i64 ptrtoint (i64 ()* @__cxa_end_catch to i64), i64 ptrtoint (i64 (i64)* @__cxa_begin_catch to i64), i64 0, i64 ptrtoint (i64 (i64)* @_ZNSaIcEC1Ev to i64), i64 ptrtoint (i64 ()* @__gxx_personality_v0 to i64), i64 ptrtoint (i64 (i64)* @_Unwind_Resume to i64), i64 ptrtoint (i64 (i64)* @_ZNKSt13runtime_error4whatEv to i64) }>
@_edata = local_unnamed_addr global %_edata_type zeroinitializer
@num_tests = local_unnamed_addr global %num_tests_type zeroinitializer
@__mcsema_reg_state = internal thread_local global %struct.State zeroinitializer
@__mcsema_stack = internal thread_local global [131072 x i64] zeroinitializer
@__mcsema_tls = internal thread_local global [512 x i64] zeroinitializer
@0 = internal global i1 false
@llvm.global_dtors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_destructor, i8* null }]
@llvm.global_ctors = appending constant [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 101, void ()* @__mcsema_constructor, i8* null }]

; Function Attrs: nounwind readnone speculatable
declare i32 @llvm.ctpop.i32(i32) #0

; Function Attrs: noduplicate noinline nounwind optnone
define %struct.Memory* @__remill_error(%struct.State* dereferenceable(3376), i64, %struct.Memory*) local_unnamed_addr #1 {
  call void @llvm.trap()
  unreachable
}

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_Unwind_Resume(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_free_exception(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_get_exception_ptr(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gxx_personality_v0() #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ZSt9terminatev(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @printf(i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__libc_start_main(i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_allocate_exception(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @atoi(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ZNKSt13runtime_error4whatEv(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ZNSt13runtime_errorD1Ev(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__gmon_start__() #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ZNSaIcED1Ev(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_begin_catch(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ZNSaIcEC1Ev(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ZNSt12out_of_rangeD1Ev(i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_throw(i64, i64, i64) #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @__cxa_end_catch() #2

; Function Attrs: noinline
declare extern_weak x86_64_sysvcc i64 @_ZNKSt11logic_error4whatEv(i64) #2

; Function Attrs: noinline
define %struct.Memory* @sub_400ea0__start(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {
block_400ea0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  store i64 0, i64* %10, align 8, !tbaa !1231
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %12, align 8, !tbaa !1231
  %20 = load i64, i64* %9, align 8, !tbaa !1231
  %21 = add i64 %20, 8
  %22 = inttoptr i64 %20 to i64*
  %23 = load i64, i64* %22
  store i64 %23, i64* %7, align 8, !tbaa !1231
  store i64 %21, i64* %6, align 8, !tbaa !1231
  %24 = and i64 %21, -16
  store i8 0, i8* %13, align 1, !tbaa !1235
  %25 = trunc i64 %21 to i32
  %26 = and i32 %25, 240
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #9
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  store i8 %30, i8* %14, align 1, !tbaa !1249
  %31 = icmp eq i64 %24, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %15, align 1, !tbaa !1250
  %33 = lshr i64 %21, 63
  %34 = trunc i64 %33 to i8
  store i8 %34, i8* %16, align 1, !tbaa !1251
  store i8 0, i8* %17, align 1, !tbaa !1252
  store i8 0, i8* %18, align 1, !tbaa !1253
  %35 = load i64, i64* %4, align 8
  %36 = add i64 %24, -8
  %37 = inttoptr i64 %36 to i64*
  store i64 %35, i64* %37
  %38 = add i64 %24, -16
  %39 = inttoptr i64 %38 to i64*
  store i64 %36, i64* %39
  store i64 ptrtoint (i64 ()* @callback_sub_401540___libc_csu_fini to i64), i64* %11, align 8, !tbaa !1231
  store i64 ptrtoint (i64 ()* @callback_sub_4014d0___libc_csu_init to i64), i64* %5, align 8, !tbaa !1231
  store i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64* %8, align 8, !tbaa !1231
  %40 = add i64 %1, 41
  %41 = add i64 %24, -24
  %42 = inttoptr i64 %41 to i64*
  store i64 %40, i64* %42
  %43 = inttoptr i64 %38 to i64*
  %44 = load i64, i64* %43
  %45 = add i64 %24, -8
  %46 = inttoptr i64 %45 to i64*
  %47 = load i64, i64* %46
  %48 = inttoptr i64 %41 to i64*
  %49 = load i64, i64* %48
  store i64 %38, i64* %9, align 8, !alias.scope !1254, !noalias !1257
  %50 = tail call i64 @__libc_start_main(i64 ptrtoint (i64 (i64, i64, i64)* @main to i64), i64 %23, i64 %21, i64 ptrtoint (i64 ()* @callback_sub_4014d0___libc_csu_init to i64), i64 ptrtoint (i64 ()* @callback_sub_401540___libc_csu_fini to i64), i64 %19, i64 %44, i64 %47), !noalias !1254
  store i64 %50, i64* %4, align 8, !alias.scope !1254, !noalias !1257
  %51 = add i64 %49, 1
  store i64 %51, i64* %3, align 8
  %52 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 %51, %struct.Memory* %2)
  ret %struct.Memory* %52
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401544__term_proc(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {
block_401544:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = add i64 %5, -8
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %9 = xor i64 %6, %5
  %10 = lshr i64 %9, 4
  %11 = trunc i64 %10 to i8
  %12 = and i8 %11, 1
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %15 = lshr i64 %6, 63
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %17 = lshr i64 %5, 63
  %18 = xor i64 %15, %17
  %19 = add nuw nsw i64 %18, %17
  %20 = icmp eq i64 %19, 2
  %21 = zext i1 %20 to i8
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %23 = icmp ult i64 %5, 8
  %24 = zext i1 %23 to i8
  store i8 %24, i8* %7, align 1, !tbaa !1235
  %25 = trunc i64 %5 to i32
  %26 = and i32 %25, 255
  %27 = tail call i32 @llvm.ctpop.i32(i32 %26) #9
  %28 = trunc i32 %27 to i8
  %29 = and i8 %28, 1
  %30 = xor i8 %29, 1
  store i8 %30, i8* %8, align 1, !tbaa !1249
  store i8 %12, i8* %13, align 1, !tbaa !1253
  %31 = icmp eq i64 %5, 0
  %32 = zext i1 %31 to i8
  store i8 %32, i8* %14, align 1, !tbaa !1250
  %33 = trunc i64 %17 to i8
  store i8 %33, i8* %16, align 1, !tbaa !1251
  store i8 %21, i8* %22, align 1, !tbaa !1252
  %34 = inttoptr i64 %5 to i64*
  %35 = load i64, i64* %34
  store i64 %35, i64* %3, align 8, !tbaa !1231
  %36 = add i64 %5, 8
  store i64 %36, i64* %4, align 8, !tbaa !1231
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400f00_register_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400f30:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 0, i64* %4, align 8, !tbaa !1231
  store i64 0, i64* %5, align 8, !tbaa !1231
  store i8 0, i8* %6, align 1, !tbaa !1259
  store i8 1, i8* %7, align 1, !tbaa !1259
  store i8 0, i8* %8, align 1, !tbaa !1259
  store i8 1, i8* %9, align 1, !tbaa !1259
  store i8 0, i8* %10, align 1, !tbaa !1259
  store i8 0, i8* %11, align 1, !tbaa !1259
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !tbaa !1231
  %14 = inttoptr i64 %13 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %3, align 8, !tbaa !1231
  %16 = add i64 %13, 8
  store i64 %16, i64* %12, align 8, !tbaa !1231
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400d00(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400d00:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 8) to i64*)
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !tbaa !1231
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %4, i64* %8
  store i64 %7, i64* %5, align 8, !tbaa !1231
  %9 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 16) to i64*)
  store i64 %9, i64* %3, align 8, !tbaa !1231
  %10 = icmp eq i64 %9, 4197644
  br i1 %10, label %block_400d0c, label %12

block_400d0c:                                     ; preds = %block_400d00
  store i64 4197648, i64* %3, align 8
  %11 = tail call %struct.Memory* @__remill_error(%struct.State* nonnull %0, i64 4197648, %struct.Memory* %2)
  ret %struct.Memory* %11

; <label>:12:                                     ; preds = %block_400d00
  %13 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %9, %struct.Memory* %2)
  ret %struct.Memory* %13
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401540___libc_csu_fini(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {
block_401540:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %4, align 8, !tbaa !1231
  %6 = inttoptr i64 %5 to i64*
  %7 = load i64, i64* %6
  store i64 %7, i64* %3, align 8, !tbaa !1231
  %8 = add i64 %5, 8
  store i64 %8, i64* %4, align 8, !tbaa !1231
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400e10___ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400e10:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*)
  store i64 %4, i64* %3, align 8, !tbaa !1231
  %5 = icmp eq i64 %4, 4197910
  br i1 %5, label %block_400e16, label %11

block_400e16:                                     ; preds = %block_400e10
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !1231
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 16, i64* %9
  store i64 %8, i64* %6, align 8, !tbaa !1231
  %10 = tail call %struct.Memory* @sub_400d00(%struct.State* nonnull %0, i64 4197632, %struct.Memory* %2)
  ret %struct.Memory* %10

; <label>:11:                                     ; preds = %block_400e10
  %12 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %4, %struct.Memory* %2)
  ret %struct.Memory* %12
}

; Function Attrs: noinline
define %struct.Memory* @sub_400f80__Z17test_throw_doublev(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {
block_400f80:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %7, align 8, !tbaa !1231
  %12 = add i64 %11, -8
  %13 = inttoptr i64 %12 to i64*
  store i64 %10, i64* %13
  store i64 %12, i64* %8, align 8, !tbaa !1231
  %14 = add i64 %11, -24
  %15 = add i64 %1, 20
  %16 = add i64 %11, -32
  %17 = inttoptr i64 %16 to i64*
  store i64 %15, i64* %17
  %18 = inttoptr i64 %16 to i64*
  %19 = load i64, i64* %18
  store i64 %19, i64* %3, align 8, !alias.scope !1260, !noalias !1263
  store i64 %14, i64* %7, align 8, !alias.scope !1260, !noalias !1263
  %20 = tail call i64 @__cxa_allocate_exception(i64 8)
  %21 = load i64, i64* %3, align 8
  store i64 0, i64* %4, align 8, !tbaa !1231
  store i64 0, i64* %5, align 8, !tbaa !1231
  %22 = load double, double* inttoptr (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 8) to double*)
  %23 = bitcast %union.VectorReg* %9 to double*
  store double %22, double* %23, align 1, !tbaa !1265
  %24 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 1, i64 0, i32 0, i32 0, i32 0, i64 1
  %25 = bitcast i64* %24 to double*
  store double 0.000000e+00, double* %25, align 1, !tbaa !1265
  %26 = inttoptr i64 %20 to double*
  store double %22, double* %26
  %27 = load i64, i64* %8, align 8
  %28 = add i64 %27, -8
  %29 = inttoptr i64 %28 to i64*
  store i64 ptrtoint (i8* @_ZTId to i64), i64* %29
  %30 = inttoptr i64 %28 to i64*
  %31 = load i64, i64* %30
  store i64 %31, i64* %6, align 8, !tbaa !1231
  %32 = add i64 %21, 42
  %33 = load i64, i64* %7, align 8, !tbaa !1231
  %34 = add i64 %33, -8
  %35 = inttoptr i64 %34 to i64*
  store i64 %32, i64* %35
  %36 = inttoptr i64 %34 to i64*
  %37 = load i64, i64* %36
  store i64 %37, i64* %3, align 8, !alias.scope !1267, !noalias !1270
  store i64 %33, i64* %7, align 8, !alias.scope !1267, !noalias !1270
  %38 = tail call i64 @__cxa_throw(i64 %20, i64 %31, i64 0), !noalias !1267
  %39 = load i64, i64* %3, align 8
  %40 = add i64 %39, 2
  %41 = tail call %struct.Memory* @sub_400fc0__Z23test_throw_out_of_rangev(%struct.State* nonnull %0, i64 %40, %struct.Memory* %2)
  ret %struct.Memory* %41
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400f40___do_global_dtors_aux(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400f40:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %5 = load i8, i8* inttoptr (i64 add (i64 ptrtoint (i8* @_ZTVSt12out_of_range to i64), i64 40) to i8*)
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %6, align 1, !tbaa !1235
  %7 = zext i8 %5 to i32
  %8 = tail call i32 @llvm.ctpop.i32(i32 %7) #9
  %9 = trunc i32 %8 to i8
  %10 = and i8 %9, 1
  %11 = xor i8 %10, 1
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %11, i8* %12, align 1, !tbaa !1249
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %13, align 1, !tbaa !1253
  %14 = icmp eq i8 %5, 0
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %15, i8* %16, align 1, !tbaa !1250
  %17 = lshr i8 %5, 7
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %17, i8* %18, align 1, !tbaa !1251
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %19, align 1, !tbaa !1252
  %20 = select i1 %14, i64 9, i64 32
  %21 = add i64 %20, %1
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  br i1 %14, label %block_400f49, label %block_400f60

block_400f49:                                     ; preds = %block_400f40
  %23 = load i64, i64* %4, align 8
  %24 = load i64, i64* %22, align 8, !tbaa !1231
  %25 = add i64 %24, -8
  %26 = inttoptr i64 %25 to i64*
  store i64 %23, i64* %26
  store i64 %25, i64* %4, align 8, !tbaa !1231
  %27 = add i64 %21, -121
  %28 = add i64 %21, 9
  %29 = add i64 %24, -16
  %30 = inttoptr i64 %29 to i64*
  store i64 %28, i64* %30
  store i64 %29, i64* %22, align 8, !tbaa !1231
  %31 = tail call %struct.Memory* @sub_400ed0_deregister_tm_clones(%struct.State* nonnull %0, i64 %27, %struct.Memory* %2)
  store i8 1, i8* inttoptr (i64 add (i64 ptrtoint (i8* @_ZTVSt12out_of_range to i64), i64 40) to i8*)
  %32 = load i64, i64* %22, align 8, !tbaa !1231
  %33 = add i64 %32, 8
  %34 = inttoptr i64 %32 to i64*
  %35 = load i64, i64* %34
  store i64 %35, i64* %4, align 8, !tbaa !1231
  %36 = inttoptr i64 %33 to i64*
  %37 = load i64, i64* %36
  store i64 %37, i64* %3, align 8, !tbaa !1231
  %38 = add i64 %32, 16
  store i64 %38, i64* %22, align 8, !tbaa !1231
  ret %struct.Memory* %31

block_400f60:                                     ; preds = %block_400f40
  %39 = load i64, i64* %22, align 8, !tbaa !1231
  %40 = inttoptr i64 %39 to i64*
  %41 = load i64, i64* %40
  store i64 %41, i64* %3, align 8, !tbaa !1231
  %42 = add i64 %39, 8
  store i64 %42, i64* %22, align 8, !tbaa !1231
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_4010c0__Z24test_throw_runtime_errorv(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {
block_4010c0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %5 = bitcast %union.anon* %4 to i8*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %9, align 8, !tbaa !1231
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14
  store i64 %13, i64* %10, align 8, !tbaa !1231
  %15 = add i64 %12, -104
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %16, align 1, !tbaa !1235
  %22 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 64), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 64), i64 4294967295)) to i32), i32 255)) #9
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %17, align 1, !tbaa !1249
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 64), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 64), i64 4294967295)) to i32), i32 0) to i8), i8* %19, align 1, !tbaa !1250
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 64), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 64), i64 4294967295)) to i32), i32 31) to i8), i8* %20, align 1, !tbaa !1251
  store i8 0, i8* %21, align 1, !tbaa !1252
  store i8 0, i8* %18, align 1, !tbaa !1253
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 64), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 64), i64 4294967295)) to i8), i8* %5, align 1, !tbaa !1259
  %26 = add i64 %1, 26
  %27 = add i64 %12, -112
  %28 = inttoptr i64 %27 to i64*
  store i64 %26, i64* %28
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %34 = load i64, i64* %7, align 8, !alias.scope !1272, !noalias !1275
  %35 = load i64, i64* %31, align 8, !alias.scope !1272, !noalias !1275
  %36 = load i64, i64* %30, align 8, !alias.scope !1272, !noalias !1275
  %37 = load i64, i64* %32, align 8, !alias.scope !1272, !noalias !1275
  %38 = load i64, i64* %33, align 8, !alias.scope !1272, !noalias !1275
  %39 = inttoptr i64 %15 to i64*
  %40 = load i64, i64* %39
  %41 = add i64 %12, -96
  %42 = inttoptr i64 %41 to i64*
  %43 = load i64, i64* %42
  %44 = add i64 %12, -88
  %45 = inttoptr i64 %44 to i64*
  %46 = load i64, i64* %45
  %47 = add i64 %12, -80
  %48 = inttoptr i64 %47 to i64*
  %49 = load i64, i64* %48
  %50 = add i64 %12, -72
  %51 = inttoptr i64 %50 to i64*
  %52 = load i64, i64* %51
  %53 = add i64 %12, -64
  %54 = inttoptr i64 %53 to i64*
  %55 = load i64, i64* %54
  %56 = add i64 %12, -56
  %57 = inttoptr i64 %56 to i64*
  %58 = load i64, i64* %57
  %59 = add i64 %12, -48
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60
  %62 = add i64 %12, -40
  %63 = inttoptr i64 %62 to i64*
  %64 = load i64, i64* %63
  %65 = add i64 %12, -32
  %66 = inttoptr i64 %65 to i64*
  %67 = load i64, i64* %66
  %68 = inttoptr i64 %27 to i64*
  %69 = load i64, i64* %68
  store i64 %69, i64* %3, align 8, !alias.scope !1272, !noalias !1275
  store i64 %15, i64* %9, align 8, !alias.scope !1272, !noalias !1275
  %70 = tail call i64 @printf(i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 64), i64 4294967295) to i32) to i64), i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %40, i64 %43, i64 %46, i64 %49, i64 %52, i64 %55, i64 %58, i64 %61, i64 %64, i64 %67), !noalias !1272
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, -60
  %74 = trunc i64 %70 to i32
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75
  %76 = add i64 %71, 15
  %77 = load i64, i64* %9, align 8, !tbaa !1231
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %76, i64* %79
  %80 = inttoptr i64 %78 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %3, align 8, !alias.scope !1277, !noalias !1280
  store i64 %77, i64* %9, align 8, !alias.scope !1277, !noalias !1280
  %82 = tail call i64 @__cxa_allocate_exception(i64 16)
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, -53
  %86 = inttoptr i64 %85 to i8*
  store i8 1, i8* %86
  %87 = add i64 %84, -40
  %88 = add i64 %84, -72
  %89 = inttoptr i64 %88 to i64*
  store i64 %82, i64* %89
  %90 = add i64 %84, -80
  %91 = inttoptr i64 %90 to i64*
  store i64 %87, i64* %91
  %92 = add i64 %84, -88
  %93 = inttoptr i64 %92 to i64*
  store i64 %82, i64* %93
  %94 = add i64 %83, 31
  %95 = load i64, i64* %9, align 8, !tbaa !1231
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98
  store i64 %99, i64* %3, align 8, !alias.scope !1282, !noalias !1285
  store i64 %95, i64* %9, align 8, !alias.scope !1282, !noalias !1285
  %100 = tail call i64 @_ZNSaIcEC1Ev(i64 %87), !noalias !1282
  store i64 %100, i64* %29, align 8, !alias.scope !1282, !noalias !1285
  %101 = load i64, i64* %3, align 8
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 92), i64 4294967295) to i32) to i64), i64* %7, align 8, !tbaa !1231
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, -32
  store i64 %103, i64* %8, align 8, !tbaa !1231
  %104 = add i64 %102, -80
  %105 = inttoptr i64 %104 to i64*
  %106 = load i64, i64* %105
  store i64 %106, i64* %6, align 8, !tbaa !1231
  %107 = add i64 %101, -712
  %108 = add i64 %101, 20
  %109 = load i64, i64* %9, align 8, !tbaa !1231
  %110 = add i64 %109, -8
  %111 = inttoptr i64 %110 to i64*
  store i64 %108, i64* %111
  store i64 %110, i64* %9, align 8, !tbaa !1231
  %112 = tail call %struct.Memory* @sub_400e40___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%struct.State* nonnull %0, i64 %107, %struct.Memory* %2)
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %114, -32
  store i64 %115, i64* %7, align 8, !tbaa !1231
  %116 = add i64 %114, -88
  %117 = inttoptr i64 %116 to i64*
  %118 = load i64, i64* %117
  store i64 %118, i64* %8, align 8, !tbaa !1231
  %119 = add i64 %113, -1020
  %120 = add i64 %113, 18
  %121 = load i64, i64* %9, align 8, !tbaa !1231
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123
  store i64 %122, i64* %9, align 8, !tbaa !1231
  %124 = tail call %struct.Memory* @sub_400d20___ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.State* nonnull %0, i64 %119, %struct.Memory* %112)
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, -53
  %128 = inttoptr i64 %127 to i8*
  store i8 0, i8* %128
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (i8* @_ZTISt13runtime_error to i64), i64 4294967295) to i32) to i64), i64* %7, align 8, !tbaa !1231
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (i64 (i64)* @_ZNSt13runtime_errorD1Ev to i64), i64 4294967295) to i32) to i64), i64* %6, align 8, !tbaa !1231
  %129 = add i64 %126, -72
  %130 = inttoptr i64 %129 to i64*
  %131 = load i64, i64* %130
  store i64 %131, i64* %8, align 8, !tbaa !1231
  %132 = add i64 %125, 32
  %133 = load i64, i64* %9, align 8, !tbaa !1231
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135
  %136 = inttoptr i64 %134 to i64*
  %137 = load i64, i64* %136
  store i64 %137, i64* %3, align 8, !alias.scope !1287, !noalias !1290
  store i64 %133, i64* %9, align 8, !alias.scope !1287, !noalias !1290
  %138 = tail call i64 @__cxa_throw(i64 %131, i64 zext (i32 trunc (i64 and (i64 ptrtoint (i8* @_ZTISt13runtime_error to i64), i64 4294967295) to i32) to i64), i64 zext (i32 trunc (i64 and (i64 ptrtoint (i64 (i64)* @_ZNSt13runtime_errorD1Ev to i64), i64 4294967295) to i32) to i64)), !noalias !1287
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 114
  %141 = tail call %struct.Memory* @sub_4011c0_main(%struct.State* nonnull %0, i64 %140, %struct.Memory* %124)
  ret %struct.Memory* %141
}

; Function Attrs: noinline
define %struct.Memory* @sub_400fc0__Z23test_throw_out_of_rangev(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {
block_400fc0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %5 = bitcast %union.anon* %4 to i8*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* %9, align 8, !tbaa !1231
  %13 = add i64 %12, -8
  %14 = inttoptr i64 %13 to i64*
  store i64 %11, i64* %14
  store i64 %13, i64* %10, align 8, !tbaa !1231
  %15 = add i64 %12, -104
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %16, align 1, !tbaa !1235
  %22 = tail call i32 @llvm.ctpop.i32(i32 and (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 16), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 16), i64 4294967295)) to i32), i32 255)) #9
  %23 = trunc i32 %22 to i8
  %24 = and i8 %23, 1
  %25 = xor i8 %24, 1
  store i8 %25, i8* %17, align 1, !tbaa !1249
  store i8 zext (i1 icmp eq (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 16), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 16), i64 4294967295)) to i32), i32 0) to i8), i8* %19, align 1, !tbaa !1250
  store i8 trunc (i32 lshr (i32 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 16), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 16), i64 4294967295)) to i32), i32 31) to i8), i8* %20, align 1, !tbaa !1251
  store i8 0, i8* %21, align 1, !tbaa !1252
  store i8 0, i8* %18, align 1, !tbaa !1253
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 16), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 16), i64 4294967295)) to i8), i8* %5, align 1, !tbaa !1259
  %26 = add i64 %1, 26
  %27 = add i64 %12, -112
  %28 = inttoptr i64 %27 to i64*
  store i64 %26, i64* %28
  %29 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %30 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %32 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %33 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %34 = load i64, i64* %7, align 8, !alias.scope !1292, !noalias !1295
  %35 = load i64, i64* %31, align 8, !alias.scope !1292, !noalias !1295
  %36 = load i64, i64* %30, align 8, !alias.scope !1292, !noalias !1295
  %37 = load i64, i64* %32, align 8, !alias.scope !1292, !noalias !1295
  %38 = load i64, i64* %33, align 8, !alias.scope !1292, !noalias !1295
  %39 = inttoptr i64 %15 to i64*
  %40 = load i64, i64* %39
  %41 = add i64 %12, -96
  %42 = inttoptr i64 %41 to i64*
  %43 = load i64, i64* %42
  %44 = add i64 %12, -88
  %45 = inttoptr i64 %44 to i64*
  %46 = load i64, i64* %45
  %47 = add i64 %12, -80
  %48 = inttoptr i64 %47 to i64*
  %49 = load i64, i64* %48
  %50 = add i64 %12, -72
  %51 = inttoptr i64 %50 to i64*
  %52 = load i64, i64* %51
  %53 = add i64 %12, -64
  %54 = inttoptr i64 %53 to i64*
  %55 = load i64, i64* %54
  %56 = add i64 %12, -56
  %57 = inttoptr i64 %56 to i64*
  %58 = load i64, i64* %57
  %59 = add i64 %12, -48
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60
  %62 = add i64 %12, -40
  %63 = inttoptr i64 %62 to i64*
  %64 = load i64, i64* %63
  %65 = add i64 %12, -32
  %66 = inttoptr i64 %65 to i64*
  %67 = load i64, i64* %66
  %68 = inttoptr i64 %27 to i64*
  %69 = load i64, i64* %68
  store i64 %69, i64* %3, align 8, !alias.scope !1292, !noalias !1295
  store i64 %15, i64* %9, align 8, !alias.scope !1292, !noalias !1295
  %70 = tail call i64 @printf(i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 16), i64 4294967295) to i32) to i64), i64 %34, i64 %35, i64 %36, i64 %37, i64 %38, i64 %40, i64 %43, i64 %46, i64 %49, i64 %52, i64 %55, i64 %58, i64 %61, i64 %64, i64 %67), !noalias !1292
  %71 = load i64, i64* %3, align 8
  %72 = load i64, i64* %10, align 8
  %73 = add i64 %72, -60
  %74 = trunc i64 %70 to i32
  %75 = inttoptr i64 %73 to i32*
  store i32 %74, i32* %75
  %76 = add i64 %71, 15
  %77 = load i64, i64* %9, align 8, !tbaa !1231
  %78 = add i64 %77, -8
  %79 = inttoptr i64 %78 to i64*
  store i64 %76, i64* %79
  %80 = inttoptr i64 %78 to i64*
  %81 = load i64, i64* %80
  store i64 %81, i64* %3, align 8, !alias.scope !1297, !noalias !1300
  store i64 %77, i64* %9, align 8, !alias.scope !1297, !noalias !1300
  %82 = tail call i64 @__cxa_allocate_exception(i64 16)
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* %10, align 8
  %85 = add i64 %84, -53
  %86 = inttoptr i64 %85 to i8*
  store i8 1, i8* %86
  %87 = add i64 %84, -40
  %88 = add i64 %84, -72
  %89 = inttoptr i64 %88 to i64*
  store i64 %82, i64* %89
  %90 = add i64 %84, -80
  %91 = inttoptr i64 %90 to i64*
  store i64 %87, i64* %91
  %92 = add i64 %84, -88
  %93 = inttoptr i64 %92 to i64*
  store i64 %82, i64* %93
  %94 = add i64 %83, 31
  %95 = load i64, i64* %9, align 8, !tbaa !1231
  %96 = add i64 %95, -8
  %97 = inttoptr i64 %96 to i64*
  store i64 %94, i64* %97
  %98 = inttoptr i64 %96 to i64*
  %99 = load i64, i64* %98
  store i64 %99, i64* %3, align 8, !alias.scope !1302, !noalias !1305
  store i64 %95, i64* %9, align 8, !alias.scope !1302, !noalias !1305
  %100 = tail call i64 @_ZNSaIcEC1Ev(i64 %87), !noalias !1302
  store i64 %100, i64* %29, align 8, !alias.scope !1302, !noalias !1305
  %101 = load i64, i64* %3, align 8
  store i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 43), i64 4294967295) to i32) to i64), i64* %7, align 8, !tbaa !1231
  %102 = load i64, i64* %10, align 8
  %103 = add i64 %102, -32
  store i64 %103, i64* %8, align 8, !tbaa !1231
  %104 = add i64 %102, -80
  %105 = inttoptr i64 %104 to i64*
  %106 = load i64, i64* %105
  store i64 %106, i64* %6, align 8, !tbaa !1231
  %107 = add i64 %101, -456
  %108 = add i64 %101, 20
  %109 = load i64, i64* %9, align 8, !tbaa !1231
  %110 = add i64 %109, -8
  %111 = inttoptr i64 %110 to i64*
  store i64 %108, i64* %111
  store i64 %110, i64* %9, align 8, !tbaa !1231
  %112 = tail call %struct.Memory* @sub_400e40___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%struct.State* nonnull %0, i64 %107, %struct.Memory* %2)
  %113 = load i64, i64* %3, align 8
  %114 = load i64, i64* %10, align 8
  %115 = add i64 %114, -32
  store i64 %115, i64* %7, align 8, !tbaa !1231
  %116 = add i64 %114, -88
  %117 = inttoptr i64 %116 to i64*
  %118 = load i64, i64* %117
  store i64 %118, i64* %8, align 8, !tbaa !1231
  %119 = add i64 %113, -524
  %120 = add i64 %113, 18
  %121 = load i64, i64* %9, align 8, !tbaa !1231
  %122 = add i64 %121, -8
  %123 = inttoptr i64 %122 to i64*
  store i64 %120, i64* %123
  store i64 %122, i64* %9, align 8, !tbaa !1231
  %124 = tail call %struct.Memory* @sub_400e10___ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.State* nonnull %0, i64 %119, %struct.Memory* %112)
  %125 = load i64, i64* %3, align 8
  %126 = load i64, i64* %10, align 8
  %127 = add i64 %126, -53
  %128 = inttoptr i64 %127 to i8*
  store i8 0, i8* %128
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (i8* @_ZTISt12out_of_range to i64), i64 4294967295) to i32) to i64), i64* %7, align 8, !tbaa !1231
  store i64 zext (i32 trunc (i64 and (i64 ptrtoint (i64 (i64)* @_ZNSt12out_of_rangeD1Ev to i64), i64 4294967295) to i32) to i64), i64* %6, align 8, !tbaa !1231
  %129 = add i64 %126, -72
  %130 = inttoptr i64 %129 to i64*
  %131 = load i64, i64* %130
  %132 = add i64 %125, 32
  %133 = load i64, i64* %9, align 8, !tbaa !1231
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135
  %136 = inttoptr i64 %134 to i64*
  %137 = load i64, i64* %136
  store i64 %137, i64* %3, align 8, !alias.scope !1307, !noalias !1310
  store i64 %133, i64* %9, align 8, !alias.scope !1307, !noalias !1310
  %138 = tail call i64 @__cxa_throw(i64 %131, i64 zext (i32 trunc (i64 and (i64 ptrtoint (i8* @_ZTISt12out_of_range to i64), i64 4294967295) to i32) to i64), i64 zext (i32 trunc (i64 and (i64 ptrtoint (i64 (i64)* @_ZNSt12out_of_rangeD1Ev to i64), i64 4294967295) to i32) to i64)), !noalias !1307
  %139 = load i64, i64* %3, align 8
  %140 = add i64 %139, 114
  %141 = tail call %struct.Memory* @sub_4010c0__Z24test_throw_runtime_errorv(%struct.State* nonnull %0, i64 %140, %struct.Memory* %124)
  ret %struct.Memory* %141
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400d20___ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400d20:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*)
  store i64 %4, i64* %3, align 8, !tbaa !1231
  %5 = icmp eq i64 %4, 4197670
  br i1 %5, label %block_400d26, label %11

block_400d26:                                     ; preds = %block_400d20
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !1231
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 1, i64* %9
  store i64 %8, i64* %6, align 8, !tbaa !1231
  %10 = tail call %struct.Memory* @sub_400d00(%struct.State* nonnull %0, i64 4197632, %struct.Memory* %2)
  ret %struct.Memory* %10

; <label>:11:                                     ; preds = %block_400d20
  %12 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %4, %struct.Memory* %2)
  ret %struct.Memory* %12
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400f70_frame_dummy(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400f70:
  %3 = add i64 %1, -112
  %4 = tail call %struct.Memory* @sub_400f00_register_tm_clones(%struct.State* nonnull %0, i64 %3, %struct.Memory* %2)
  ret %struct.Memory* %4
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400d50___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400d50:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*)
  store i64 %4, i64* %3, align 8, !tbaa !1231
  %5 = icmp eq i64 %4, 4197718
  br i1 %5, label %block_400d56, label %11

block_400d56:                                     ; preds = %block_400d50
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !1231
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 4, i64* %9
  store i64 %8, i64* %6, align 8, !tbaa !1231
  %10 = tail call %struct.Memory* @sub_400d00(%struct.State* nonnull %0, i64 4197632, %struct.Memory* %2)
  ret %struct.Memory* %10

; <label>:11:                                     ; preds = %block_400d50
  %12 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %4, %struct.Memory* %2)
  ret %struct.Memory* %12
}

; Function Attrs: noinline
define %struct.Memory* @sub_400ce0__init_proc(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {
block_400ce0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = add i64 %6, -8
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %14 = load i64, i64* getelementptr inbounds (%seg_601ff8__got_type, %seg_601ff8__got_type* @seg_601ff8__got, i32 0, i32 0)
  store i64 %14, i64* %4, align 8, !tbaa !1231
  store i8 0, i8* %8, align 1, !tbaa !1235
  %15 = trunc i64 %14 to i32
  %16 = and i32 %15, 255
  %17 = tail call i32 @llvm.ctpop.i32(i32 %16) #9
  %18 = trunc i32 %17 to i8
  %19 = and i8 %18, 1
  %20 = xor i8 %19, 1
  store i8 %20, i8* %9, align 1, !tbaa !1249
  %21 = icmp eq i64 %14, 0
  %22 = zext i1 %21 to i8
  store i8 %22, i8* %11, align 1, !tbaa !1250
  %23 = lshr i64 %14, 63
  %24 = trunc i64 %23 to i8
  store i8 %24, i8* %12, align 1, !tbaa !1251
  store i8 0, i8* %13, align 1, !tbaa !1252
  store i8 0, i8* %10, align 1, !tbaa !1253
  %25 = select i1 %21, i64 21, i64 16
  %26 = add i64 %25, %1
  br i1 %21, label %block_400cf5, label %block_400cf0

block_400cf5:                                     ; preds = %block_400cf0, %block_400ce0
  %27 = phi i64 [ %7, %block_400ce0 ], [ %59, %block_400cf0 ]
  %28 = phi %struct.Memory* [ %2, %block_400ce0 ], [ %58, %block_400cf0 ]
  %29 = add i64 %27, 8
  %30 = icmp ugt i64 %27, -9
  %31 = zext i1 %30 to i8
  store i8 %31, i8* %8, align 1, !tbaa !1235
  %32 = trunc i64 %29 to i32
  %33 = and i32 %32, 255
  %34 = tail call i32 @llvm.ctpop.i32(i32 %33) #9
  %35 = trunc i32 %34 to i8
  %36 = and i8 %35, 1
  %37 = xor i8 %36, 1
  store i8 %37, i8* %9, align 1, !tbaa !1249
  %38 = xor i64 %29, %27
  %39 = lshr i64 %38, 4
  %40 = trunc i64 %39 to i8
  %41 = and i8 %40, 1
  store i8 %41, i8* %10, align 1, !tbaa !1253
  %42 = icmp eq i64 %29, 0
  %43 = zext i1 %42 to i8
  store i8 %43, i8* %11, align 1, !tbaa !1250
  %44 = lshr i64 %29, 63
  %45 = trunc i64 %44 to i8
  store i8 %45, i8* %12, align 1, !tbaa !1251
  %46 = lshr i64 %27, 63
  %47 = xor i64 %44, %46
  %48 = add nuw nsw i64 %47, %44
  %49 = icmp eq i64 %48, 2
  %50 = zext i1 %49 to i8
  store i8 %50, i8* %13, align 1, !tbaa !1252
  %51 = inttoptr i64 %29 to i64*
  %52 = load i64, i64* %51
  store i64 %52, i64* %3, align 8, !tbaa !1231
  %53 = add i64 %27, 16
  store i64 %53, i64* %5, align 8, !tbaa !1231
  ret %struct.Memory* %28

block_400cf0:                                     ; preds = %block_400ce0
  %54 = add i64 %26, 416
  %55 = add i64 %26, 5
  %56 = add i64 %6, -16
  %57 = inttoptr i64 %56 to i64*
  store i64 %55, i64* %57
  store i64 %56, i64* %5, align 8, !tbaa !1231
  %58 = tail call %struct.Memory* @sub_400e90(%struct.State* nonnull %0, i64 %54, %struct.Memory* %2)
  %59 = load i64, i64* %5, align 8
  br label %block_400cf5
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_401480__ZNSt12out_of_rangeC2ERKS_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_401480:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %7, align 8, !tbaa !1231
  %11 = add i64 %10, -8
  %12 = inttoptr i64 %11 to i64*
  store i64 %9, i64* %12
  store i64 %11, i64* %8, align 8, !tbaa !1231
  %13 = add i64 %10, -40
  %14 = icmp ult i64 %11, 32
  %15 = zext i1 %14 to i8
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 %15, i8* %16, align 1, !tbaa !1235
  %17 = trunc i64 %13 to i32
  %18 = and i32 %17, 255
  %19 = tail call i32 @llvm.ctpop.i32(i32 %18) #9
  %20 = trunc i32 %19 to i8
  %21 = and i8 %20, 1
  %22 = xor i8 %21, 1
  %23 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 %22, i8* %23, align 1, !tbaa !1249
  %24 = xor i64 %11, %13
  %25 = lshr i64 %24, 4
  %26 = trunc i64 %25 to i8
  %27 = and i8 %26, 1
  %28 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 %27, i8* %28, align 1, !tbaa !1253
  %29 = icmp eq i64 %13, 0
  %30 = zext i1 %29 to i8
  %31 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 %30, i8* %31, align 1, !tbaa !1250
  %32 = lshr i64 %13, 63
  %33 = trunc i64 %32 to i8
  %34 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 %33, i8* %34, align 1, !tbaa !1251
  %35 = lshr i64 %11, 63
  %36 = xor i64 %32, %35
  %37 = add nuw nsw i64 %36, %35
  %38 = icmp eq i64 %37, 2
  %39 = zext i1 %38 to i8
  %40 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 %39, i8* %40, align 1, !tbaa !1252
  %41 = add i64 %10, -16
  %42 = load i64, i64* %6, align 8
  %43 = inttoptr i64 %41 to i64*
  store i64 %42, i64* %43
  %44 = add i64 %10, -24
  %45 = load i64, i64* %5, align 8
  %46 = inttoptr i64 %44 to i64*
  store i64 %45, i64* %46
  %47 = inttoptr i64 %41 to i64*
  %48 = load i64, i64* %47
  store i64 %48, i64* %6, align 8, !tbaa !1231
  %49 = inttoptr i64 %44 to i64*
  %50 = load i64, i64* %49
  store i64 %50, i64* %4, align 8, !tbaa !1231
  %51 = add i64 %10, -32
  %52 = inttoptr i64 %51 to i64*
  store i64 %48, i64* %52
  store i64 %50, i64* %5, align 8, !tbaa !1231
  %53 = add i64 %1, -1776
  %54 = add i64 %1, 39
  %55 = add i64 %10, -48
  %56 = inttoptr i64 %55 to i64*
  store i64 %54, i64* %56
  store i64 %55, i64* %7, align 8, !tbaa !1231
  %57 = tail call %struct.Memory* @sub_400d90___ZNSt11logic_errorC2ERKS_(%struct.State* nonnull %0, i64 %53, %struct.Memory* %2)
  store i64 add (i64 ptrtoint (i8* @_ZTVSt12out_of_range to i64), i64 16), i64* %4, align 8, !tbaa !1231
  %58 = load i64, i64* %8, align 8
  %59 = add i64 %58, -24
  %60 = inttoptr i64 %59 to i64*
  %61 = load i64, i64* %60
  store i64 %61, i64* %5, align 8, !tbaa !1231
  %62 = inttoptr i64 %61 to i64*
  store i64 add (i64 ptrtoint (i8* @_ZTVSt12out_of_range to i64), i64 16), i64* %62
  %63 = load i64, i64* %7, align 8
  %64 = add i64 %63, 32
  %65 = icmp ugt i64 %63, -33
  %66 = zext i1 %65 to i8
  store i8 %66, i8* %16, align 1, !tbaa !1235
  %67 = trunc i64 %64 to i32
  %68 = and i32 %67, 255
  %69 = tail call i32 @llvm.ctpop.i32(i32 %68) #9
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 1
  %72 = xor i8 %71, 1
  store i8 %72, i8* %23, align 1, !tbaa !1249
  %73 = xor i64 %64, %63
  %74 = lshr i64 %73, 4
  %75 = trunc i64 %74 to i8
  %76 = and i8 %75, 1
  store i8 %76, i8* %28, align 1, !tbaa !1253
  %77 = icmp eq i64 %64, 0
  %78 = zext i1 %77 to i8
  store i8 %78, i8* %31, align 1, !tbaa !1250
  %79 = lshr i64 %64, 63
  %80 = trunc i64 %79 to i8
  store i8 %80, i8* %34, align 1, !tbaa !1251
  %81 = lshr i64 %63, 63
  %82 = xor i64 %79, %81
  %83 = add nuw nsw i64 %82, %79
  %84 = icmp eq i64 %83, 2
  %85 = zext i1 %84 to i8
  store i8 %85, i8* %40, align 1, !tbaa !1252
  %86 = add i64 %63, 40
  %87 = inttoptr i64 %64 to i64*
  %88 = load i64, i64* %87
  store i64 %88, i64* %8, align 8, !tbaa !1231
  %89 = inttoptr i64 %86 to i64*
  %90 = load i64, i64* %89
  store i64 %90, i64* %3, align 8, !tbaa !1231
  %91 = add i64 %63, 48
  store i64 %91, i64* %7, align 8, !tbaa !1231
  ret %struct.Memory* %57
}

; Function Attrs: noinline
define %struct.Memory* @sub_4014d0___libc_csu_init(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {
block_4014d0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %5 = bitcast %union.anon* %4 to i32*
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 31, i32 0
  %7 = bitcast %union.anon* %6 to i32*
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 3, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %11 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %13 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %14 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 25, i32 0, i32 0
  %15 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 27, i32 0, i32 0
  %16 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 29, i32 0, i32 0
  %17 = getelementptr inbounds %union.anon, %union.anon* %6, i64 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %12, align 8, !tbaa !1231
  %20 = add i64 %19, -8
  %21 = inttoptr i64 %20 to i64*
  store i64 %18, i64* %21
  %22 = load i64, i64* %16, align 8
  %23 = add i64 %19, -16
  %24 = inttoptr i64 %23 to i64*
  store i64 %22, i64* %24
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  store i64 %26, i64* %17, align 8, !tbaa !1231
  %27 = load i64, i64* %15, align 8
  %28 = add i64 %19, -24
  %29 = inttoptr i64 %28 to i64*
  store i64 %27, i64* %29
  %30 = load i64, i64* %14, align 8
  %31 = add i64 %19, -32
  %32 = inttoptr i64 %31 to i64*
  store i64 %30, i64* %32
  store i64 ptrtoint (%seg_601de8__init_array_type* @seg_601de8__init_array to i64), i64* %14, align 8, !tbaa !1231
  %33 = load i64, i64* %13, align 8
  %34 = add i64 %19, -40
  %35 = inttoptr i64 %34 to i64*
  store i64 %33, i64* %35
  %36 = load i64, i64* %8, align 8
  %37 = add i64 %19, -48
  %38 = inttoptr i64 %37 to i64*
  store i64 %36, i64* %38
  %39 = load i64, i64* %10, align 8
  store i64 %39, i64* %16, align 8, !tbaa !1231
  %40 = load i64, i64* %9, align 8
  store i64 %40, i64* %15, align 8, !tbaa !1231
  %41 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %42 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %43 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %44 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %45 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %46 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i64 ashr (i64 sub (i64 add (i64 ptrtoint (%seg_601de8__init_array_type* @seg_601de8__init_array to i64), i64 8), i64 ptrtoint (%seg_601de8__init_array_type* @seg_601de8__init_array to i64)), i64 3), i64* %13, align 8, !tbaa !1231
  %47 = add i64 %1, -2032
  %48 = add i64 %1, 49
  %49 = add i64 %19, -64
  %50 = inttoptr i64 %49 to i64*
  store i64 %48, i64* %50
  store i64 %49, i64* %12, align 8, !tbaa !1231
  %51 = tail call %struct.Memory* @sub_400ce0__init_proc(%struct.State* nonnull %0, i64 %47, %struct.Memory* %2)
  %52 = load i64, i64* %13, align 8
  %53 = load i64, i64* %3, align 8
  %54 = icmp eq i64 %52, 0
  %55 = select i1 %54, i64 37, i64 5
  %56 = add i64 %53, %55
  br i1 %54, label %block_401526, label %block_401506

block_401506:                                     ; preds = %block_4014d0
  store i64 0, i64* %8, align 8, !tbaa !1231
  store i8 0, i8* %41, align 1, !tbaa !1235
  store i8 1, i8* %42, align 1, !tbaa !1249
  store i8 1, i8* %44, align 1, !tbaa !1250
  store i8 0, i8* %45, align 1, !tbaa !1251
  store i8 0, i8* %46, align 1, !tbaa !1252
  store i8 0, i8* %43, align 1, !tbaa !1253
  %57 = add i64 %56, 10
  br label %block_401510

block_401510:                                     ; preds = %block_401510, %block_401506
  %58 = phi i64 [ 0, %block_401506 ], [ %77, %block_401510 ]
  %59 = phi i64 [ %57, %block_401506 ], [ %105, %block_401510 ]
  %60 = phi %struct.Memory* [ %51, %block_401506 ], [ %74, %block_401510 ]
  %61 = load i64, i64* %15, align 8
  store i64 %61, i64* %9, align 8, !tbaa !1231
  %62 = load i64, i64* %16, align 8
  store i64 %62, i64* %10, align 8, !tbaa !1231
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  store i64 %64, i64* %11, align 8, !tbaa !1231
  %65 = load i64, i64* %14, align 8
  %66 = shl i64 %58, 3
  %67 = add i64 %66, %65
  %68 = add i64 %59, 13
  %69 = load i64, i64* %12, align 8, !tbaa !1231
  %70 = add i64 %69, -8
  %71 = inttoptr i64 %70 to i64*
  store i64 %68, i64* %71
  store i64 %70, i64* %12, align 8, !tbaa !1231
  %72 = inttoptr i64 %67 to i64*
  %73 = load i64, i64* %72
  store i64 %73, i64* %3, align 8, !tbaa !1231
  %74 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %73, %struct.Memory* %60)
  %75 = load i64, i64* %8, align 8
  %76 = load i64, i64* %3, align 8
  %77 = add i64 %75, 1
  store i64 %77, i64* %8, align 8, !tbaa !1231
  %78 = lshr i64 %77, 63
  %79 = load i64, i64* %13, align 8
  %80 = sub i64 %77, %79
  %81 = icmp ult i64 %77, %79
  %82 = zext i1 %81 to i8
  store i8 %82, i8* %41, align 1, !tbaa !1235
  %83 = trunc i64 %80 to i32
  %84 = and i32 %83, 255
  %85 = tail call i32 @llvm.ctpop.i32(i32 %84) #9
  %86 = trunc i32 %85 to i8
  %87 = and i8 %86, 1
  %88 = xor i8 %87, 1
  store i8 %88, i8* %42, align 1, !tbaa !1249
  %89 = xor i64 %79, %77
  %90 = xor i64 %89, %80
  %91 = lshr i64 %90, 4
  %92 = trunc i64 %91 to i8
  %93 = and i8 %92, 1
  store i8 %93, i8* %43, align 1, !tbaa !1253
  %94 = icmp eq i64 %80, 0
  %95 = zext i1 %94 to i8
  store i8 %95, i8* %44, align 1, !tbaa !1250
  %96 = lshr i64 %80, 63
  %97 = trunc i64 %96 to i8
  store i8 %97, i8* %45, align 1, !tbaa !1251
  %98 = lshr i64 %79, 63
  %99 = xor i64 %98, %78
  %100 = xor i64 %96, %78
  %101 = add nuw nsw i64 %100, %99
  %102 = icmp eq i64 %101, 2
  %103 = zext i1 %102 to i8
  store i8 %103, i8* %46, align 1, !tbaa !1252
  %104 = select i1 %94, i64 9, i64 -13
  %105 = add i64 %76, %104
  br i1 %94, label %block_401526.loopexit, label %block_401510

block_401526.loopexit:                            ; preds = %block_401510
  br label %block_401526

block_401526:                                     ; preds = %block_401526.loopexit, %block_4014d0
  %106 = phi %struct.Memory* [ %51, %block_4014d0 ], [ %74, %block_401526.loopexit ]
  %107 = load i64, i64* %12, align 8
  %108 = add i64 %107, 8
  %109 = icmp ugt i64 %107, -9
  %110 = zext i1 %109 to i8
  store i8 %110, i8* %41, align 1, !tbaa !1235
  %111 = trunc i64 %108 to i32
  %112 = and i32 %111, 255
  %113 = tail call i32 @llvm.ctpop.i32(i32 %112) #9
  %114 = trunc i32 %113 to i8
  %115 = and i8 %114, 1
  %116 = xor i8 %115, 1
  store i8 %116, i8* %42, align 1, !tbaa !1249
  %117 = xor i64 %108, %107
  %118 = lshr i64 %117, 4
  %119 = trunc i64 %118 to i8
  %120 = and i8 %119, 1
  store i8 %120, i8* %43, align 1, !tbaa !1253
  %121 = icmp eq i64 %108, 0
  %122 = zext i1 %121 to i8
  store i8 %122, i8* %44, align 1, !tbaa !1250
  %123 = lshr i64 %108, 63
  %124 = trunc i64 %123 to i8
  store i8 %124, i8* %45, align 1, !tbaa !1251
  %125 = lshr i64 %107, 63
  %126 = xor i64 %123, %125
  %127 = add nuw nsw i64 %126, %123
  %128 = icmp eq i64 %127, 2
  %129 = zext i1 %128 to i8
  store i8 %129, i8* %46, align 1, !tbaa !1252
  %130 = add i64 %107, 16
  %131 = inttoptr i64 %108 to i64*
  %132 = load i64, i64* %131
  store i64 %132, i64* %8, align 8, !tbaa !1231
  %133 = add i64 %107, 24
  %134 = inttoptr i64 %130 to i64*
  %135 = load i64, i64* %134
  store i64 %135, i64* %13, align 8, !tbaa !1231
  %136 = add i64 %107, 32
  %137 = inttoptr i64 %133 to i64*
  %138 = load i64, i64* %137
  store i64 %138, i64* %14, align 8, !tbaa !1231
  %139 = add i64 %107, 40
  %140 = inttoptr i64 %136 to i64*
  %141 = load i64, i64* %140
  store i64 %141, i64* %15, align 8, !tbaa !1231
  %142 = add i64 %107, 48
  %143 = inttoptr i64 %139 to i64*
  %144 = load i64, i64* %143
  store i64 %144, i64* %16, align 8, !tbaa !1231
  %145 = add i64 %107, 56
  %146 = inttoptr i64 %142 to i64*
  %147 = load i64, i64* %146
  store i64 %147, i64* %17, align 8, !tbaa !1231
  %148 = inttoptr i64 %145 to i64*
  %149 = load i64, i64* %148
  store i64 %149, i64* %3, align 8, !tbaa !1231
  %150 = add i64 %107, 64
  store i64 %150, i64* %12, align 8, !tbaa !1231
  ret %struct.Memory* %106
}

; Function Attrs: noinline
define %struct.Memory* @sub_400e90(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #3 {
block_400e90:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %6 = load i64, i64* %5, align 8, !alias.scope !1312, !noalias !1315
  %7 = inttoptr i64 %6 to i64*
  %8 = load i64, i64* %7
  store i64 %8, i64* %3, align 8, !alias.scope !1312, !noalias !1315
  %9 = add i64 %6, 8
  store i64 %9, i64* %5, align 8, !alias.scope !1312, !noalias !1315
  %10 = tail call i64 @__gmon_start__(), !noalias !1312
  store i64 %10, i64* %4, align 8, !alias.scope !1312, !noalias !1315
  ret %struct.Memory* %2
}

; Function Attrs: noinline
define %struct.Memory* @sub_401470___clang_call_terminate(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {
block_401470:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* %4, align 8, !tbaa !1231
  %7 = add i64 %6, -8
  %8 = inttoptr i64 %7 to i64*
  store i64 %5, i64* %8
  %9 = add i64 %1, 6
  %10 = add i64 %6, -16
  %11 = inttoptr i64 %10 to i64*
  store i64 %9, i64* %11
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8, !alias.scope !1317, !noalias !7
  %14 = inttoptr i64 %10 to i64*
  %15 = load i64, i64* %14
  %16 = tail call i64 @__cxa_begin_catch(i64 %13), !noalias !1322
  %17 = inttoptr i64 %7 to i64*
  store i64 %16, i64* %17
  %18 = add i64 %15, 9
  %19 = add i64 %6, -16
  %20 = inttoptr i64 %19 to i64*
  store i64 %18, i64* %20
  %21 = inttoptr i64 %19 to i64*
  %22 = load i64, i64* %21
  store i64 %7, i64* %4, align 8, !alias.scope !1323, !noalias !1324
  %23 = tail call i64 @_ZSt9terminatev(i64 %13), !noalias !1323
  %24 = add i64 %22, 1
  %25 = tail call %struct.Memory* @sub_401480__ZNSt12out_of_rangeC2ERKS_(%struct.State* nonnull %0, i64 %24, %struct.Memory* %2)
  ret %struct.Memory* %25
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400d90___ZNSt11logic_errorC2ERKS_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400d90:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*)
  store i64 %4, i64* %3, align 8, !tbaa !1231
  %5 = icmp eq i64 %4, 4197782
  br i1 %5, label %block_400d96, label %11

block_400d96:                                     ; preds = %block_400d90
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !1231
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 8, i64* %9
  store i64 %8, i64* %6, align 8, !tbaa !1231
  %10 = tail call %struct.Memory* @sub_400d00(%struct.State* nonnull %0, i64 4197632, %struct.Memory* %2)
  ret %struct.Memory* %10

; <label>:11:                                     ; preds = %block_400d90
  %12 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %4, %struct.Memory* %2)
  ret %struct.Memory* %12
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400df0___ZNSt13runtime_errorC1ERKS_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400df0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*)
  store i64 %4, i64* %3, align 8, !tbaa !1231
  %5 = icmp eq i64 %4, 4197878
  br i1 %5, label %block_400df6, label %11

block_400df6:                                     ; preds = %block_400df0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !1231
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 14, i64* %9
  store i64 %8, i64* %6, align 8, !tbaa !1231
  %10 = tail call %struct.Memory* @sub_400d00(%struct.State* nonnull %0, i64 4197632, %struct.Memory* %2)
  ret %struct.Memory* %10

; <label>:11:                                     ; preds = %block_400df0
  %12 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %4, %struct.Memory* %2)
  ret %struct.Memory* %12
}

; Function Attrs: noinline
define %struct.Memory* @sub_4011c0_main(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #3 {
block_4011c0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0
  %6 = bitcast %union.anon* %5 to i32*
  %7 = getelementptr inbounds %union.anon, %union.anon* %4, i64 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %9 = getelementptr inbounds %union.anon, %union.anon* %5, i64 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 15, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* %10, align 8, !tbaa !1231
  %14 = add i64 %13, -8
  %15 = inttoptr i64 %14 to i64*
  store i64 %12, i64* %15
  store i64 %14, i64* %11, align 8, !tbaa !1231
  %16 = add i64 %13, -184
  %17 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  %18 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  %19 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  %20 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  %21 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  %22 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  %23 = add i64 %13, -12
  %24 = inttoptr i64 %23 to i32*
  store i32 0, i32* %24
  %25 = add i64 %13, -16
  %26 = load i32, i32* %6, align 4
  %27 = inttoptr i64 %25 to i32*
  store i32 %26, i32* %27
  %28 = add i64 %13, -24
  %29 = load i64, i64* %8, align 8
  %30 = inttoptr i64 %28 to i64*
  store i64 %29, i64* %30
  %31 = add i64 %13, -28
  %32 = inttoptr i64 %31 to i32*
  store i32 0, i32* %32
  %33 = inttoptr i64 %25 to i32*
  %34 = load i32, i32* %33
  %35 = add i32 %34, -1
  %36 = icmp eq i32 %35, 0
  %37 = lshr i32 %35, 31
  %38 = trunc i32 %37 to i8
  %39 = lshr i32 %34, 31
  %40 = xor i32 %37, %39
  %41 = add nuw nsw i32 %40, %39
  %42 = icmp eq i32 %41, 2
  %43 = icmp ne i8 %38, 0
  %44 = xor i1 %43, %42
  %45 = or i1 %36, %44
  %46 = select i1 %45, i64 542, i64 42
  %47 = add i64 %46, %1
  br i1 %45, label %block_4013de, label %block_4011ea

block_4011ea:                                     ; preds = %block_4011c0
  %48 = inttoptr i64 %28 to i64*
  %49 = load i64, i64* %48
  %50 = add i64 %49, 8
  %51 = inttoptr i64 %50 to i64*
  %52 = load i64, i64* %51
  %53 = add i64 %47, 13
  %54 = add i64 %13, -192
  %55 = inttoptr i64 %54 to i64*
  store i64 %53, i64* %55
  %56 = inttoptr i64 %54 to i64*
  %57 = load i64, i64* %56
  store i64 %57, i64* %3, align 8, !alias.scope !1326, !noalias !1329
  store i64 %16, i64* %10, align 8, !alias.scope !1326, !noalias !1329
  %58 = tail call i64 @atoi(i64 %52), !noalias !1326
  %59 = load i64, i64* %11, align 8
  %60 = add i64 %59, -24
  %61 = trunc i64 %58 to i32
  %62 = load i64, i64* %3, align 8
  %63 = inttoptr i64 %60 to i32*
  store i32 %61, i32* %63
  %64 = inttoptr i64 %60 to i32*
  %65 = load i32, i32* %64
  %66 = add i32 %65, -1
  %67 = icmp eq i32 %66, 0
  %68 = select i1 %67, i64 13, i64 422
  %69 = add i64 %62, %68
  br i1 %67, label %block_401204, label %block_40139d

block_4013d9:                                     ; preds = %block_4013b6, %block_401204, %block_4013d4.sink.split
  %70 = phi i64 [ %160, %block_401204 ], [ %164, %block_4013b6 ], [ %145, %block_4013d4.sink.split ]
  %71 = phi i64 [ 5, %block_401204 ], [ 5, %block_4013b6 ], [ %144, %block_4013d4.sink.split ]
  %72 = phi %struct.Memory* [ %159, %block_401204 ], [ %2, %block_4013b6 ], [ %143, %block_4013d4.sink.split ]
  %73 = phi i64 [ 459, %block_401204 ], [ 5, %block_4013b6 ], [ 5, %block_4013d4.sink.split ]
  %74 = add i64 %70, %71
  %75 = load i64, i64* %11, align 8
  %76 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %77 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %78 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %79 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  br label %block_401400

block_4013de:                                     ; preds = %block_4011c0
  %80 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0
  %81 = bitcast %union.anon* %80 to i8*
  store i8 trunc (i64 xor (i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 114), i64 4294967295) to i32) to i64), i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 114), i64 4294967295)) to i8), i8* %81, align 1, !tbaa !1259
  %82 = add i64 %47, 18
  %83 = add i64 %13, -192
  %84 = inttoptr i64 %83 to i64*
  store i64 %82, i64* %84
  %85 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %86 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %87 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %88 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %89 = load i64, i64* %86, align 8, !alias.scope !1331, !noalias !1334
  %90 = load i64, i64* %85, align 8, !alias.scope !1331, !noalias !1334
  %91 = load i64, i64* %87, align 8, !alias.scope !1331, !noalias !1334
  %92 = load i64, i64* %88, align 8, !alias.scope !1331, !noalias !1334
  %93 = inttoptr i64 %16 to i64*
  %94 = load i64, i64* %93
  %95 = add i64 %13, -176
  %96 = inttoptr i64 %95 to i64*
  %97 = load i64, i64* %96
  %98 = add i64 %13, -168
  %99 = inttoptr i64 %98 to i64*
  %100 = load i64, i64* %99
  %101 = add i64 %13, -160
  %102 = inttoptr i64 %101 to i64*
  %103 = load i64, i64* %102
  %104 = add i64 %13, -152
  %105 = inttoptr i64 %104 to i64*
  %106 = load i64, i64* %105
  %107 = add i64 %13, -144
  %108 = inttoptr i64 %107 to i64*
  %109 = load i64, i64* %108
  %110 = add i64 %13, -136
  %111 = inttoptr i64 %110 to i64*
  %112 = load i64, i64* %111
  %113 = add i64 %13, -128
  %114 = inttoptr i64 %113 to i64*
  %115 = load i64, i64* %114
  %116 = add i64 %13, -120
  %117 = inttoptr i64 %116 to i64*
  %118 = load i64, i64* %117
  %119 = add i64 %13, -112
  %120 = inttoptr i64 %119 to i64*
  %121 = load i64, i64* %120
  %122 = inttoptr i64 %83 to i64*
  %123 = load i64, i64* %122
  store i64 %123, i64* %3, align 8, !alias.scope !1331, !noalias !1334
  store i64 %16, i64* %10, align 8, !alias.scope !1331, !noalias !1334
  %124 = tail call i64 @printf(i64 zext (i32 trunc (i64 and (i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 114), i64 4294967295) to i32) to i64), i64 %29, i64 %89, i64 %90, i64 %91, i64 %92, i64 %94, i64 %97, i64 %100, i64 %103, i64 %106, i64 %109, i64 %112, i64 %115, i64 %118, i64 %121), !noalias !1331
  %125 = load i64, i64* %11, align 8
  %126 = add i64 %125, -160
  %127 = trunc i64 %124 to i32
  %128 = load i64, i64* %3, align 8
  %129 = add i64 %128, 6
  %130 = inttoptr i64 %126 to i32*
  store i32 %127, i32* %130
  br label %block_401400

block_4013a7:                                     ; preds = %block_40139d
  %131 = add i64 %141, -1063
  %132 = add i64 %141, 5
  %133 = load i64, i64* %10, align 8, !tbaa !1231
  %134 = add i64 %133, -8
  %135 = inttoptr i64 %134 to i64*
  store i64 %132, i64* %135
  store i64 %134, i64* %10, align 8, !tbaa !1231
  %136 = tail call %struct.Memory* @sub_400f80__Z17test_throw_doublev(%struct.State* nonnull %0, i64 %131, %struct.Memory* %2)
  %137 = load i64, i64* %3, align 8
  br label %block_4013d4.sink.split

block_40139d:                                     ; preds = %block_4011ea
  %138 = add i32 %65, -2
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, i64 10, i64 25
  %141 = add i64 %69, %140
  br i1 %139, label %block_4013a7, label %block_4013b6

block_4013d4.sink.split:                          ; preds = %block_4013c0, %block_4013a7
  %142 = phi i64 [ %153, %block_4013c0 ], [ %137, %block_4013a7 ]
  %143 = phi %struct.Memory* [ %151, %block_4013c0 ], [ %136, %block_4013a7 ]
  %144 = phi i64 [ 5, %block_4013c0 ], [ 35, %block_4013a7 ]
  %145 = add i64 %142, 5
  br label %block_4013d9

block_4013c0:                                     ; preds = %block_4013b6
  %146 = add i64 %164, -768
  %147 = add i64 %164, 5
  %148 = load i64, i64* %10, align 8, !tbaa !1231
  %149 = add i64 %148, -8
  %150 = inttoptr i64 %149 to i64*
  store i64 %147, i64* %150
  store i64 %149, i64* %10, align 8, !tbaa !1231
  %151 = tail call %struct.Memory* @sub_4010c0__Z24test_throw_runtime_errorv(%struct.State* nonnull %0, i64 %146, %struct.Memory* %2)
  %152 = load i64, i64* %3, align 8
  %153 = add i64 %152, 5
  br label %block_4013d4.sink.split

block_401204:                                     ; preds = %block_4011ea
  %154 = add i64 %69, -580
  %155 = add i64 %69, 5
  %156 = load i64, i64* %10, align 8, !tbaa !1231
  %157 = add i64 %156, -8
  %158 = inttoptr i64 %157 to i64*
  store i64 %155, i64* %158
  store i64 %157, i64* %10, align 8, !tbaa !1231
  %159 = tail call %struct.Memory* @sub_400fc0__Z23test_throw_out_of_rangev(%struct.State* nonnull %0, i64 %154, %struct.Memory* %2)
  %160 = load i64, i64* %3, align 8
  br label %block_4013d9

block_4013b6:                                     ; preds = %block_40139d
  %161 = add i32 %65, -3
  %162 = icmp eq i32 %161, 0
  %163 = select i1 %162, i64 10, i64 25
  %164 = add i64 %141, %163
  br i1 %162, label %block_4013c0, label %block_4013d9

block_401400:                                     ; preds = %block_4013de, %block_4013d9
  %165 = phi i64* [ %88, %block_4013de ], [ %79, %block_4013d9 ]
  %166 = phi i64* [ %87, %block_4013de ], [ %78, %block_4013d9 ]
  %167 = phi i64* [ %86, %block_4013de ], [ %77, %block_4013d9 ]
  %168 = phi i64* [ %85, %block_4013de ], [ %76, %block_4013d9 ]
  %169 = phi i64 [ %125, %block_4013de ], [ %75, %block_4013d9 ]
  %170 = phi i64 [ %129, %block_4013de ], [ %74, %block_4013d9 ]
  %171 = phi i64 [ 5, %block_4013de ], [ %73, %block_4013d9 ]
  %172 = phi %struct.Memory* [ %2, %block_4013de ], [ %72, %block_4013d9 ]
  %173 = phi i64 [ 5, %block_4013de ], [ 39, %block_4013d9 ]
  %174 = add nsw i64 %173, %171
  %175 = add i64 %174, %170
  store i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 226), i64* %9, align 8, !tbaa !1231
  %176 = add i64 %169, -20
  %177 = inttoptr i64 %176 to i32*
  %178 = load i32, i32* %177
  %179 = zext i32 %178 to i64
  %180 = add i64 %175, -387
  %181 = load i64, i64* %10, align 8, !tbaa !1231
  %182 = add i64 %181, -8
  %183 = inttoptr i64 %182 to i64*
  store i64 %180, i64* %183
  %184 = load i64, i64* %167, align 8, !alias.scope !1336, !noalias !1339
  %185 = load i64, i64* %168, align 8, !alias.scope !1336, !noalias !1339
  %186 = load i64, i64* %166, align 8, !alias.scope !1336, !noalias !1339
  %187 = load i64, i64* %165, align 8, !alias.scope !1336, !noalias !1339
  %188 = inttoptr i64 %181 to i64*
  %189 = load i64, i64* %188
  %190 = add i64 %181, 8
  %191 = inttoptr i64 %190 to i64*
  %192 = load i64, i64* %191
  %193 = add i64 %181, 16
  %194 = inttoptr i64 %193 to i64*
  %195 = load i64, i64* %194
  %196 = add i64 %181, 24
  %197 = inttoptr i64 %196 to i64*
  %198 = load i64, i64* %197
  %199 = add i64 %181, 32
  %200 = inttoptr i64 %199 to i64*
  %201 = load i64, i64* %200
  %202 = add i64 %181, 40
  %203 = inttoptr i64 %202 to i64*
  %204 = load i64, i64* %203
  %205 = add i64 %181, 48
  %206 = inttoptr i64 %205 to i64*
  %207 = load i64, i64* %206
  %208 = add i64 %181, 56
  %209 = inttoptr i64 %208 to i64*
  %210 = load i64, i64* %209
  %211 = add i64 %181, 64
  %212 = inttoptr i64 %211 to i64*
  %213 = load i64, i64* %212
  %214 = add i64 %181, 72
  %215 = inttoptr i64 %214 to i64*
  %216 = load i64, i64* %215
  store i64 %181, i64* %10, align 8, !alias.scope !1336, !noalias !1339
  %217 = tail call i64 @printf(i64 add (i64 ptrtoint (%seg_401550__rodata_type* @seg_401550__rodata to i64), i64 226), i64 %179, i64 %184, i64 %185, i64 %186, i64 %187, i64 %189, i64 %192, i64 %195, i64 %198, i64 %201, i64 %204, i64 %207, i64 %210, i64 %213, i64 %216), !noalias !1336
  store i64 0, i64* %8, align 8, !tbaa !1231
  %218 = load i64, i64* %11, align 8
  %219 = add i64 %218, -92
  %220 = trunc i64 %217 to i32
  %221 = inttoptr i64 %219 to i32*
  store i32 %220, i32* %221
  store i64 0, i64* %7, align 8, !tbaa !1231
  %222 = load i64, i64* %10, align 8
  %223 = add i64 %222, 176
  %224 = icmp ugt i64 %222, -177
  %225 = zext i1 %224 to i8
  store i8 %225, i8* %17, align 1, !tbaa !1235
  %226 = trunc i64 %223 to i32
  %227 = and i32 %226, 255
  %228 = tail call i32 @llvm.ctpop.i32(i32 %227) #9
  %229 = trunc i32 %228 to i8
  %230 = and i8 %229, 1
  %231 = xor i8 %230, 1
  store i8 %231, i8* %18, align 1, !tbaa !1249
  %232 = xor i64 %222, 16
  %233 = xor i64 %232, %223
  %234 = lshr i64 %233, 4
  %235 = trunc i64 %234 to i8
  %236 = and i8 %235, 1
  store i8 %236, i8* %19, align 1, !tbaa !1253
  %237 = icmp eq i64 %223, 0
  %238 = zext i1 %237 to i8
  store i8 %238, i8* %20, align 1, !tbaa !1250
  %239 = lshr i64 %223, 63
  %240 = trunc i64 %239 to i8
  store i8 %240, i8* %21, align 1, !tbaa !1251
  %241 = lshr i64 %222, 63
  %242 = xor i64 %239, %241
  %243 = add nuw nsw i64 %242, %239
  %244 = icmp eq i64 %243, 2
  %245 = zext i1 %244 to i8
  store i8 %245, i8* %22, align 1, !tbaa !1252
  %246 = add i64 %222, 184
  %247 = inttoptr i64 %223 to i64*
  %248 = load i64, i64* %247
  store i64 %248, i64* %11, align 8, !tbaa !1231
  %249 = inttoptr i64 %246 to i64*
  %250 = load i64, i64* %249
  store i64 %250, i64* %3, align 8, !tbaa !1231
  %251 = add i64 %222, 192
  store i64 %251, i64* %10, align 8, !tbaa !1231
  ret %struct.Memory* %172
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400ed0_deregister_tm_clones(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400ef0:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  store i64 6299880, i64* %4, align 8, !tbaa !1231
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 1
  store i8 0, i8* %5, align 1, !tbaa !1235
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 3
  store i8 1, i8* %6, align 1, !tbaa !1249
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 5
  store i8 0, i8* %7, align 1, !tbaa !1253
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 7
  store i8 1, i8* %8, align 1, !tbaa !1250
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 9
  store i8 0, i8* %9, align 1, !tbaa !1251
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 2, i32 13
  store i8 0, i8* %10, align 1, !tbaa !1252
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %12 = load i64, i64* %11, align 8, !tbaa !1231
  %13 = inttoptr i64 %12 to i64*
  %14 = load i64, i64* %13
  store i64 %14, i64* %3, align 8, !tbaa !1231
  %15 = add i64 %12, 8
  store i64 %15, i64* %11, align 8, !tbaa !1231
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @sub_400e40___ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_(%struct.State* noalias dereferenceable(3376), i64, %struct.Memory* noalias) local_unnamed_addr #4 {
block_400e40:
  %3 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %4 = load i64, i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*)
  store i64 %4, i64* %3, align 8, !tbaa !1231
  %5 = icmp eq i64 %4, 4197958
  br i1 %5, label %block_400e46, label %11

block_400e46:                                     ; preds = %block_400e40
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8, !tbaa !1231
  %8 = add i64 %7, -8
  %9 = inttoptr i64 %8 to i64*
  store i64 19, i64* %9
  store i64 %8, i64* %6, align 8, !tbaa !1231
  %10 = tail call %struct.Memory* @sub_400d00(%struct.State* nonnull %0, i64 4197632, %struct.Memory* %2)
  ret %struct.Memory* %10

; <label>:11:                                     ; preds = %block_400e40
  %12 = tail call %struct.Memory* @__mcsema_detach_call_value(%struct.State* nonnull %0, i64 %4, %struct.Memory* %2)
  ret %struct.Memory* %12
}

; Function Attrs: nobuiltin noinline
define i64 @callback_sub_400ea0__start(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4198048, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_400ea0__start(%struct.State* nonnull @__mcsema_reg_state, i64 4198048, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: norecurse nounwind
define void @__mcsema_verify_reg_state() local_unnamed_addr #6 {
entry:
  %0 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %1 = icmp eq i64 %0, 0
  br i1 %1, label %is_null, label %end

is_null:                                          ; preds = %entry
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %end

end:                                              ; preds = %is_null, %entry
  ret void
}

; Function Attrs: nobuiltin noinline nounwind
define i64 @callback_sub_400f70_frame_dummy(i64, i64, i64, i64, i64, i64, i64, i64) #7 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4198256, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_400f70_frame_dummy(%struct.State* nonnull @__mcsema_reg_state, i64 4198256, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: nobuiltin noinline nounwind
define i64 @callback_sub_400f40___do_global_dtors_aux(i64, i64, i64, i64, i64, i64, i64, i64) #7 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4198208, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_400f40___do_global_dtors_aux(%struct.State* nonnull @__mcsema_reg_state, i64 4198208, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: nobuiltin noinline nounwind
define i64 @callback_sub_401540___libc_csu_fini() #7 {
  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %0
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0
  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4199744, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit
  %6 = phi i64 [ %3, %__mcsema_verify_reg_state.exit ], [ %.pre, %5 ]
  %7 = add i64 %6, -8
  store i64 %7, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %8 = tail call %struct.Memory* @sub_401540___libc_csu_fini(%struct.State* nonnull @__mcsema_reg_state, i64 4199744, %struct.Memory* null)
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %9
}

; Function Attrs: nobuiltin noinline
define i64 @callback_sub_4014d0___libc_csu_init() #5 {
  %1 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %2 = icmp eq i64 %1, 0
  br i1 %2, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %0
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %0
  %3 = phi i64 [ %1, %0 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4199632, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %4 = load volatile i1, i1* @0, align 1
  br i1 %4, label %__mcsema_early_init.exit, label %5

; <label>:5:                                      ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %5, %__mcsema_verify_reg_state.exit
  %6 = phi i64 [ %3, %__mcsema_verify_reg_state.exit ], [ %.pre, %5 ]
  %7 = add i64 %6, -8
  store i64 %7, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %8 = tail call %struct.Memory* @sub_4014d0___libc_csu_init(%struct.State* nonnull @__mcsema_reg_state, i64 4199632, %struct.Memory* null)
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %9 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %9
}

; Function Attrs: nobuiltin noinline
define i64 @main(i64, i64, i64) #5 {
  %4 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %3
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %3
  %6 = phi i64 [ %4, %3 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4198848, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %7 = load volatile i1, i1* @0, align 1
  br i1 %7, label %__mcsema_early_init.exit, label %8

; <label>:8:                                      ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %8, %__mcsema_verify_reg_state.exit
  %9 = phi i64 [ %6, %__mcsema_verify_reg_state.exit ], [ %.pre, %8 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  %10 = add i64 %9, -8
  store i64 %10, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %11 = tail call %struct.Memory* @sub_4011c0_main(%struct.State* nonnull @__mcsema_reg_state, i64 4198848, %struct.Memory* null)
  store i64 %6, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %12
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6021a0___libc_start_main(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 8
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21
  %23 = add i64 %19, 16
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24
  %26 = inttoptr i64 %19 to i64*
  %27 = load i64, i64* %26
  store i64 %27, i64* %4, align 8
  store i64 %20, i64* %10, align 8
  %28 = tail call i64 @__libc_start_main(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25)
  store i64 %28, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: noinline nounwind
define %struct.Memory* @__mcsema_detach_call_value(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #4 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 8
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21
  %23 = add i64 %19, 16
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24
  %26 = inttoptr i64 %1 to i64 (i64, i64, i64, i64, i64, i64, i64, i64)*
  %27 = tail call i64 %26(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25) #9
  store i64 %27, i64* %5, align 8
  %28 = inttoptr i64 %19 to i64*
  %29 = load i64, i64* %28
  store i64 %29, i64* %4, align 8
  store i64 %20, i64* %10, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6021c8___cxa_allocate_exception(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @__cxa_allocate_exception(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400e00___cxa_throw(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %10 = load i64, i64* %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* %9, align 8
  %14 = inttoptr i64 %13 to i64*
  %15 = load i64, i64* %14
  store i64 %15, i64* %4, align 8
  %16 = add i64 %13, 8
  store i64 %16, i64* %9, align 8
  %17 = tail call i64 @__cxa_throw(i64 %10, i64 %11, i64 %12)
  store i64 %17, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6021d0__ZNSaIcED1Ev(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @_ZNSaIcED1Ev(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6021d8___cxa_free_exception(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @__cxa_free_exception(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400e70__Unwind_Resume(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @_Unwind_Resume(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400d10_printf(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 7, i32 0, i32 0
  %8 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 9, i32 0, i32 0
  %9 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %10 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %11 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 17, i32 0, i32 0
  %12 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 19, i32 0, i32 0
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* %6, align 8
  %17 = load i64, i64* %11, align 8
  %18 = load i64, i64* %12, align 8
  %19 = load i64, i64* %10, align 8
  %20 = add i64 %19, 8
  %21 = inttoptr i64 %20 to i64*
  %22 = load i64, i64* %21
  %23 = add i64 %19, 16
  %24 = inttoptr i64 %23 to i64*
  %25 = load i64, i64* %24
  %26 = add i64 %19, 24
  %27 = inttoptr i64 %26 to i64*
  %28 = load i64, i64* %27
  %29 = add i64 %19, 32
  %30 = inttoptr i64 %29 to i64*
  %31 = load i64, i64* %30
  %32 = add i64 %19, 40
  %33 = inttoptr i64 %32 to i64*
  %34 = load i64, i64* %33
  %35 = add i64 %19, 48
  %36 = inttoptr i64 %35 to i64*
  %37 = load i64, i64* %36
  %38 = add i64 %19, 56
  %39 = inttoptr i64 %38 to i64*
  %40 = load i64, i64* %39
  %41 = add i64 %19, 64
  %42 = inttoptr i64 %41 to i64*
  %43 = load i64, i64* %42
  %44 = add i64 %19, 72
  %45 = inttoptr i64 %44 to i64*
  %46 = load i64, i64* %45
  %47 = add i64 %19, 80
  %48 = inttoptr i64 %47 to i64*
  %49 = load i64, i64* %48
  %50 = inttoptr i64 %19 to i64*
  %51 = load i64, i64* %50
  store i64 %51, i64* %4, align 8
  store i64 %20, i64* %10, align 8
  %52 = tail call i64 @printf(i64 %13, i64 %14, i64 %15, i64 %16, i64 %17, i64 %18, i64 %22, i64 %25, i64 %28, i64 %31, i64 %34, i64 %37, i64 %40, i64 %43, i64 %46, i64 %49)
  store i64 %52, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_602218__ZNSaIcEC1Ev(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @_ZNSaIcEC1Ev(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_602248___gmon_start__(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8
  store i64 %9, i64* %4, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  %11 = tail call i64 @__gmon_start__()
  store i64 %11, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400e30___cxa_begin_catch(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @__cxa_begin_catch(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6021b0__ZSt9terminatev(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @_ZSt9terminatev(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6021b8_atoi(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @atoi(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400e20___cxa_end_catch(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to i64*
  %9 = load i64, i64* %8
  store i64 %9, i64* %4, align 8
  %10 = add i64 %7, 8
  store i64 %10, i64* %6, align 8
  %11 = tail call i64 @__cxa_end_catch()
  store i64 %11, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_602238__ZNSt12out_of_rangeD1Ev(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @_ZNSt12out_of_rangeD1Ev(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_6021e0___cxa_get_exception_ptr(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @__cxa_get_exception_ptr(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400e80__ZNKSt13runtime_error4whatEv(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @_ZNKSt13runtime_error4whatEv(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400d30__ZNKSt11logic_error4whatEv(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @_ZNKSt11logic_error4whatEv(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: alwaysinline inlinehint
define %struct.Memory* @ext_400dd0__ZNSt13runtime_errorD1Ev(%struct.State* noalias nocapture dereferenceable(3376), i64, %struct.Memory* noalias returned) local_unnamed_addr #8 {
  %4 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 33, i32 0, i32 0
  %5 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 1, i32 0, i32 0
  %6 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 11, i32 0, i32 0
  %7 = getelementptr inbounds %struct.State, %struct.State* %0, i64 0, i32 6, i32 13, i32 0, i32 0
  %8 = load i64, i64* %6, align 8
  %9 = load i64, i64* %7, align 8
  %10 = inttoptr i64 %9 to i64*
  %11 = load i64, i64* %10
  store i64 %11, i64* %4, align 8
  %12 = add i64 %9, 8
  store i64 %12, i64* %7, align 8
  %13 = tail call i64 @_ZNSt13runtime_errorD1Ev(i64 %8)
  store i64 %13, i64* %5, align 8
  ret %struct.Memory* %2
}

; Function Attrs: nobuiltin noinline
define i64 @.init_proc(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4197600, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_400ce0__init_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4197600, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: nobuiltin noinline
define i64 @__clang_call_terminate(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4199536, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_401470___clang_call_terminate(%struct.State* nonnull @__mcsema_reg_state, i64 4199536, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: nobuiltin noinline nounwind
define i64 @.term_proc(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4199748, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_401544__term_proc(%struct.State* nonnull @__mcsema_reg_state, i64 4199748, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: nobuiltin noinline
define i64 @_Z17test_throw_doublev(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4198272, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_400f80__Z17test_throw_doublev(%struct.State* nonnull @__mcsema_reg_state, i64 4198272, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: nobuiltin noinline
define i64 @_Z24test_throw_runtime_errorv(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4198592, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_4010c0__Z24test_throw_runtime_errorv(%struct.State* nonnull @__mcsema_reg_state, i64 4198592, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: nobuiltin noinline nounwind
define i64 @_ZNSt12out_of_rangeC2ERKS_(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #7 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4199552, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_401480__ZNSt12out_of_rangeC2ERKS_(%struct.State* nonnull @__mcsema_reg_state, i64 4199552, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: nobuiltin noinline
define i64 @_Z23test_throw_out_of_rangev(i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5 {
  %9 = load volatile i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %is_null.i, label %__mcsema_verify_reg_state.exit

is_null.i:                                        ; preds = %8
  store i64 ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_verify_reg_state.exit

__mcsema_verify_reg_state.exit:                   ; preds = %is_null.i, %8
  %11 = phi i64 [ %9, %8 ], [ ptrtoint (i64* getelementptr inbounds ([131072 x i64], [131072 x i64]* @__mcsema_stack, i64 0, i64 131064) to i64), %is_null.i ]
  store i64 4198336, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 33, i32 0, i32 0), align 8
  store i64 ptrtoint ([512 x i64]* @__mcsema_tls to i64), i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 5, i32 7, i32 0, i32 0), align 8
  %12 = load volatile i1, i1* @0, align 1
  br i1 %12, label %__mcsema_early_init.exit, label %13

; <label>:13:                                     ; preds = %__mcsema_verify_reg_state.exit
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  %.pre = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %13, %__mcsema_verify_reg_state.exit
  %14 = phi i64 [ %11, %__mcsema_verify_reg_state.exit ], [ %.pre, %13 ]
  store i64 %0, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 11, i32 0, i32 0), align 8
  store i64 %1, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 9, i32 0, i32 0), align 8
  store i64 %2, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 7, i32 0, i32 0), align 8
  store i64 %3, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 5, i32 0, i32 0), align 8
  store i64 %4, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 17, i32 0, i32 0), align 8
  store i64 %5, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 19, i32 0, i32 0), align 8
  %15 = inttoptr i64 %14 to i64*
  store i64 %7, i64* %15
  %16 = add i64 %14, -8
  %17 = inttoptr i64 %16 to i64*
  store i64 %6, i64* %17
  %18 = add i64 %14, -24
  store i64 %18, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %19 = tail call %struct.Memory* @sub_400fc0__Z23test_throw_out_of_rangev(%struct.State* nonnull @__mcsema_reg_state, i64 4198336, %struct.Memory* null)
  store i64 %11, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 13, i32 0, i32 0), align 8
  %20 = load i64, i64* getelementptr inbounds (%struct.State, %struct.State* @__mcsema_reg_state, i64 0, i32 6, i32 1, i32 0, i32 0), align 8
  ret i64 %20
}

; Function Attrs: nounwind
define internal void @__mcsema_destructor() #9 {
  %1 = tail call i64 @callback_sub_401540___libc_csu_fini()
  ret void
}

define internal void @__mcsema_constructor() {
  %1 = load volatile i1, i1* @0, align 1
  br i1 %1, label %__mcsema_early_init.exit, label %2

; <label>:2:                                      ; preds = %0
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 176) to i64*), align 16
  store i64 ptrtoint (i64* @_ZNSt12out_of_rangeC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 152) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 136) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt11logic_errorC2ERKS_ to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 88) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 56) to i64*), align 8
  store i64 ptrtoint (i64* @_ZNSt13runtime_errorC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE to i64), i64* inttoptr (i64 add (i64 ptrtoint (%seg_602000__got_plt_type* @seg_602000__got_plt to i64), i64 32) to i64*), align 16
  store i32 ptrtoint (i8* @_ZTISt13runtime_error to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 324) to i32*), align 4
  store i32 ptrtoint (i8* @_ZTISt12out_of_range to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 320) to i32*), align 16
  store i32 ptrtoint (i8* @_ZTId to i32), i32* inttoptr (i64 add (i64 ptrtoint (%seg_401834__gcc_except_table_type* @seg_401834__gcc_except_table to i64), i64 316) to i32*), align 4
  store volatile i1 true, i1* @0, align 1
  br label %__mcsema_early_init.exit

__mcsema_early_init.exit:                         ; preds = %2, %0
  %3 = tail call i64 @callback_sub_4014d0___libc_csu_init()
  ret void
}

; Function Attrs: noinline optnone
define %struct.State* @__mcsema_debug_get_reg_state() #10 {
  ret %struct.State* @__mcsema_reg_state
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #11

attributes #0 = { nounwind readnone speculatable }
attributes #1 = { noduplicate noinline nounwind optnone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline }
attributes #3 = { noinline "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noinline nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nobuiltin noinline }
attributes #6 = { norecurse nounwind }
attributes #7 = { nobuiltin noinline nounwind }
attributes #8 = { alwaysinline inlinehint "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }
attributes #10 = { noinline optnone }
attributes #11 = { cold noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.dbg.cu = !{!1}
!llvm.module.flags = !{!1229, !1230}

!0 = !{!"clang version 4.0.1 (tags/RELEASE_401/final)"}
!1 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus, file: !2, producer: "clang version 4.0.1 (tags/RELEASE_401/final)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !3, retainedTypes: !67, imports: !70)
!2 = !DIFile(filename: "/home/douze/remill/remill/Arch/X86/Runtime/BasicBlock.cpp", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!3 = !{!4, !26, !35, !39, !45, !51, !55, !61}
!4 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "Name", scope: !6, file: !5, line: 70, baseType: !8, size: 32, elements: !11, identifier: "_ZTSN14AsyncHyperCall4NameE")
!5 = !DIFile(filename: "/home/douze/remill/remill/Arch/Runtime/HyperCall.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!6 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "AsyncHyperCall", file: !5, line: 68, size: 8, elements: !7, identifier: "_ZTS14AsyncHyperCall")
!7 = !{}
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !9, line: 183, baseType: !10)
!9 = !DIFile(filename: "/home/douze/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stdint.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !{!12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25}
!12 = !DIEnumerator(name: "kInvalid", value: 0)
!13 = !DIEnumerator(name: "kX86Int1", value: 1)
!14 = !DIEnumerator(name: "kX86Int3", value: 2)
!15 = !DIEnumerator(name: "kX86IntO", value: 3)
!16 = !DIEnumerator(name: "kX86IntN", value: 4)
!17 = !DIEnumerator(name: "kX86Bound", value: 5)
!18 = !DIEnumerator(name: "kX86IRet", value: 6)
!19 = !DIEnumerator(name: "kX86SysCall", value: 7)
!20 = !DIEnumerator(name: "kX86SysRet", value: 8)
!21 = !DIEnumerator(name: "kX86SysEnter", value: 9)
!22 = !DIEnumerator(name: "kX86SysExit", value: 10)
!23 = !DIEnumerator(name: "kX86JmpFar", value: 11)
!24 = !DIEnumerator(name: "kAArch64SupervisorCall", value: 12)
!25 = !DIEnumerator(name: "kInvalidInstruction", value: 13)
!26 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "RequestPrivilegeLevel", file: !27, line: 64, baseType: !28, size: 16, elements: !30, identifier: "_ZTS21RequestPrivilegeLevel")
!27 = !DIFile(filename: "/home/douze/remill/remill/Arch/X86/Runtime/State.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !9, line: 218, baseType: !29)
!29 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "kRPLRingZero", value: 0)
!32 = !DIEnumerator(name: "kRPLRingOne", value: 1)
!33 = !DIEnumerator(name: "kRPLRingTwo", value: 2)
!34 = !DIEnumerator(name: "kRPLRingThree", value: 3)
!35 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "TableIndicator", file: !27, line: 71, baseType: !28, size: 16, elements: !36, identifier: "_ZTS14TableIndicator")
!36 = !{!37, !38}
!37 = !DIEnumerator(name: "kGlobalDescriptorTable", value: 0)
!38 = !DIEnumerator(name: "kLocalDescriptorTable", value: 1)
!39 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUPrecisionControl", file: !27, line: 123, baseType: !28, size: 16, elements: !40, identifier: "_ZTS19FPUPrecisionControl")
!40 = !{!41, !42, !43, !44}
!41 = !DIEnumerator(name: "kPrecisionSingle", value: 0)
!42 = !DIEnumerator(name: "kPrecisionReserved", value: 1)
!43 = !DIEnumerator(name: "kPrecisionDouble", value: 2)
!44 = !DIEnumerator(name: "kPrecisionExtended", value: 3)
!45 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPURoundingControl", file: !27, line: 130, baseType: !28, size: 16, elements: !46, identifier: "_ZTS18FPURoundingControl")
!46 = !{!47, !48, !49, !50}
!47 = !DIEnumerator(name: "kFPURoundToNearestEven", value: 0)
!48 = !DIEnumerator(name: "kFPURoundDownNegInf", value: 1)
!49 = !DIEnumerator(name: "kFPURoundUpInf", value: 2)
!50 = !DIEnumerator(name: "kFPURoundToZero", value: 3)
!51 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUInfinityControl", file: !27, line: 137, baseType: !28, size: 16, elements: !52, identifier: "_ZTS18FPUInfinityControl")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "kInfinityProjective", value: 0)
!54 = !DIEnumerator(name: "kInfinityAffine", value: 1)
!55 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUTag", file: !27, line: 214, baseType: !28, size: 16, elements: !56, identifier: "_ZTS6FPUTag")
!56 = !{!57, !58, !59, !60}
!57 = !DIEnumerator(name: "kFPUTagNonZero", value: 0)
!58 = !DIEnumerator(name: "kFPUTagZero", value: 1)
!59 = !DIEnumerator(name: "kFPUTagSpecial", value: 2)
!60 = !DIEnumerator(name: "kFPUTagEmpty", value: 3)
!61 = distinct !DICompositeType(tag: DW_TAG_enumeration_type, name: "FPUAbridgedTag", file: !27, line: 221, baseType: !62, size: 8, elements: !64, identifier: "_ZTS14FPUAbridgedTag")
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !9, line: 237, baseType: !63)
!63 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!64 = !{!65, !66}
!65 = !DIEnumerator(name: "kFPUAbridgedTagEmpty", value: 0)
!66 = !DIEnumerator(name: "kFPUAbridgedTagValid", value: 1)
!67 = !{!68}
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!70 = !{!71, !75, !79, !86, !90, !95, !100, !102, !110, !114, !118, !130, !134, !138, !142, !146, !151, !155, !159, !163, !167, !175, !179, !183, !185, !189, !193, !197, !203, !207, !211, !213, !221, !225, !233, !235, !239, !243, !247, !251, !256, !261, !266, !267, !268, !269, !272, !273, !274, !275, !276, !277, !278, !333, !338, !340, !342, !346, !348, !350, !352, !354, !356, !358, !360, !365, !369, !371, !373, !378, !380, !382, !384, !386, !388, !390, !393, !395, !397, !401, !405, !407, !409, !411, !413, !415, !417, !419, !421, !423, !425, !429, !433, !435, !437, !439, !441, !443, !445, !447, !449, !451, !453, !455, !457, !459, !461, !463, !467, !471, !475, !477, !479, !481, !483, !485, !487, !489, !491, !493, !497, !501, !505, !507, !509, !511, !515, !519, !523, !525, !527, !529, !531, !533, !535, !537, !539, !541, !543, !545, !547, !551, !555, !559, !561, !563, !565, !567, !571, !575, !577, !579, !581, !583, !585, !587, !591, !595, !597, !599, !601, !603, !607, !611, !615, !617, !619, !621, !623, !625, !627, !631, !635, !639, !641, !645, !649, !651, !653, !655, !657, !659, !661, !676, !678, !682, !690, !695, !699, !703, !707, !711, !713, !715, !719, !725, !729, !735, !741, !743, !747, !751, !755, !759, !770, !772, !776, !780, !784, !786, !790, !794, !798, !800, !802, !806, !814, !818, !822, !826, !828, !834, !836, !842, !846, !850, !854, !858, !862, !866, !868, !870, !874, !878, !882, !884, !888, !892, !894, !896, !900, !904, !908, !912, !913, !914, !842, !770, !776, !784, !912, !913, !914, !915, !919, !922, !924, !926, !928, !930, !932, !934, !936, !938, !940, !942, !944, !946, !947, !948, !949, !951, !953, !955, !957, !959, !961, !963, !965, !967, !969, !971, !973, !975, !978, !982, !987, !990, !992, !994, !996, !998, !1000, !1002, !1004, !1006, !1008, !1010, !1012, !1014, !1016, !1018, !1023, !1028, !1032, !1034, !1036, !1038, !1040, !1047, !1051, !1055, !1059, !1063, !1067, !1072, !1076, !1078, !1082, !1088, !1092, !1097, !1099, !1101, !1105, !1109, !1113, !1115, !1117, !1119, !1121, !1125, !1127, !1129, !1133, !1137, !1141, !1145, !1149, !1151, !1153, !1157, !1161, !1165, !1169, !1171, !1173, !1177, !1181, !1182, !1183, !1184, !1185, !1186, !1190, !1192, !1195, !1200, !1202, !1208, !1210, !1212, !1214, !1219, !1221, !1227, !1186, !1190, !1192, !1195, !1200, !1202, !1208, !1210, !1212, !1214, !1219, !1221, !1227}
!71 = !DIImportedEntity(tag: DW_TAG_imported_module, scope: !72, entity: !73)
!72 = !DINamespace(name: "__gnu_debug", scope: null)
!73 = !DINamespace(name: "__debug", scope: !74)
!74 = !DINamespace(name: "std", scope: null)
!75 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !76)
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "div_t", file: !77, line: 101, baseType: !78)
!77 = !DIFile(filename: "/usr/include/stdlib.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 97, flags: DIFlagFwdDecl, identifier: "_ZTS5div_t")
!79 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "ldiv_t", file: !77, line: 109, baseType: !81)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 105, size: 128, elements: !82, identifier: "_ZTS6ldiv_t")
!82 = !{!83, !85}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !81, file: !77, line: 107, baseType: !84, size: 64)
!84 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !81, file: !77, line: 108, baseType: !84, size: 64, offset: 64)
!86 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !87)
!87 = !DISubprogram(name: "abort", scope: !77, file: !77, line: 515, type: !88, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!88 = !DISubroutineType(types: !89)
!89 = !{null}
!90 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !91)
!91 = !DISubprogram(name: "abs", scope: !77, file: !77, line: 774, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!92 = !DISubroutineType(types: !93)
!93 = !{!94, !94}
!94 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!95 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !96)
!96 = !DISubprogram(name: "atexit", scope: !77, file: !77, line: 519, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!97 = !DISubroutineType(types: !98)
!98 = !{!94, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!100 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !101)
!101 = !DISubprogram(name: "at_quick_exit", scope: !77, file: !77, line: 524, type: !97, flags: DIFlagPrototyped, spFlags: 0)
!102 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !103)
!103 = !DISubprogram(name: "atof", scope: !77, file: !77, line: 144, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !107}
!106 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!110 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !111)
!111 = !DISubprogram(name: "atoi", scope: !77, file: !77, line: 147, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!112 = !DISubroutineType(types: !113)
!113 = !{!94, !107}
!114 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !115)
!115 = !DISubprogram(name: "atol", scope: !77, file: !77, line: 150, type: !116, flags: DIFlagPrototyped, spFlags: 0)
!116 = !DISubroutineType(types: !117)
!117 = !{!84, !107}
!118 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !119)
!119 = !DISubprogram(name: "bsearch", scope: !77, file: !77, line: 754, type: !120, flags: DIFlagPrototyped, spFlags: 0)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !68, !68, !123, !123, !126}
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !124, line: 62, baseType: !125)
!124 = !DIFile(filename: "/home/douze/remill/remill-build/libraries/llvm/bin/../lib/clang/4.0.1/include/stddef.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!125 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__compar_fn_t", file: !77, line: 741, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DISubroutineType(types: !129)
!129 = !{!94, !68, !68}
!130 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !131)
!131 = !DISubprogram(name: "calloc", scope: !77, file: !77, line: 468, type: !132, flags: DIFlagPrototyped, spFlags: 0)
!132 = !DISubroutineType(types: !133)
!133 = !{!122, !123, !123}
!134 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !135)
!135 = !DISubprogram(name: "div", scope: !77, file: !77, line: 788, type: !136, flags: DIFlagPrototyped, spFlags: 0)
!136 = !DISubroutineType(types: !137)
!137 = !{!76, !94, !94}
!138 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !139)
!139 = !DISubprogram(name: "exit", scope: !77, file: !77, line: 543, type: !140, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !94}
!142 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !143)
!143 = !DISubprogram(name: "free", scope: !77, file: !77, line: 483, type: !144, flags: DIFlagPrototyped, spFlags: 0)
!144 = !DISubroutineType(types: !145)
!145 = !{null, !122}
!146 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !147)
!147 = !DISubprogram(name: "getenv", scope: !77, file: !77, line: 564, type: !148, flags: DIFlagPrototyped, spFlags: 0)
!148 = !DISubroutineType(types: !149)
!149 = !{!150, !107}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !152)
!152 = !DISubprogram(name: "labs", scope: !77, file: !77, line: 775, type: !153, flags: DIFlagPrototyped, spFlags: 0)
!153 = !DISubroutineType(types: !154)
!154 = !{!84, !84}
!155 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !156)
!156 = !DISubprogram(name: "ldiv", scope: !77, file: !77, line: 790, type: !157, flags: DIFlagPrototyped, spFlags: 0)
!157 = !DISubroutineType(types: !158)
!158 = !{!80, !84, !84}
!159 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !160)
!160 = !DISubprogram(name: "malloc", scope: !77, file: !77, line: 466, type: !161, flags: DIFlagPrototyped, spFlags: 0)
!161 = !DISubroutineType(types: !162)
!162 = !{!122, !123}
!163 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !164)
!164 = !DISubprogram(name: "mblen", scope: !77, file: !77, line: 862, type: !165, flags: DIFlagPrototyped, spFlags: 0)
!165 = !DISubroutineType(types: !166)
!166 = !{!94, !107, !123}
!167 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !168)
!168 = !DISubprogram(name: "mbstowcs", scope: !77, file: !77, line: 873, type: !169, flags: DIFlagPrototyped, spFlags: 0)
!169 = !DISubroutineType(types: !170)
!170 = !{!123, !171, !174, !123}
!171 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIBasicType(name: "wchar_t", size: 32, encoding: DW_ATE_signed)
!174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!175 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !176)
!176 = !DISubprogram(name: "mbtowc", scope: !77, file: !77, line: 865, type: !177, flags: DIFlagPrototyped, spFlags: 0)
!177 = !DISubroutineType(types: !178)
!178 = !{!94, !171, !174, !123}
!179 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !180)
!180 = !DISubprogram(name: "qsort", scope: !77, file: !77, line: 764, type: !181, flags: DIFlagPrototyped, spFlags: 0)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !122, !123, !123, !126}
!183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !184)
!184 = !DISubprogram(name: "quick_exit", scope: !77, file: !77, line: 549, type: !140, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !186)
!186 = !DISubprogram(name: "rand", scope: !77, file: !77, line: 374, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!187 = !DISubroutineType(types: !188)
!188 = !{!94}
!189 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !190)
!190 = !DISubprogram(name: "realloc", scope: !77, file: !77, line: 480, type: !191, flags: DIFlagPrototyped, spFlags: 0)
!191 = !DISubroutineType(types: !192)
!192 = !{!122, !122, !123}
!193 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !194)
!194 = !DISubprogram(name: "srand", scope: !77, file: !77, line: 376, type: !195, flags: DIFlagPrototyped, spFlags: 0)
!195 = !DISubroutineType(types: !196)
!196 = !{null, !10}
!197 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !198)
!198 = !DISubprogram(name: "strtod", scope: !77, file: !77, line: 164, type: !199, flags: DIFlagPrototyped, spFlags: 0)
!199 = !DISubroutineType(types: !200)
!200 = !{!106, !174, !201}
!201 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!203 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !204)
!204 = !DISubprogram(name: "strtol", scope: !77, file: !77, line: 183, type: !205, flags: DIFlagPrototyped, spFlags: 0)
!205 = !DISubroutineType(types: !206)
!206 = !{!84, !174, !201, !94}
!207 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !208)
!208 = !DISubprogram(name: "strtoul", scope: !77, file: !77, line: 187, type: !209, flags: DIFlagPrototyped, spFlags: 0)
!209 = !DISubroutineType(types: !210)
!210 = !{!125, !174, !201, !94}
!211 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !212)
!212 = !DISubprogram(name: "system", scope: !77, file: !77, line: 716, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!213 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !214)
!214 = !DISubprogram(name: "wcstombs", scope: !77, file: !77, line: 876, type: !215, flags: DIFlagPrototyped, spFlags: 0)
!215 = !DISubroutineType(types: !216)
!216 = !{!123, !217, !218, !123}
!217 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!218 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !222)
!222 = !DISubprogram(name: "wctomb", scope: !77, file: !77, line: 869, type: !223, flags: DIFlagPrototyped, spFlags: 0)
!223 = !DISubroutineType(types: !224)
!224 = !{!94, !150, !173}
!225 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !227)
!226 = !DINamespace(name: "__gnu_cxx", scope: null)
!227 = !DIDerivedType(tag: DW_TAG_typedef, name: "lldiv_t", file: !77, line: 121, baseType: !228)
!228 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !77, line: 117, size: 128, elements: !229, identifier: "_ZTS7lldiv_t")
!229 = !{!230, !232}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "quot", scope: !228, file: !77, line: 119, baseType: !231, size: 64)
!231 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "rem", scope: !228, file: !77, line: 120, baseType: !231, size: 64, offset: 64)
!233 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !234)
!234 = !DISubprogram(name: "_Exit", scope: !77, file: !77, line: 557, type: !140, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: 0)
!235 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !236)
!236 = !DISubprogram(name: "llabs", scope: !77, file: !77, line: 779, type: !237, flags: DIFlagPrototyped, spFlags: 0)
!237 = !DISubroutineType(types: !238)
!238 = !{!231, !231}
!239 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !240)
!240 = !DISubprogram(name: "lldiv", scope: !77, file: !77, line: 796, type: !241, flags: DIFlagPrototyped, spFlags: 0)
!241 = !DISubroutineType(types: !242)
!242 = !{!227, !231, !231}
!243 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !244)
!244 = !DISubprogram(name: "atoll", scope: !77, file: !77, line: 157, type: !245, flags: DIFlagPrototyped, spFlags: 0)
!245 = !DISubroutineType(types: !246)
!246 = !{!231, !107}
!247 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !248)
!248 = !DISubprogram(name: "strtoll", scope: !77, file: !77, line: 209, type: !249, flags: DIFlagPrototyped, spFlags: 0)
!249 = !DISubroutineType(types: !250)
!250 = !{!231, !174, !201, !94}
!251 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !252)
!252 = !DISubprogram(name: "strtoull", scope: !77, file: !77, line: 214, type: !253, flags: DIFlagPrototyped, spFlags: 0)
!253 = !DISubroutineType(types: !254)
!254 = !{!255, !174, !201, !94}
!255 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!256 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !257)
!257 = !DISubprogram(name: "strtof", scope: !77, file: !77, line: 172, type: !258, flags: DIFlagPrototyped, spFlags: 0)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !174, !201}
!260 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!261 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !262)
!262 = !DISubprogram(name: "strtold", scope: !77, file: !77, line: 175, type: !263, flags: DIFlagPrototyped, spFlags: 0)
!263 = !DISubroutineType(types: !264)
!264 = !{!265, !174, !201}
!265 = !DIBasicType(name: "long double", size: 128, encoding: DW_ATE_float)
!266 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !227)
!267 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !234)
!268 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !236)
!269 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !270)
!270 = !DISubprogram(name: "div", linkageName: "_ZN9__gnu_cxx3divExx", scope: !226, file: !271, line: 227, type: !241, flags: DIFlagPrototyped, spFlags: 0)
!271 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/cstdlib", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!272 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !240)
!273 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !244)
!274 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !257)
!275 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !248)
!276 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !252)
!277 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !262)
!278 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "exception_ptr", scope: !281, file: !280, line: 75, size: 64, elements: !282, identifier: "_ZTSNSt15__exception_ptr13exception_ptrE")
!280 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/c++/5.4.0/bits/exception_ptr.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!281 = !DINamespace(name: "__exception_ptr", scope: !74)
!282 = !{!283, !284, !288, !291, !292, !297, !298, !302, !308, !312, !316, !319, !320, !323, !327}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "_M_exception_object", scope: !279, file: !280, line: 77, baseType: !122, size: 64)
!284 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 79, type: !285, scopeLine: 79, flags: DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!285 = !DISubroutineType(types: !286)
!286 = !{null, !287, !122}
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!288 = !DISubprogram(name: "_M_addref", linkageName: "_ZNSt15__exception_ptr13exception_ptr9_M_addrefEv", scope: !279, file: !280, line: 81, type: !289, scopeLine: 81, flags: DIFlagPrototyped, spFlags: 0)
!289 = !DISubroutineType(types: !290)
!290 = !{null, !287}
!291 = !DISubprogram(name: "_M_release", linkageName: "_ZNSt15__exception_ptr13exception_ptr10_M_releaseEv", scope: !279, file: !280, line: 82, type: !289, scopeLine: 82, flags: DIFlagPrototyped, spFlags: 0)
!292 = !DISubprogram(name: "_M_get", linkageName: "_ZNKSt15__exception_ptr13exception_ptr6_M_getEv", scope: !279, file: !280, line: 84, type: !293, scopeLine: 84, flags: DIFlagPrototyped, spFlags: 0)
!293 = !DISubroutineType(types: !294)
!294 = !{!122, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64, flags: DIFlagArtificial | DIFlagObjectPointer)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!297 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 90, type: !289, scopeLine: 90, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!298 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 92, type: !299, scopeLine: 92, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!299 = !DISubroutineType(types: !300)
!300 = !{null, !287, !301}
!301 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !296, size: 64)
!302 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 95, type: !303, scopeLine: 95, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!303 = !DISubroutineType(types: !304)
!304 = !{null, !287, !305}
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "nullptr_t", scope: !74, file: !306, line: 200, baseType: !307)
!306 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/5.4.0/../../../../include/x86_64-linux-gnu/c++/5.4.0/bits/c++config.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!307 = !DIBasicType(tag: DW_TAG_unspecified_type, name: "decltype(nullptr)")
!308 = !DISubprogram(name: "exception_ptr", scope: !279, file: !280, line: 99, type: !309, scopeLine: 99, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!309 = !DISubroutineType(types: !310)
!310 = !{null, !287, !311}
!311 = !DIDerivedType(tag: DW_TAG_rvalue_reference_type, baseType: !279, size: 64)
!312 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSERKS0_", scope: !279, file: !280, line: 112, type: !313, scopeLine: 112, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!313 = !DISubroutineType(types: !314)
!314 = !{!315, !287, !301}
!315 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !279, size: 64)
!316 = !DISubprogram(name: "operator=", linkageName: "_ZNSt15__exception_ptr13exception_ptraSEOS0_", scope: !279, file: !280, line: 116, type: !317, scopeLine: 116, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!317 = !DISubroutineType(types: !318)
!318 = !{!315, !287, !311}
!319 = !DISubprogram(name: "~exception_ptr", scope: !279, file: !280, line: 123, type: !289, scopeLine: 123, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!320 = !DISubprogram(name: "swap", linkageName: "_ZNSt15__exception_ptr13exception_ptr4swapERS0_", scope: !279, file: !280, line: 126, type: !321, scopeLine: 126, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!321 = !DISubroutineType(types: !322)
!322 = !{null, !287, !315}
!323 = !DISubprogram(name: "operator bool", linkageName: "_ZNKSt15__exception_ptr13exception_ptrcvbEv", scope: !279, file: !280, line: 138, type: !324, scopeLine: 138, flags: DIFlagPublic | DIFlagExplicit | DIFlagPrototyped, spFlags: 0)
!324 = !DISubroutineType(types: !325)
!325 = !{!326, !295}
!326 = !DIBasicType(name: "bool", size: 8, encoding: DW_ATE_boolean)
!327 = !DISubprogram(name: "__cxa_exception_type", linkageName: "_ZNKSt15__exception_ptr13exception_ptr20__cxa_exception_typeEv", scope: !279, file: !280, line: 147, type: !328, scopeLine: 147, flags: DIFlagPublic | DIFlagPrototyped, spFlags: 0)
!328 = !DISubroutineType(types: !329)
!329 = !{!330, !295}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_class_type, name: "type_info", scope: !74, file: !280, line: 47, flags: DIFlagFwdDecl, identifier: "_ZTSSt9type_info")
!333 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !334)
!334 = !DISubprogram(name: "acos", scope: !335, file: !335, line: 54, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!335 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathcalls.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!336 = !DISubroutineType(types: !337)
!337 = !{!106, !106}
!338 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !339)
!339 = !DISubprogram(name: "asin", scope: !335, file: !335, line: 56, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!340 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !341)
!341 = !DISubprogram(name: "atan", scope: !335, file: !335, line: 58, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!342 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !343)
!343 = !DISubprogram(name: "atan2", scope: !335, file: !335, line: 60, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!344 = !DISubroutineType(types: !345)
!345 = !{!106, !106, !106}
!346 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !347)
!347 = !DISubprogram(name: "ceil", scope: !335, file: !335, line: 178, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!348 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !349)
!349 = !DISubprogram(name: "cos", scope: !335, file: !335, line: 63, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!350 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !351)
!351 = !DISubprogram(name: "cosh", scope: !335, file: !335, line: 72, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!352 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !353)
!353 = !DISubprogram(name: "exp", scope: !335, file: !335, line: 100, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!354 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !355)
!355 = !DISubprogram(name: "fabs", scope: !335, file: !335, line: 181, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!356 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !357)
!357 = !DISubprogram(name: "floor", scope: !335, file: !335, line: 184, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!358 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !359)
!359 = !DISubprogram(name: "fmod", scope: !335, file: !335, line: 187, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!360 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !361)
!361 = !DISubprogram(name: "frexp", scope: !335, file: !335, line: 103, type: !362, flags: DIFlagPrototyped, spFlags: 0)
!362 = !DISubroutineType(types: !363)
!363 = !{!106, !106, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!365 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !366)
!366 = !DISubprogram(name: "ldexp", scope: !335, file: !335, line: 106, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!367 = !DISubroutineType(types: !368)
!368 = !{!106, !106, !94}
!369 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !370)
!370 = !DISubprogram(name: "log", scope: !335, file: !335, line: 109, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!371 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !372)
!372 = !DISubprogram(name: "log10", scope: !335, file: !335, line: 112, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!373 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !374)
!374 = !DISubprogram(name: "modf", scope: !335, file: !335, line: 115, type: !375, flags: DIFlagPrototyped, spFlags: 0)
!375 = !DISubroutineType(types: !376)
!376 = !{!106, !106, !377}
!377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!378 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !379)
!379 = !DISubprogram(name: "pow", scope: !335, file: !335, line: 153, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!380 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !381)
!381 = !DISubprogram(name: "sin", scope: !335, file: !335, line: 65, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!382 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !383)
!383 = !DISubprogram(name: "sinh", scope: !335, file: !335, line: 74, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!384 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !385)
!385 = !DISubprogram(name: "sqrt", scope: !335, file: !335, line: 156, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!386 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !387)
!387 = !DISubprogram(name: "tan", scope: !335, file: !335, line: 67, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!388 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !389)
!389 = !DISubprogram(name: "tanh", scope: !335, file: !335, line: 76, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!390 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "double_t", file: !392, line: 29, baseType: !106)
!392 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/mathdef.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!393 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "float_t", file: !392, line: 28, baseType: !260)
!395 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !396)
!396 = !DISubprogram(name: "acosh", scope: !335, file: !335, line: 88, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!397 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !398)
!398 = !DISubprogram(name: "acoshf", scope: !335, file: !335, line: 88, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!399 = !DISubroutineType(types: !400)
!400 = !{!260, !260}
!401 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !402)
!402 = !DISubprogram(name: "acoshl", scope: !335, file: !335, line: 88, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!403 = !DISubroutineType(types: !404)
!404 = !{!265, !265}
!405 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !406)
!406 = !DISubprogram(name: "asinh", scope: !335, file: !335, line: 90, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!407 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !408)
!408 = !DISubprogram(name: "asinhf", scope: !335, file: !335, line: 90, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!409 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !410)
!410 = !DISubprogram(name: "asinhl", scope: !335, file: !335, line: 90, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!411 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !412)
!412 = !DISubprogram(name: "atanh", scope: !335, file: !335, line: 92, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!413 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !414)
!414 = !DISubprogram(name: "atanhf", scope: !335, file: !335, line: 92, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!415 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !416)
!416 = !DISubprogram(name: "atanhl", scope: !335, file: !335, line: 92, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!417 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !418)
!418 = !DISubprogram(name: "cbrt", scope: !335, file: !335, line: 169, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!419 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !420)
!420 = !DISubprogram(name: "cbrtf", scope: !335, file: !335, line: 169, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!421 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !422)
!422 = !DISubprogram(name: "cbrtl", scope: !335, file: !335, line: 169, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!423 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !424)
!424 = !DISubprogram(name: "copysign", scope: !335, file: !335, line: 221, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!425 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !426)
!426 = !DISubprogram(name: "copysignf", scope: !335, file: !335, line: 221, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!427 = !DISubroutineType(types: !428)
!428 = !{!260, !260, !260}
!429 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !430)
!430 = !DISubprogram(name: "copysignl", scope: !335, file: !335, line: 221, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!431 = !DISubroutineType(types: !432)
!432 = !{!265, !265, !265}
!433 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !434)
!434 = !DISubprogram(name: "erf", scope: !335, file: !335, line: 259, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!435 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !436)
!436 = !DISubprogram(name: "erff", scope: !335, file: !335, line: 259, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!437 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !438)
!438 = !DISubprogram(name: "erfl", scope: !335, file: !335, line: 259, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!439 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !440)
!440 = !DISubprogram(name: "erfc", scope: !335, file: !335, line: 260, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!441 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !442)
!442 = !DISubprogram(name: "erfcf", scope: !335, file: !335, line: 260, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!443 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !444)
!444 = !DISubprogram(name: "erfcl", scope: !335, file: !335, line: 260, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!445 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !446)
!446 = !DISubprogram(name: "exp2", scope: !335, file: !335, line: 141, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!447 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !448)
!448 = !DISubprogram(name: "exp2f", scope: !335, file: !335, line: 141, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!449 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !450)
!450 = !DISubprogram(name: "exp2l", scope: !335, file: !335, line: 141, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!451 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !452)
!452 = !DISubprogram(name: "expm1", scope: !335, file: !335, line: 128, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!453 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !454)
!454 = !DISubprogram(name: "expm1f", scope: !335, file: !335, line: 128, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!455 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !456)
!456 = !DISubprogram(name: "expm1l", scope: !335, file: !335, line: 128, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!457 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !458)
!458 = !DISubprogram(name: "fdim", scope: !335, file: !335, line: 347, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!459 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !460)
!460 = !DISubprogram(name: "fdimf", scope: !335, file: !335, line: 347, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!461 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !462)
!462 = !DISubprogram(name: "fdiml", scope: !335, file: !335, line: 347, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!463 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !464)
!464 = !DISubprogram(name: "fma", scope: !335, file: !335, line: 366, type: !465, flags: DIFlagPrototyped, spFlags: 0)
!465 = !DISubroutineType(types: !466)
!466 = !{!106, !106, !106, !106}
!467 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !468)
!468 = !DISubprogram(name: "fmaf", scope: !335, file: !335, line: 366, type: !469, flags: DIFlagPrototyped, spFlags: 0)
!469 = !DISubroutineType(types: !470)
!470 = !{!260, !260, !260, !260}
!471 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !472)
!472 = !DISubprogram(name: "fmal", scope: !335, file: !335, line: 366, type: !473, flags: DIFlagPrototyped, spFlags: 0)
!473 = !DISubroutineType(types: !474)
!474 = !{!265, !265, !265, !265}
!475 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !476)
!476 = !DISubprogram(name: "fmax", scope: !335, file: !335, line: 350, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!477 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !478)
!478 = !DISubprogram(name: "fmaxf", scope: !335, file: !335, line: 350, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!479 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !480)
!480 = !DISubprogram(name: "fmaxl", scope: !335, file: !335, line: 350, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!481 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !482)
!482 = !DISubprogram(name: "fmin", scope: !335, file: !335, line: 353, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!483 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !484)
!484 = !DISubprogram(name: "fminf", scope: !335, file: !335, line: 353, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!485 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !486)
!486 = !DISubprogram(name: "fminl", scope: !335, file: !335, line: 353, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!487 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !488)
!488 = !DISubprogram(name: "hypot", scope: !335, file: !335, line: 162, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!489 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !490)
!490 = !DISubprogram(name: "hypotf", scope: !335, file: !335, line: 162, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!491 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !492)
!492 = !DISubprogram(name: "hypotl", scope: !335, file: !335, line: 162, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!493 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !494)
!494 = !DISubprogram(name: "ilogb", scope: !335, file: !335, line: 306, type: !495, flags: DIFlagPrototyped, spFlags: 0)
!495 = !DISubroutineType(types: !496)
!496 = !{!94, !106}
!497 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !498)
!498 = !DISubprogram(name: "ilogbf", scope: !335, file: !335, line: 306, type: !499, flags: DIFlagPrototyped, spFlags: 0)
!499 = !DISubroutineType(types: !500)
!500 = !{!94, !260}
!501 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !502)
!502 = !DISubprogram(name: "ilogbl", scope: !335, file: !335, line: 306, type: !503, flags: DIFlagPrototyped, spFlags: 0)
!503 = !DISubroutineType(types: !504)
!504 = !{!94, !265}
!505 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !506)
!506 = !DISubprogram(name: "lgamma", scope: !335, file: !335, line: 261, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!507 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !508)
!508 = !DISubprogram(name: "lgammaf", scope: !335, file: !335, line: 261, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!509 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !510)
!510 = !DISubprogram(name: "lgammal", scope: !335, file: !335, line: 261, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!511 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !512)
!512 = !DISubprogram(name: "llrint", scope: !335, file: !335, line: 337, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!513 = !DISubroutineType(types: !514)
!514 = !{!231, !106}
!515 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !516)
!516 = !DISubprogram(name: "llrintf", scope: !335, file: !335, line: 337, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!517 = !DISubroutineType(types: !518)
!518 = !{!231, !260}
!519 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !520)
!520 = !DISubprogram(name: "llrintl", scope: !335, file: !335, line: 337, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!521 = !DISubroutineType(types: !522)
!522 = !{!231, !265}
!523 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !524)
!524 = !DISubprogram(name: "llround", scope: !335, file: !335, line: 343, type: !513, flags: DIFlagPrototyped, spFlags: 0)
!525 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !526)
!526 = !DISubprogram(name: "llroundf", scope: !335, file: !335, line: 343, type: !517, flags: DIFlagPrototyped, spFlags: 0)
!527 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !528)
!528 = !DISubprogram(name: "llroundl", scope: !335, file: !335, line: 343, type: !521, flags: DIFlagPrototyped, spFlags: 0)
!529 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !530)
!530 = !DISubprogram(name: "log1p", scope: !335, file: !335, line: 131, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!531 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !532)
!532 = !DISubprogram(name: "log1pf", scope: !335, file: !335, line: 131, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!533 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !534)
!534 = !DISubprogram(name: "log1pl", scope: !335, file: !335, line: 131, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!535 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !536)
!536 = !DISubprogram(name: "log2", scope: !335, file: !335, line: 144, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!537 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !538)
!538 = !DISubprogram(name: "log2f", scope: !335, file: !335, line: 144, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!539 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !540)
!540 = !DISubprogram(name: "log2l", scope: !335, file: !335, line: 144, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!541 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !542)
!542 = !DISubprogram(name: "logb", scope: !335, file: !335, line: 134, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!543 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !544)
!544 = !DISubprogram(name: "logbf", scope: !335, file: !335, line: 134, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!545 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !546)
!546 = !DISubprogram(name: "logbl", scope: !335, file: !335, line: 134, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!547 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !548)
!548 = !DISubprogram(name: "lrint", scope: !335, file: !335, line: 335, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!549 = !DISubroutineType(types: !550)
!550 = !{!84, !106}
!551 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !552)
!552 = !DISubprogram(name: "lrintf", scope: !335, file: !335, line: 335, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!553 = !DISubroutineType(types: !554)
!554 = !{!84, !260}
!555 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !556)
!556 = !DISubprogram(name: "lrintl", scope: !335, file: !335, line: 335, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!557 = !DISubroutineType(types: !558)
!558 = !{!84, !265}
!559 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !560)
!560 = !DISubprogram(name: "lround", scope: !335, file: !335, line: 341, type: !549, flags: DIFlagPrototyped, spFlags: 0)
!561 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !562)
!562 = !DISubprogram(name: "lroundf", scope: !335, file: !335, line: 341, type: !553, flags: DIFlagPrototyped, spFlags: 0)
!563 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !564)
!564 = !DISubprogram(name: "lroundl", scope: !335, file: !335, line: 341, type: !557, flags: DIFlagPrototyped, spFlags: 0)
!565 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !566)
!566 = !DISubprogram(name: "nan", scope: !335, file: !335, line: 228, type: !104, flags: DIFlagPrototyped, spFlags: 0)
!567 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !568)
!568 = !DISubprogram(name: "nanf", scope: !335, file: !335, line: 228, type: !569, flags: DIFlagPrototyped, spFlags: 0)
!569 = !DISubroutineType(types: !570)
!570 = !{!260, !107}
!571 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !572)
!572 = !DISubprogram(name: "nanl", scope: !335, file: !335, line: 228, type: !573, flags: DIFlagPrototyped, spFlags: 0)
!573 = !DISubroutineType(types: !574)
!574 = !{!265, !107}
!575 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !576)
!576 = !DISubprogram(name: "nearbyint", scope: !335, file: !335, line: 315, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!577 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !578)
!578 = !DISubprogram(name: "nearbyintf", scope: !335, file: !335, line: 315, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!579 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !580)
!580 = !DISubprogram(name: "nearbyintl", scope: !335, file: !335, line: 315, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!581 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !582)
!582 = !DISubprogram(name: "nextafter", scope: !335, file: !335, line: 292, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!583 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !584)
!584 = !DISubprogram(name: "nextafterf", scope: !335, file: !335, line: 292, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!585 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !586)
!586 = !DISubprogram(name: "nextafterl", scope: !335, file: !335, line: 292, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!587 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !588)
!588 = !DISubprogram(name: "nexttoward", scope: !335, file: !335, line: 294, type: !589, flags: DIFlagPrototyped, spFlags: 0)
!589 = !DISubroutineType(types: !590)
!590 = !{!106, !106, !265}
!591 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !592)
!592 = !DISubprogram(name: "nexttowardf", scope: !335, file: !335, line: 294, type: !593, flags: DIFlagPrototyped, spFlags: 0)
!593 = !DISubroutineType(types: !594)
!594 = !{!260, !260, !265}
!595 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !596)
!596 = !DISubprogram(name: "nexttowardl", scope: !335, file: !335, line: 294, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!597 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !598)
!598 = !DISubprogram(name: "remainder", scope: !335, file: !335, line: 298, type: !344, flags: DIFlagPrototyped, spFlags: 0)
!599 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !600)
!600 = !DISubprogram(name: "remainderf", scope: !335, file: !335, line: 298, type: !427, flags: DIFlagPrototyped, spFlags: 0)
!601 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !602)
!602 = !DISubprogram(name: "remainderl", scope: !335, file: !335, line: 298, type: !431, flags: DIFlagPrototyped, spFlags: 0)
!603 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !604)
!604 = !DISubprogram(name: "remquo", scope: !335, file: !335, line: 328, type: !605, flags: DIFlagPrototyped, spFlags: 0)
!605 = !DISubroutineType(types: !606)
!606 = !{!106, !106, !106, !364}
!607 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !608)
!608 = !DISubprogram(name: "remquof", scope: !335, file: !335, line: 328, type: !609, flags: DIFlagPrototyped, spFlags: 0)
!609 = !DISubroutineType(types: !610)
!610 = !{!260, !260, !260, !364}
!611 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !612)
!612 = !DISubprogram(name: "remquol", scope: !335, file: !335, line: 328, type: !613, flags: DIFlagPrototyped, spFlags: 0)
!613 = !DISubroutineType(types: !614)
!614 = !{!265, !265, !265, !364}
!615 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !616)
!616 = !DISubprogram(name: "rint", scope: !335, file: !335, line: 289, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!617 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !618)
!618 = !DISubprogram(name: "rintf", scope: !335, file: !335, line: 289, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!619 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !620)
!620 = !DISubprogram(name: "rintl", scope: !335, file: !335, line: 289, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!621 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !622)
!622 = !DISubprogram(name: "round", scope: !335, file: !335, line: 319, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!623 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !624)
!624 = !DISubprogram(name: "roundf", scope: !335, file: !335, line: 319, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!625 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !626)
!626 = !DISubprogram(name: "roundl", scope: !335, file: !335, line: 319, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!627 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !628)
!628 = !DISubprogram(name: "scalbln", scope: !335, file: !335, line: 311, type: !629, flags: DIFlagPrototyped, spFlags: 0)
!629 = !DISubroutineType(types: !630)
!630 = !{!106, !106, !84}
!631 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !632)
!632 = !DISubprogram(name: "scalblnf", scope: !335, file: !335, line: 311, type: !633, flags: DIFlagPrototyped, spFlags: 0)
!633 = !DISubroutineType(types: !634)
!634 = !{!260, !260, !84}
!635 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !636)
!636 = !DISubprogram(name: "scalblnl", scope: !335, file: !335, line: 311, type: !637, flags: DIFlagPrototyped, spFlags: 0)
!637 = !DISubroutineType(types: !638)
!638 = !{!265, !265, !84}
!639 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !640)
!640 = !DISubprogram(name: "scalbn", scope: !335, file: !335, line: 302, type: !367, flags: DIFlagPrototyped, spFlags: 0)
!641 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !642)
!642 = !DISubprogram(name: "scalbnf", scope: !335, file: !335, line: 302, type: !643, flags: DIFlagPrototyped, spFlags: 0)
!643 = !DISubroutineType(types: !644)
!644 = !{!260, !260, !94}
!645 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !646)
!646 = !DISubprogram(name: "scalbnl", scope: !335, file: !335, line: 302, type: !647, flags: DIFlagPrototyped, spFlags: 0)
!647 = !DISubroutineType(types: !648)
!648 = !{!265, !265, !94}
!649 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !650)
!650 = !DISubprogram(name: "tgamma", scope: !335, file: !335, line: 268, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!651 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !652)
!652 = !DISubprogram(name: "tgammaf", scope: !335, file: !335, line: 268, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!653 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !654)
!654 = !DISubprogram(name: "tgammal", scope: !335, file: !335, line: 268, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!655 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !656)
!656 = !DISubprogram(name: "trunc", scope: !335, file: !335, line: 323, type: !336, flags: DIFlagPrototyped, spFlags: 0)
!657 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !658)
!658 = !DISubprogram(name: "truncf", scope: !335, file: !335, line: 323, type: !399, flags: DIFlagPrototyped, spFlags: 0)
!659 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !660)
!660 = !DISubprogram(name: "truncl", scope: !335, file: !335, line: 323, type: !403, flags: DIFlagPrototyped, spFlags: 0)
!661 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "mbstate_t", file: !663, line: 106, baseType: !664)
!663 = !DIFile(filename: "/usr/include/wchar.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!664 = !DIDerivedType(tag: DW_TAG_typedef, name: "__mbstate_t", file: !663, line: 94, baseType: !665)
!665 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !663, line: 82, size: 64, elements: !666, identifier: "_ZTS11__mbstate_t")
!666 = !{!667, !668}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "__count", scope: !665, file: !663, line: 84, baseType: !94, size: 32)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "__value", scope: !665, file: !663, line: 93, baseType: !669, size: 32, offset: 32)
!669 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !665, file: !663, line: 85, size: 32, elements: !670, identifier: "_ZTSN11__mbstate_tUt_E")
!670 = !{!671, !672}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "__wch", scope: !669, file: !663, line: 88, baseType: !10, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "__wchb", scope: !669, file: !663, line: 92, baseType: !673, size: 32)
!673 = !DICompositeType(tag: DW_TAG_array_type, baseType: !109, size: 32, elements: !674)
!674 = !{!675}
!675 = !DISubrange(count: 4)
!676 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !677)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "wint_t", file: !124, line: 132, baseType: !10)
!678 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !679)
!679 = !DISubprogram(name: "btowc", scope: !663, file: !663, line: 356, type: !680, flags: DIFlagPrototyped, spFlags: 0)
!680 = !DISubroutineType(types: !681)
!681 = !{!677, !94}
!682 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !683)
!683 = !DISubprogram(name: "fgetwc", scope: !663, file: !663, line: 748, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!684 = !DISubroutineType(types: !685)
!685 = !{!677, !686}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__FILE", file: !688, line: 64, baseType: !689)
!688 = !DIFile(filename: "/usr/include/stdio.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_IO_FILE", file: !688, line: 44, flags: DIFlagFwdDecl, identifier: "_ZTS8_IO_FILE")
!690 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !691)
!691 = !DISubprogram(name: "fgetws", scope: !663, file: !663, line: 777, type: !692, flags: DIFlagPrototyped, spFlags: 0)
!692 = !DISubroutineType(types: !693)
!693 = !{!172, !171, !94, !694}
!694 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !686)
!695 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !696)
!696 = !DISubprogram(name: "fputwc", scope: !663, file: !663, line: 762, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!697 = !DISubroutineType(types: !698)
!698 = !{!677, !173, !686}
!699 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !700)
!700 = !DISubprogram(name: "fputws", scope: !663, file: !663, line: 784, type: !701, flags: DIFlagPrototyped, spFlags: 0)
!701 = !DISubroutineType(types: !702)
!702 = !{!94, !218, !694}
!703 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !704)
!704 = !DISubprogram(name: "fwide", scope: !663, file: !663, line: 590, type: !705, flags: DIFlagPrototyped, spFlags: 0)
!705 = !DISubroutineType(types: !706)
!706 = !{!94, !686, !94}
!707 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !708)
!708 = !DISubprogram(name: "fwprintf", scope: !663, file: !663, line: 597, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!709 = !DISubroutineType(types: !710)
!710 = !{!94, !694, !218, null}
!711 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !712)
!712 = !DISubprogram(name: "fwscanf", scope: !663, file: !663, line: 638, type: !709, flags: DIFlagPrototyped, spFlags: 0)
!713 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !714)
!714 = !DISubprogram(name: "getwc", scope: !663, file: !663, line: 749, type: !684, flags: DIFlagPrototyped, spFlags: 0)
!715 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !716)
!716 = !DISubprogram(name: "getwchar", scope: !663, file: !663, line: 755, type: !717, flags: DIFlagPrototyped, spFlags: 0)
!717 = !DISubroutineType(types: !718)
!718 = !{!677}
!719 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !720)
!720 = !DISubprogram(name: "mbrlen", scope: !663, file: !663, line: 379, type: !721, flags: DIFlagPrototyped, spFlags: 0)
!721 = !DISubroutineType(types: !722)
!722 = !{!123, !174, !123, !723}
!723 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!725 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !726)
!726 = !DISubprogram(name: "mbrtowc", scope: !663, file: !663, line: 368, type: !727, flags: DIFlagPrototyped, spFlags: 0)
!727 = !DISubroutineType(types: !728)
!728 = !{!123, !171, !174, !123, !723}
!729 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !730)
!730 = !DISubprogram(name: "mbsinit", scope: !663, file: !663, line: 364, type: !731, flags: DIFlagPrototyped, spFlags: 0)
!731 = !DISubroutineType(types: !732)
!732 = !{!94, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!735 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !736)
!736 = !DISubprogram(name: "mbsrtowcs", scope: !663, file: !663, line: 411, type: !737, flags: DIFlagPrototyped, spFlags: 0)
!737 = !DISubroutineType(types: !738)
!738 = !{!123, !171, !739, !123, !723}
!739 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!741 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !742)
!742 = !DISubprogram(name: "putwc", scope: !663, file: !663, line: 763, type: !697, flags: DIFlagPrototyped, spFlags: 0)
!743 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !744)
!744 = !DISubprogram(name: "putwchar", scope: !663, file: !663, line: 769, type: !745, flags: DIFlagPrototyped, spFlags: 0)
!745 = !DISubroutineType(types: !746)
!746 = !{!677, !173}
!747 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !748)
!748 = !DISubprogram(name: "swprintf", scope: !663, file: !663, line: 607, type: !749, flags: DIFlagPrototyped, spFlags: 0)
!749 = !DISubroutineType(types: !750)
!750 = !{!94, !171, !123, !218, null}
!751 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !752)
!752 = !DISubprogram(name: "swscanf", scope: !663, file: !663, line: 648, type: !753, flags: DIFlagPrototyped, spFlags: 0)
!753 = !DISubroutineType(types: !754)
!754 = !{!94, !218, !218, null}
!755 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !756)
!756 = !DISubprogram(name: "ungetwc", scope: !663, file: !663, line: 792, type: !757, flags: DIFlagPrototyped, spFlags: 0)
!757 = !DISubroutineType(types: !758)
!758 = !{!677, !677, !686}
!759 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !760)
!760 = !DISubprogram(name: "vfwprintf", scope: !663, file: !663, line: 615, type: !761, flags: DIFlagPrototyped, spFlags: 0)
!761 = !DISubroutineType(types: !762)
!762 = !{!94, !694, !218, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !2, size: 192, elements: !765, identifier: "_ZTS13__va_list_tag")
!765 = !{!766, !767, !768, !769}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !764, file: !2, baseType: !10, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !764, file: !2, baseType: !10, size: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !764, file: !2, baseType: !122, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !764, file: !2, baseType: !122, size: 64, offset: 128)
!770 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !771)
!771 = !DISubprogram(name: "vfwscanf", scope: !663, file: !663, line: 692, type: !761, flags: DIFlagPrototyped, spFlags: 0)
!772 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !773)
!773 = !DISubprogram(name: "vswprintf", scope: !663, file: !663, line: 628, type: !774, flags: DIFlagPrototyped, spFlags: 0)
!774 = !DISubroutineType(types: !775)
!775 = !{!94, !171, !123, !218, !763}
!776 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !777)
!777 = !DISubprogram(name: "vswscanf", scope: !663, file: !663, line: 704, type: !778, flags: DIFlagPrototyped, spFlags: 0)
!778 = !DISubroutineType(types: !779)
!779 = !{!94, !218, !218, !763}
!780 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !781)
!781 = !DISubprogram(name: "vwprintf", scope: !663, file: !663, line: 623, type: !782, flags: DIFlagPrototyped, spFlags: 0)
!782 = !DISubroutineType(types: !783)
!783 = !{!94, !218, !763}
!784 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !785)
!785 = !DISubprogram(name: "vwscanf", scope: !663, file: !663, line: 700, type: !782, flags: DIFlagPrototyped, spFlags: 0)
!786 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !787)
!787 = !DISubprogram(name: "wcrtomb", scope: !663, file: !663, line: 373, type: !788, flags: DIFlagPrototyped, spFlags: 0)
!788 = !DISubroutineType(types: !789)
!789 = !{!123, !217, !173, !723}
!790 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !791)
!791 = !DISubprogram(name: "wcscat", scope: !663, file: !663, line: 157, type: !792, flags: DIFlagPrototyped, spFlags: 0)
!792 = !DISubroutineType(types: !793)
!793 = !{!172, !171, !218}
!794 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !795)
!795 = !DISubprogram(name: "wcscmp", scope: !663, file: !663, line: 166, type: !796, flags: DIFlagPrototyped, spFlags: 0)
!796 = !DISubroutineType(types: !797)
!797 = !{!94, !219, !219}
!798 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !799)
!799 = !DISubprogram(name: "wcscoll", scope: !663, file: !663, line: 195, type: !796, flags: DIFlagPrototyped, spFlags: 0)
!800 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !801)
!801 = !DISubprogram(name: "wcscpy", scope: !663, file: !663, line: 147, type: !792, flags: DIFlagPrototyped, spFlags: 0)
!802 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !803)
!803 = !DISubprogram(name: "wcscspn", scope: !663, file: !663, line: 255, type: !804, flags: DIFlagPrototyped, spFlags: 0)
!804 = !DISubroutineType(types: !805)
!805 = !{!123, !219, !219}
!806 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !807)
!807 = !DISubprogram(name: "wcsftime", scope: !663, file: !663, line: 858, type: !808, flags: DIFlagPrototyped, spFlags: 0)
!808 = !DISubroutineType(types: !809)
!809 = !{!123, !171, !123, !218, !810}
!810 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !811)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !813)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tm", file: !663, line: 137, flags: DIFlagFwdDecl, identifier: "_ZTS2tm")
!814 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !815)
!815 = !DISubprogram(name: "wcslen", scope: !663, file: !663, line: 290, type: !816, flags: DIFlagPrototyped, spFlags: 0)
!816 = !DISubroutineType(types: !817)
!817 = !{!123, !219}
!818 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !819)
!819 = !DISubprogram(name: "wcsncat", scope: !663, file: !663, line: 161, type: !820, flags: DIFlagPrototyped, spFlags: 0)
!820 = !DISubroutineType(types: !821)
!821 = !{!172, !171, !218, !123}
!822 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !823)
!823 = !DISubprogram(name: "wcsncmp", scope: !663, file: !663, line: 169, type: !824, flags: DIFlagPrototyped, spFlags: 0)
!824 = !DISubroutineType(types: !825)
!825 = !{!94, !219, !219, !123}
!826 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !827)
!827 = !DISubprogram(name: "wcsncpy", scope: !663, file: !663, line: 152, type: !820, flags: DIFlagPrototyped, spFlags: 0)
!828 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !829)
!829 = !DISubprogram(name: "wcsrtombs", scope: !663, file: !663, line: 417, type: !830, flags: DIFlagPrototyped, spFlags: 0)
!830 = !DISubroutineType(types: !831)
!831 = !{!123, !217, !832, !123, !723}
!832 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !833)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!834 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !835)
!835 = !DISubprogram(name: "wcsspn", scope: !663, file: !663, line: 259, type: !804, flags: DIFlagPrototyped, spFlags: 0)
!836 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !837)
!837 = !DISubprogram(name: "wcstod", scope: !663, file: !663, line: 453, type: !838, flags: DIFlagPrototyped, spFlags: 0)
!838 = !DISubroutineType(types: !839)
!839 = !{!106, !218, !840}
!840 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !841)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!842 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !843)
!843 = !DISubprogram(name: "wcstof", scope: !663, file: !663, line: 460, type: !844, flags: DIFlagPrototyped, spFlags: 0)
!844 = !DISubroutineType(types: !845)
!845 = !{!260, !218, !840}
!846 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !847)
!847 = !DISubprogram(name: "wcstok", scope: !663, file: !663, line: 285, type: !848, flags: DIFlagPrototyped, spFlags: 0)
!848 = !DISubroutineType(types: !849)
!849 = !{!172, !171, !218, !840}
!850 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !851)
!851 = !DISubprogram(name: "wcstol", scope: !663, file: !663, line: 471, type: !852, flags: DIFlagPrototyped, spFlags: 0)
!852 = !DISubroutineType(types: !853)
!853 = !{!84, !218, !840, !94}
!854 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !855)
!855 = !DISubprogram(name: "wcstoul", scope: !663, file: !663, line: 476, type: !856, flags: DIFlagPrototyped, spFlags: 0)
!856 = !DISubroutineType(types: !857)
!857 = !{!125, !218, !840, !94}
!858 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !859)
!859 = !DISubprogram(name: "wcsxfrm", scope: !663, file: !663, line: 199, type: !860, flags: DIFlagPrototyped, spFlags: 0)
!860 = !DISubroutineType(types: !861)
!861 = !{!123, !171, !218, !123}
!862 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !863)
!863 = !DISubprogram(name: "wctob", scope: !663, file: !663, line: 360, type: !864, flags: DIFlagPrototyped, spFlags: 0)
!864 = !DISubroutineType(types: !865)
!865 = !{!94, !677}
!866 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !867)
!867 = !DISubprogram(name: "wmemcmp", scope: !663, file: !663, line: 328, type: !824, flags: DIFlagPrototyped, spFlags: 0)
!868 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !869)
!869 = !DISubprogram(name: "wmemcpy", scope: !663, file: !663, line: 332, type: !820, flags: DIFlagPrototyped, spFlags: 0)
!870 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !871)
!871 = !DISubprogram(name: "wmemmove", scope: !663, file: !663, line: 337, type: !872, flags: DIFlagPrototyped, spFlags: 0)
!872 = !DISubroutineType(types: !873)
!873 = !{!172, !172, !219, !123}
!874 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !875)
!875 = !DISubprogram(name: "wmemset", scope: !663, file: !663, line: 341, type: !876, flags: DIFlagPrototyped, spFlags: 0)
!876 = !DISubroutineType(types: !877)
!877 = !{!172, !172, !173, !123}
!878 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !879)
!879 = !DISubprogram(name: "wprintf", scope: !663, file: !663, line: 604, type: !880, flags: DIFlagPrototyped, spFlags: 0)
!880 = !DISubroutineType(types: !881)
!881 = !{!94, !218, null}
!882 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !883)
!883 = !DISubprogram(name: "wscanf", scope: !663, file: !663, line: 645, type: !880, flags: DIFlagPrototyped, spFlags: 0)
!884 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !885)
!885 = !DISubprogram(name: "wcschr", scope: !663, file: !663, line: 230, type: !886, flags: DIFlagPrototyped, spFlags: 0)
!886 = !DISubroutineType(types: !887)
!887 = !{!172, !219, !173}
!888 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !889)
!889 = !DISubprogram(name: "wcspbrk", scope: !663, file: !663, line: 269, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!890 = !DISubroutineType(types: !891)
!891 = !{!172, !219, !219}
!892 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !893)
!893 = !DISubprogram(name: "wcsrchr", scope: !663, file: !663, line: 240, type: !886, flags: DIFlagPrototyped, spFlags: 0)
!894 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !895)
!895 = !DISubprogram(name: "wcsstr", scope: !663, file: !663, line: 280, type: !890, flags: DIFlagPrototyped, spFlags: 0)
!896 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !897)
!897 = !DISubprogram(name: "wmemchr", scope: !663, file: !663, line: 323, type: !898, flags: DIFlagPrototyped, spFlags: 0)
!898 = !DISubroutineType(types: !899)
!899 = !{!172, !219, !173, !123}
!900 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !901)
!901 = !DISubprogram(name: "wcstold", scope: !663, file: !663, line: 462, type: !902, flags: DIFlagPrototyped, spFlags: 0)
!902 = !DISubroutineType(types: !903)
!903 = !{!265, !218, !840}
!904 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !905)
!905 = !DISubprogram(name: "wcstoll", scope: !663, file: !663, line: 486, type: !906, flags: DIFlagPrototyped, spFlags: 0)
!906 = !DISubroutineType(types: !907)
!907 = !{!231, !218, !840, !94}
!908 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !909)
!909 = !DISubprogram(name: "wcstoull", scope: !663, file: !663, line: 493, type: !910, flags: DIFlagPrototyped, spFlags: 0)
!910 = !DISubroutineType(types: !911)
!911 = !{!255, !218, !840, !94}
!912 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !901)
!913 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !905)
!914 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !909)
!915 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "int8_t", file: !917, line: 194, baseType: !918)
!917 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/sys/types.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!918 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!919 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !920)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "int16_t", file: !917, line: 195, baseType: !921)
!921 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!922 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !923)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "int32_t", file: !917, line: 196, baseType: !94)
!924 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !925)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "int64_t", file: !917, line: 197, baseType: !84)
!926 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !927)
!927 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast8_t", file: !9, line: 245, baseType: !916)
!928 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !929)
!929 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast16_t", file: !9, line: 228, baseType: !920)
!930 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !931)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast32_t", file: !9, line: 197, baseType: !923)
!932 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !933)
!933 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_fast64_t", file: !9, line: 123, baseType: !925)
!934 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !935)
!935 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least8_t", file: !9, line: 243, baseType: !916)
!936 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !937)
!937 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least16_t", file: !9, line: 226, baseType: !920)
!938 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !939)
!939 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least32_t", file: !9, line: 195, baseType: !923)
!940 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !941)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "int_least64_t", file: !9, line: 121, baseType: !925)
!942 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !943)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "intmax_t", file: !9, line: 276, baseType: !84)
!944 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !945)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "intptr_t", file: !9, line: 263, baseType: !925)
!946 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !62)
!947 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !28)
!948 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !8)
!949 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !950)
!950 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !9, line: 109, baseType: !125)
!951 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !952)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast8_t", file: !9, line: 246, baseType: !62)
!953 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !954)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast16_t", file: !9, line: 229, baseType: !28)
!955 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !956)
!956 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast32_t", file: !9, line: 198, baseType: !8)
!957 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !958)
!958 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_fast64_t", file: !9, line: 124, baseType: !950)
!959 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !960)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least8_t", file: !9, line: 244, baseType: !62)
!961 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !962)
!962 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least16_t", file: !9, line: 227, baseType: !28)
!963 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !964)
!964 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least32_t", file: !9, line: 196, baseType: !8)
!965 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !966)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint_least64_t", file: !9, line: 122, baseType: !950)
!967 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !968)
!968 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintmax_t", file: !9, line: 277, baseType: !125)
!969 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !970)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "uintptr_t", file: !9, line: 270, baseType: !950)
!971 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", scope: !74, file: !306, line: 196, baseType: !125)
!973 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !974)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "ptrdiff_t", scope: !74, file: !306, line: 197, baseType: !84)
!975 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !976)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lconv", file: !977, line: 53, flags: DIFlagFwdDecl, identifier: "_ZTS5lconv")
!977 = !DIFile(filename: "/usr/include/locale.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!978 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !979)
!979 = !DISubprogram(name: "setlocale", scope: !977, file: !977, line: 124, type: !980, flags: DIFlagPrototyped, spFlags: 0)
!980 = !DISubroutineType(types: !981)
!981 = !{!150, !94, !107}
!982 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !983)
!983 = !DISubprogram(name: "localeconv", scope: !977, file: !977, line: 127, type: !984, flags: DIFlagPrototyped, spFlags: 0)
!984 = !DISubroutineType(types: !985)
!985 = !{!986}
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!987 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !988)
!988 = !DISubprogram(name: "isalnum", scope: !989, file: !989, line: 110, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!989 = !DIFile(filename: "/usr/include/ctype.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!990 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !991)
!991 = !DISubprogram(name: "isalpha", scope: !989, file: !989, line: 111, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!992 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !993)
!993 = !DISubprogram(name: "iscntrl", scope: !989, file: !989, line: 112, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!994 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !995)
!995 = !DISubprogram(name: "isdigit", scope: !989, file: !989, line: 113, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!996 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !997)
!997 = !DISubprogram(name: "isgraph", scope: !989, file: !989, line: 115, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!998 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !999)
!999 = !DISubprogram(name: "islower", scope: !989, file: !989, line: 114, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1000 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1001)
!1001 = !DISubprogram(name: "isprint", scope: !989, file: !989, line: 116, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1002 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1003)
!1003 = !DISubprogram(name: "ispunct", scope: !989, file: !989, line: 117, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1004 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1005)
!1005 = !DISubprogram(name: "isspace", scope: !989, file: !989, line: 118, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1006 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1007)
!1007 = !DISubprogram(name: "isupper", scope: !989, file: !989, line: 119, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1008 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1009)
!1009 = !DISubprogram(name: "isxdigit", scope: !989, file: !989, line: 120, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1010 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1011)
!1011 = !DISubprogram(name: "tolower", scope: !989, file: !989, line: 124, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1012 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1013)
!1013 = !DISubprogram(name: "toupper", scope: !989, file: !989, line: 127, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1014 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1015)
!1015 = !DISubprogram(name: "isblank", scope: !989, file: !989, line: 136, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1016 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1017)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "FILE", file: !688, line: 48, baseType: !689)
!1018 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1019)
!1019 = !DIDerivedType(tag: DW_TAG_typedef, name: "fpos_t", file: !688, line: 110, baseType: !1020)
!1020 = !DIDerivedType(tag: DW_TAG_typedef, name: "_G_fpos_t", file: !1021, line: 25, baseType: !1022)
!1021 = !DIFile(filename: "/usr/include/_G_config.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1021, line: 21, flags: DIFlagFwdDecl, identifier: "_ZTS9_G_fpos_t")
!1023 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1024)
!1024 = !DISubprogram(name: "clearerr", scope: !688, file: !688, line: 826, type: !1025, flags: DIFlagPrototyped, spFlags: 0)
!1025 = !DISubroutineType(types: !1026)
!1026 = !{null, !1027}
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1028 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1029)
!1029 = !DISubprogram(name: "fclose", scope: !688, file: !688, line: 237, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!94, !1027}
!1032 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1033)
!1033 = !DISubprogram(name: "feof", scope: !688, file: !688, line: 828, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1034 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1035)
!1035 = !DISubprogram(name: "ferror", scope: !688, file: !688, line: 830, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1036 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1037)
!1037 = !DISubprogram(name: "fflush", scope: !688, file: !688, line: 242, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1038 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1039)
!1039 = !DISubprogram(name: "fgetc", scope: !688, file: !688, line: 531, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1040 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1041)
!1041 = !DISubprogram(name: "fgetpos", scope: !688, file: !688, line: 798, type: !1042, flags: DIFlagPrototyped, spFlags: 0)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!94, !1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1027)
!1045 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !1046)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1047 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1048)
!1048 = !DISubprogram(name: "fgets", scope: !688, file: !688, line: 622, type: !1049, flags: DIFlagPrototyped, spFlags: 0)
!1049 = !DISubroutineType(types: !1050)
!1050 = !{!150, !217, !94, !1044}
!1051 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1052)
!1052 = !DISubprogram(name: "fopen", scope: !688, file: !688, line: 272, type: !1053, flags: DIFlagPrototyped, spFlags: 0)
!1053 = !DISubroutineType(types: !1054)
!1054 = !{!1027, !174, !174}
!1055 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1056)
!1056 = !DISubprogram(name: "fprintf", scope: !688, file: !688, line: 356, type: !1057, flags: DIFlagPrototyped, spFlags: 0)
!1057 = !DISubroutineType(types: !1058)
!1058 = !{!94, !1044, !174, null}
!1059 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1060)
!1060 = !DISubprogram(name: "fputc", scope: !688, file: !688, line: 573, type: !1061, flags: DIFlagPrototyped, spFlags: 0)
!1061 = !DISubroutineType(types: !1062)
!1062 = !{!94, !94, !1027}
!1063 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1064)
!1064 = !DISubprogram(name: "fputs", scope: !688, file: !688, line: 689, type: !1065, flags: DIFlagPrototyped, spFlags: 0)
!1065 = !DISubroutineType(types: !1066)
!1066 = !{!94, !174, !1044}
!1067 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1068)
!1068 = !DISubprogram(name: "fread", scope: !688, file: !688, line: 709, type: !1069, flags: DIFlagPrototyped, spFlags: 0)
!1069 = !DISubroutineType(types: !1070)
!1070 = !{!123, !1071, !123, !123, !1044}
!1071 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!1072 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1073)
!1073 = !DISubprogram(name: "freopen", scope: !688, file: !688, line: 278, type: !1074, flags: DIFlagPrototyped, spFlags: 0)
!1074 = !DISubroutineType(types: !1075)
!1075 = !{!1027, !174, !174, !1044}
!1076 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1077)
!1077 = !DISubprogram(name: "fscanf", scope: !688, file: !688, line: 425, type: !1057, flags: DIFlagPrototyped, spFlags: 0)
!1078 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1079)
!1079 = !DISubprogram(name: "fseek", scope: !688, file: !688, line: 749, type: !1080, flags: DIFlagPrototyped, spFlags: 0)
!1080 = !DISubroutineType(types: !1081)
!1081 = !{!94, !1027, !84, !94}
!1082 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1083)
!1083 = !DISubprogram(name: "fsetpos", scope: !688, file: !688, line: 803, type: !1084, flags: DIFlagPrototyped, spFlags: 0)
!1084 = !DISubroutineType(types: !1085)
!1085 = !{!94, !1027, !1086}
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1019)
!1088 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1089)
!1089 = !DISubprogram(name: "ftell", scope: !688, file: !688, line: 754, type: !1090, flags: DIFlagPrototyped, spFlags: 0)
!1090 = !DISubroutineType(types: !1091)
!1091 = !{!84, !1027}
!1092 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1093)
!1093 = !DISubprogram(name: "fwrite", scope: !688, file: !688, line: 715, type: !1094, flags: DIFlagPrototyped, spFlags: 0)
!1094 = !DISubroutineType(types: !1095)
!1095 = !{!123, !1096, !123, !123, !1044}
!1096 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!1097 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1098)
!1098 = !DISubprogram(name: "getc", scope: !688, file: !688, line: 532, type: !1030, flags: DIFlagPrototyped, spFlags: 0)
!1099 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1100)
!1100 = !DISubprogram(name: "getchar", scope: !688, file: !688, line: 538, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!1101 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1102)
!1102 = !DISubprogram(name: "gets", scope: !688, file: !688, line: 638, type: !1103, flags: DIFlagPrototyped, spFlags: 0)
!1103 = !DISubroutineType(types: !1104)
!1104 = !{!150, !150}
!1105 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1106)
!1106 = !DISubprogram(name: "perror", scope: !688, file: !688, line: 846, type: !1107, flags: DIFlagPrototyped, spFlags: 0)
!1107 = !DISubroutineType(types: !1108)
!1108 = !{null, !107}
!1109 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1110)
!1110 = !DISubprogram(name: "printf", scope: !688, file: !688, line: 362, type: !1111, flags: DIFlagPrototyped, spFlags: 0)
!1111 = !DISubroutineType(types: !1112)
!1112 = !{!94, !174, null}
!1113 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1114)
!1114 = !DISubprogram(name: "putc", scope: !688, file: !688, line: 574, type: !1061, flags: DIFlagPrototyped, spFlags: 0)
!1115 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1116)
!1116 = !DISubprogram(name: "putchar", scope: !688, file: !688, line: 580, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1117 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1118)
!1118 = !DISubprogram(name: "puts", scope: !688, file: !688, line: 695, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!1119 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1120)
!1120 = !DISubprogram(name: "remove", scope: !688, file: !688, line: 178, type: !112, flags: DIFlagPrototyped, spFlags: 0)
!1121 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1122)
!1122 = !DISubprogram(name: "rename", scope: !688, file: !688, line: 180, type: !1123, flags: DIFlagPrototyped, spFlags: 0)
!1123 = !DISubroutineType(types: !1124)
!1124 = !{!94, !107, !107}
!1125 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1126)
!1126 = !DISubprogram(name: "rewind", scope: !688, file: !688, line: 759, type: !1025, flags: DIFlagPrototyped, spFlags: 0)
!1127 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1128)
!1128 = !DISubprogram(name: "scanf", scope: !688, file: !688, line: 431, type: !1111, flags: DIFlagPrototyped, spFlags: 0)
!1129 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1130)
!1130 = !DISubprogram(name: "setbuf", scope: !688, file: !688, line: 332, type: !1131, flags: DIFlagPrototyped, spFlags: 0)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !1044, !217}
!1133 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1134)
!1134 = !DISubprogram(name: "setvbuf", scope: !688, file: !688, line: 336, type: !1135, flags: DIFlagPrototyped, spFlags: 0)
!1135 = !DISubroutineType(types: !1136)
!1136 = !{!94, !1044, !217, !94, !123}
!1137 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1138)
!1138 = !DISubprogram(name: "sprintf", scope: !688, file: !688, line: 364, type: !1139, flags: DIFlagPrototyped, spFlags: 0)
!1139 = !DISubroutineType(types: !1140)
!1140 = !{!94, !217, !174, null}
!1141 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1142)
!1142 = !DISubprogram(name: "sscanf", scope: !688, file: !688, line: 433, type: !1143, flags: DIFlagPrototyped, spFlags: 0)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{!94, !174, !174, null}
!1145 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1146)
!1146 = !DISubprogram(name: "tmpfile", scope: !688, file: !688, line: 195, type: !1147, flags: DIFlagPrototyped, spFlags: 0)
!1147 = !DISubroutineType(types: !1148)
!1148 = !{!1027}
!1149 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1150)
!1150 = !DISubprogram(name: "tmpnam", scope: !688, file: !688, line: 209, type: !1103, flags: DIFlagPrototyped, spFlags: 0)
!1151 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1152)
!1152 = !DISubprogram(name: "ungetc", scope: !688, file: !688, line: 702, type: !1061, flags: DIFlagPrototyped, spFlags: 0)
!1153 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1154)
!1154 = !DISubprogram(name: "vfprintf", scope: !688, file: !688, line: 371, type: !1155, flags: DIFlagPrototyped, spFlags: 0)
!1155 = !DISubroutineType(types: !1156)
!1156 = !{!94, !1044, !174, !763}
!1157 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1158)
!1158 = !DISubprogram(name: "vprintf", scope: !688, file: !688, line: 377, type: !1159, flags: DIFlagPrototyped, spFlags: 0)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{!94, !174, !763}
!1161 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1162)
!1162 = !DISubprogram(name: "vsprintf", scope: !688, file: !688, line: 379, type: !1163, flags: DIFlagPrototyped, spFlags: 0)
!1163 = !DISubroutineType(types: !1164)
!1164 = !{!94, !217, !174, !763}
!1165 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !1166)
!1166 = !DISubprogram(name: "snprintf", scope: !688, file: !688, line: 386, type: !1167, flags: DIFlagPrototyped, spFlags: 0)
!1167 = !DISubroutineType(types: !1168)
!1168 = !{!94, !217, !123, !174, null}
!1169 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !1170)
!1170 = !DISubprogram(name: "vfscanf", scope: !688, file: !688, line: 471, type: !1155, flags: DIFlagPrototyped, spFlags: 0)
!1171 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !1172)
!1172 = !DISubprogram(name: "vscanf", scope: !688, file: !688, line: 479, type: !1159, flags: DIFlagPrototyped, spFlags: 0)
!1173 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !1174)
!1174 = !DISubprogram(name: "vsnprintf", scope: !688, file: !688, line: 390, type: !1175, flags: DIFlagPrototyped, spFlags: 0)
!1175 = !DISubroutineType(types: !1176)
!1176 = !{!94, !217, !123, !174, !763}
!1177 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !226, entity: !1178)
!1178 = !DISubprogram(name: "vsscanf", scope: !688, file: !688, line: 483, type: !1179, flags: DIFlagPrototyped, spFlags: 0)
!1179 = !DISubroutineType(types: !1180)
!1180 = !{!94, !174, !174, !763}
!1181 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1166)
!1182 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1170)
!1183 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1172)
!1184 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1174)
!1185 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1178)
!1186 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1187)
!1187 = !DIDerivedType(tag: DW_TAG_typedef, name: "fenv_t", file: !1188, line: 94, baseType: !1189)
!1188 = !DIFile(filename: "/usr/include/x86_64-linux-gnu/bits/fenv.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!1189 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1188, line: 75, flags: DIFlagFwdDecl, identifier: "_ZTS6fenv_t")
!1190 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1191)
!1191 = !DIDerivedType(tag: DW_TAG_typedef, name: "fexcept_t", file: !1188, line: 68, baseType: !29)
!1192 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1193)
!1193 = !DISubprogram(name: "feclearexcept", scope: !1194, file: !1194, line: 64, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1194 = !DIFile(filename: "/usr/include/fenv.h", directory: "/home/douze/remill/remill-build/remill/Arch/X86/Runtime")
!1195 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1196)
!1196 = !DISubprogram(name: "fegetexceptflag", scope: !1194, file: !1194, line: 68, type: !1197, flags: DIFlagPrototyped, spFlags: 0)
!1197 = !DISubroutineType(types: !1198)
!1198 = !{!94, !1199, !94}
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1200 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1201)
!1201 = !DISubprogram(name: "feraiseexcept", scope: !1194, file: !1194, line: 71, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1202 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1203)
!1203 = !DISubprogram(name: "fesetexceptflag", scope: !1194, file: !1194, line: 75, type: !1204, flags: DIFlagPrototyped, spFlags: 0)
!1204 = !DISubroutineType(types: !1205)
!1205 = !{!94, !1206, !94}
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1191)
!1208 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1209)
!1209 = !DISubprogram(name: "fetestexcept", scope: !1194, file: !1194, line: 79, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1210 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1211)
!1211 = !DISubprogram(name: "fegetround", scope: !1194, file: !1194, line: 85, type: !187, flags: DIFlagPrototyped, spFlags: 0)
!1212 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1213)
!1213 = !DISubprogram(name: "fesetround", scope: !1194, file: !1194, line: 88, type: !92, flags: DIFlagPrototyped, spFlags: 0)
!1214 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1215)
!1215 = !DISubprogram(name: "fegetenv", scope: !1194, file: !1194, line: 95, type: !1216, flags: DIFlagPrototyped, spFlags: 0)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{!94, !1218}
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1219 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1220)
!1220 = !DISubprogram(name: "feholdexcept", scope: !1194, file: !1194, line: 100, type: !1216, flags: DIFlagPrototyped, spFlags: 0)
!1221 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1222)
!1222 = !DISubprogram(name: "fesetenv", scope: !1194, file: !1194, line: 104, type: !1223, flags: DIFlagPrototyped, spFlags: 0)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!94, !1225}
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1227 = !DIImportedEntity(tag: DW_TAG_imported_declaration, scope: !74, entity: !1228)
!1228 = !DISubprogram(name: "feupdateenv", scope: !1194, file: !1194, line: 109, type: !1223, flags: DIFlagPrototyped, spFlags: 0)
!1229 = !{i32 2, !"Dwarf Version", i32 4}
!1230 = !{i32 2, !"Debug Info Version", i32 3}
!1231 = !{!1232, !1232, i64 0}
!1232 = !{!"long", !1233, i64 0}
!1233 = !{!"omnipotent char", !1234, i64 0}
!1234 = !{!"Simple C++ TBAA"}
!1235 = !{!1236, !1233, i64 2065}
!1236 = !{!"_ZTS5State", !1233, i64 16, !1237, i64 2064, !1233, i64 2080, !1238, i64 2088, !1240, i64 2112, !1242, i64 2208, !1243, i64 2480, !1244, i64 2608, !1245, i64 2736, !1233, i64 2760, !1233, i64 2768, !1246, i64 3280}
!1237 = !{!"_ZTS10ArithFlags", !1233, i64 0, !1233, i64 1, !1233, i64 2, !1233, i64 3, !1233, i64 4, !1233, i64 5, !1233, i64 6, !1233, i64 7, !1233, i64 8, !1233, i64 9, !1233, i64 10, !1233, i64 11, !1233, i64 12, !1233, i64 13, !1233, i64 14, !1233, i64 15}
!1238 = !{!"_ZTS8Segments", !1239, i64 0, !1233, i64 2, !1239, i64 4, !1233, i64 6, !1239, i64 8, !1233, i64 10, !1239, i64 12, !1233, i64 14, !1239, i64 16, !1233, i64 18, !1239, i64 20, !1233, i64 22}
!1239 = !{!"short", !1233, i64 0}
!1240 = !{!"_ZTS12AddressSpace", !1232, i64 0, !1241, i64 8, !1232, i64 16, !1241, i64 24, !1232, i64 32, !1241, i64 40, !1232, i64 48, !1241, i64 56, !1232, i64 64, !1241, i64 72, !1232, i64 80, !1241, i64 88}
!1241 = !{!"_ZTS3Reg", !1233, i64 0}
!1242 = !{!"_ZTS3GPR", !1232, i64 0, !1241, i64 8, !1232, i64 16, !1241, i64 24, !1232, i64 32, !1241, i64 40, !1232, i64 48, !1241, i64 56, !1232, i64 64, !1241, i64 72, !1232, i64 80, !1241, i64 88, !1232, i64 96, !1241, i64 104, !1232, i64 112, !1241, i64 120, !1232, i64 128, !1241, i64 136, !1232, i64 144, !1241, i64 152, !1232, i64 160, !1241, i64 168, !1232, i64 176, !1241, i64 184, !1232, i64 192, !1241, i64 200, !1232, i64 208, !1241, i64 216, !1232, i64 224, !1241, i64 232, !1232, i64 240, !1241, i64 248, !1232, i64 256, !1241, i64 264}
!1243 = !{!"_ZTS8X87Stack", !1233, i64 0}
!1244 = !{!"_ZTS3MMX", !1233, i64 0}
!1245 = !{!"_ZTS14FPUStatusFlags", !1233, i64 0, !1233, i64 1, !1233, i64 2, !1233, i64 3, !1233, i64 4, !1233, i64 5, !1233, i64 6, !1233, i64 7, !1233, i64 8, !1233, i64 9, !1233, i64 10, !1233, i64 11, !1233, i64 12, !1233, i64 13, !1233, i64 14, !1233, i64 15, !1233, i64 16, !1233, i64 17, !1233, i64 18, !1233, i64 19, !1233, i64 20}
!1246 = !{!"_ZTS13SegmentCaches", !1247, i64 0, !1247, i64 16, !1247, i64 32, !1247, i64 48, !1247, i64 64, !1247, i64 80}
!1247 = !{!"_ZTS13SegmentShadow", !1233, i64 0, !1248, i64 8, !1248, i64 12}
!1248 = !{!"int", !1233, i64 0}
!1249 = !{!1236, !1233, i64 2067}
!1250 = !{!1236, !1233, i64 2071}
!1251 = !{!1236, !1233, i64 2073}
!1252 = !{!1236, !1233, i64 2077}
!1253 = !{!1236, !1233, i64 2069}
!1254 = !{!1255}
!1255 = distinct !{!1255, !1256, !"ext_6021a0___libc_start_main: argument 0"}
!1256 = distinct !{!1256, !"ext_6021a0___libc_start_main"}
!1257 = !{!1258}
!1258 = distinct !{!1258, !1256, !"ext_6021a0___libc_start_main: argument 1"}
!1259 = !{!1233, !1233, i64 0}
!1260 = !{!1261}
!1261 = distinct !{!1261, !1262, !"ext_6021c8___cxa_allocate_exception: argument 0"}
!1262 = distinct !{!1262, !"ext_6021c8___cxa_allocate_exception"}
!1263 = !{!1264}
!1264 = distinct !{!1264, !1262, !"ext_6021c8___cxa_allocate_exception: argument 1"}
!1265 = !{!1266, !1266, i64 0}
!1266 = !{!"double", !1233, i64 0}
!1267 = !{!1268}
!1268 = distinct !{!1268, !1269, !"ext_400e00___cxa_throw: argument 0"}
!1269 = distinct !{!1269, !"ext_400e00___cxa_throw"}
!1270 = !{!1271}
!1271 = distinct !{!1271, !1269, !"ext_400e00___cxa_throw: argument 1"}
!1272 = !{!1273}
!1273 = distinct !{!1273, !1274, !"ext_400d10_printf: argument 0"}
!1274 = distinct !{!1274, !"ext_400d10_printf"}
!1275 = !{!1276}
!1276 = distinct !{!1276, !1274, !"ext_400d10_printf: argument 1"}
!1277 = !{!1278}
!1278 = distinct !{!1278, !1279, !"ext_6021c8___cxa_allocate_exception: argument 0"}
!1279 = distinct !{!1279, !"ext_6021c8___cxa_allocate_exception"}
!1280 = !{!1281}
!1281 = distinct !{!1281, !1279, !"ext_6021c8___cxa_allocate_exception: argument 1"}
!1282 = !{!1283}
!1283 = distinct !{!1283, !1284, !"ext_602218__ZNSaIcEC1Ev: argument 0"}
!1284 = distinct !{!1284, !"ext_602218__ZNSaIcEC1Ev"}
!1285 = !{!1286}
!1286 = distinct !{!1286, !1284, !"ext_602218__ZNSaIcEC1Ev: argument 1"}
!1287 = !{!1288}
!1288 = distinct !{!1288, !1289, !"ext_400e00___cxa_throw: argument 0"}
!1289 = distinct !{!1289, !"ext_400e00___cxa_throw"}
!1290 = !{!1291}
!1291 = distinct !{!1291, !1289, !"ext_400e00___cxa_throw: argument 1"}
!1292 = !{!1293}
!1293 = distinct !{!1293, !1294, !"ext_400d10_printf: argument 0"}
!1294 = distinct !{!1294, !"ext_400d10_printf"}
!1295 = !{!1296}
!1296 = distinct !{!1296, !1294, !"ext_400d10_printf: argument 1"}
!1297 = !{!1298}
!1298 = distinct !{!1298, !1299, !"ext_6021c8___cxa_allocate_exception: argument 0"}
!1299 = distinct !{!1299, !"ext_6021c8___cxa_allocate_exception"}
!1300 = !{!1301}
!1301 = distinct !{!1301, !1299, !"ext_6021c8___cxa_allocate_exception: argument 1"}
!1302 = !{!1303}
!1303 = distinct !{!1303, !1304, !"ext_602218__ZNSaIcEC1Ev: argument 0"}
!1304 = distinct !{!1304, !"ext_602218__ZNSaIcEC1Ev"}
!1305 = !{!1306}
!1306 = distinct !{!1306, !1304, !"ext_602218__ZNSaIcEC1Ev: argument 1"}
!1307 = !{!1308}
!1308 = distinct !{!1308, !1309, !"ext_400e00___cxa_throw: argument 0"}
!1309 = distinct !{!1309, !"ext_400e00___cxa_throw"}
!1310 = !{!1311}
!1311 = distinct !{!1311, !1309, !"ext_400e00___cxa_throw: argument 1"}
!1312 = !{!1313}
!1313 = distinct !{!1313, !1314, !"ext_602248___gmon_start__: argument 0"}
!1314 = distinct !{!1314, !"ext_602248___gmon_start__"}
!1315 = !{!1316}
!1316 = distinct !{!1316, !1314, !"ext_602248___gmon_start__: argument 1"}
!1317 = !{!1318, !1320}
!1318 = distinct !{!1318, !1319, !"ext_6021b0__ZSt9terminatev: argument 0"}
!1319 = distinct !{!1319, !"ext_6021b0__ZSt9terminatev"}
!1320 = distinct !{!1320, !1321, !"ext_400e30___cxa_begin_catch: argument 0"}
!1321 = distinct !{!1321, !"ext_400e30___cxa_begin_catch"}
!1322 = !{!1320}
!1323 = !{!1318}
!1324 = !{!1325}
!1325 = distinct !{!1325, !1319, !"ext_6021b0__ZSt9terminatev: argument 1"}
!1326 = !{!1327}
!1327 = distinct !{!1327, !1328, !"ext_6021b8_atoi: argument 0"}
!1328 = distinct !{!1328, !"ext_6021b8_atoi"}
!1329 = !{!1330}
!1330 = distinct !{!1330, !1328, !"ext_6021b8_atoi: argument 1"}
!1331 = !{!1332}
!1332 = distinct !{!1332, !1333, !"ext_400d10_printf: argument 0"}
!1333 = distinct !{!1333, !"ext_400d10_printf"}
!1334 = !{!1335}
!1335 = distinct !{!1335, !1333, !"ext_400d10_printf: argument 1"}
!1336 = !{!1337}
!1337 = distinct !{!1337, !1338, !"ext_400d10_printf: argument 0"}
!1338 = distinct !{!1338, !"ext_400d10_printf"}
!1339 = !{!1340}
!1340 = distinct !{!1340, !1338, !"ext_400d10_printf: argument 1"}
