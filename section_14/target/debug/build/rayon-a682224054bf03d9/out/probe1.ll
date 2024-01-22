; ModuleID = 'probe1.e5c80b9f5a0efe0a-cgu.0'
source_filename = "probe1.e5c80b9f5a0efe0a-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>" = type { %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>" }
%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>" = type { { i32, i32 }, i64, i8, [7 x i8] }

@alloc_4aead6e2018a46d0df208d5729447de7 = private unnamed_addr constant <{ [27 x i8] }> <{ [27 x i8] c"assertion failed: step != 0" }>, align 1
@alloc_a907f15ee7ac12275ebbbfdc5e185895 = private unnamed_addr constant <{ [89 x i8] }> <{ [89 x i8] c"/rustc/82e1608dfa6e0b5569232559e3d385fea5a93112/library/core/src/iter/adapters/step_by.rs" }>, align 1
@alloc_d8403c3498d107bfc1c2600decbb5365 = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_a907f15ee7ac12275ebbbfdc5e185895, [16 x i8] c"Y\00\00\00\00\00\00\00!\00\00\00\09\00\00\00" }>, align 8

; core::iter::traits::iterator::Iterator::rev
; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator3rev17hdba175a7a5e3f8a0E(ptr sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") align 8 %_0, ptr align 8 %self) unnamed_addr #0 {
start:
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %_0, ptr align 8 %self, i64 24, i1 false)
  ret void
}

; core::iter::traits::iterator::Iterator::step_by
; Function Attrs: inlinehint uwtable
define void @_ZN4core4iter6traits8iterator8Iterator7step_by17heb3023b239292692E(ptr sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") align 8 %_0, i32 %self.0, i32 %self.1, i64 %step) unnamed_addr #0 {
start:
; call core::iter::adapters::step_by::StepBy<I>::new
  call void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17hbbb531ef21b6a414E"(ptr sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") align 8 %_0, i32 %self.0, i32 %self.1, i64 %step)
  ret void
}

; core::iter::adapters::step_by::StepBy<I>::new
; Function Attrs: inlinehint uwtable
define void @"_ZN4core4iter8adapters7step_by15StepBy$LT$I$GT$3new17hbbb531ef21b6a414E"(ptr sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") align 8 %_0, i32 %iter.0, i32 %iter.1, i64 %step) unnamed_addr #0 personality ptr @rust_eh_personality {
start:
  %0 = alloca { ptr, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 1, ptr %_7, align 1
  %1 = icmp eq i64 %step, 0
  br i1 %1, label %bb2, label %bb1

bb2:                                              ; preds = %start
; invoke core::panicking::panic
  invoke void @_ZN4core9panicking5panic17h40561ff494e2b577E(ptr align 1 @alloc_4aead6e2018a46d0df208d5729447de7, i64 27, ptr align 8 @alloc_d8403c3498d107bfc1c2600decbb5365) #4
          to label %unreachable unwind label %cleanup

bb1:                                              ; preds = %start
  store i8 0, ptr %_7, align 1
; invoke <T as core::iter::adapters::step_by::SpecRangeSetup<T>>::setup
  %2 = invoke { i32, i32 } @"_ZN76_$LT$T$u20$as$u20$core..iter..adapters..step_by..SpecRangeSetup$LT$T$GT$$GT$5setup17heaad9abf591a5b7aE"(i32 %iter.0, i32 %iter.1, i64 %step)
          to label %bb3 unwind label %cleanup

bb6:                                              ; preds = %cleanup
  %3 = load i8, ptr %_7, align 1, !range !2, !noundef !3
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb5, label %bb4

cleanup:                                          ; preds = %bb1, %bb2
  %5 = landingpad { ptr, i32 }
          cleanup
  %6 = extractvalue { ptr, i32 } %5, 0
  %7 = extractvalue { ptr, i32 } %5, 1
  %8 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 0
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  store i32 %7, ptr %9, align 8
  br label %bb6

unreachable:                                      ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb1
  %iter.01 = extractvalue { i32, i32 } %2, 0
  %iter.12 = extractvalue { i32, i32 } %2, 1
  %_6 = sub i64 %step, 1
  %10 = getelementptr inbounds { i32, i32 }, ptr %_0, i32 0, i32 0
  store i32 %iter.01, ptr %10, align 8
  %11 = getelementptr inbounds { i32, i32 }, ptr %_0, i32 0, i32 1
  store i32 %iter.12, ptr %11, align 4
  %12 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", ptr %_0, i32 0, i32 1
  store i64 %_6, ptr %12, align 8
  %13 = getelementptr inbounds %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", ptr %_0, i32 0, i32 2
  store i8 1, ptr %13, align 8
  ret void

bb4:                                              ; preds = %bb5, %bb6
  %14 = load ptr, ptr %0, align 8, !noundef !3
  %15 = getelementptr inbounds { ptr, i32 }, ptr %0, i32 0, i32 1
  %16 = load i32, ptr %15, align 8, !noundef !3
  %17 = insertvalue { ptr, i32 } poison, ptr %14, 0
  %18 = insertvalue { ptr, i32 } %17, i32 %16, 1
  resume { ptr, i32 } %18

bb5:                                              ; preds = %bb6
  br label %bb4
}

; <T as core::iter::adapters::step_by::SpecRangeSetup<T>>::setup
; Function Attrs: inlinehint uwtable
define { i32, i32 } @"_ZN76_$LT$T$u20$as$u20$core..iter..adapters..step_by..SpecRangeSetup$LT$T$GT$$GT$5setup17heaad9abf591a5b7aE"(i32 %inner.0, i32 %inner.1, i64 %_step) unnamed_addr #0 {
start:
  %0 = insertvalue { i32, i32 } poison, i32 %inner.0, 0
  %1 = insertvalue { i32, i32 } %0, i32 %inner.1, 1
  ret { i32, i32 } %1
}

; probe1::probe
; Function Attrs: uwtable
define void @_ZN6probe15probe17h2fc149f31f20cb85E() unnamed_addr #1 {
start:
  %_3 = alloca { i32, i32 }, align 4
  %_2 = alloca %"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>", align 8
  %_1 = alloca %"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>", align 8
  store i32 0, ptr %_3, align 4
  %0 = getelementptr inbounds { i32, i32 }, ptr %_3, i32 0, i32 1
  store i32 10, ptr %0, align 4
  %1 = getelementptr inbounds { i32, i32 }, ptr %_3, i32 0, i32 0
  %2 = load i32, ptr %1, align 4, !noundef !3
  %3 = getelementptr inbounds { i32, i32 }, ptr %_3, i32 0, i32 1
  %4 = load i32, ptr %3, align 4, !noundef !3
; call core::iter::traits::iterator::Iterator::step_by
  call void @_ZN4core4iter6traits8iterator8Iterator7step_by17heb3023b239292692E(ptr sret(%"core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>") align 8 %_2, i32 %2, i32 %4, i64 2)
; call core::iter::traits::iterator::Iterator::rev
  call void @_ZN4core4iter6traits8iterator8Iterator3rev17hdba175a7a5e3f8a0E(ptr sret(%"core::iter::adapters::rev::Rev<core::iter::adapters::step_by::StepBy<core::ops::range::Range<i32>>>") align 8 %_1, ptr align 8 %_2)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: uwtable
declare i32 @rust_eh_personality(i32, i32, i64, ptr, ptr) unnamed_addr #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h40561ff494e2b577E(ptr align 1, i64, ptr align 8) unnamed_addr #3

attributes #0 = { inlinehint uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.75.0 (82e1608df 2023-12-21)"}
!2 = !{i8 0, i8 2}
!3 = !{}
