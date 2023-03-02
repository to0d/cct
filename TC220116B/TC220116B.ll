; ModuleID = 'TC220116B.cpp'
source_filename = "TC220116B.cpp"
target datalayout = "E-m:a-p:128:128-i32:32-n32:64-S128"
target triple = "ppc128-ibm-ibmi-ile"

%struct.Struct2 = type { i32, i32 }
%struct.Struct1 = type { i32, i32 }

@g_a = global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [14 x i8] c"Hello, world\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"a=%d, b=%d, c=%d, d=%d, *p=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"fun1=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"st1.x=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"e1=%d\0A\00", align 1

; Function Attrs: mustprogress noinline nounwind optnone
define i32 @_Z4fun1i(i32 %x) #0 !dbg !31 {
entry:
  %x.addr = alloca i32, align 4
  %st2 = alloca %struct.Struct2, align 4
  store i32 %x, i32* %x.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata %struct.Struct2* %st2, metadata !37, metadata !DIExpression()), !dbg !43
  %x1 = getelementptr inbounds %struct.Struct2, %struct.Struct2* %st2, i32 0, i32 0, !dbg !44
  store i32 1, i32* %x1, align 4, !dbg !45
  %y = getelementptr inbounds %struct.Struct2, %struct.Struct2* %st2, i32 0, i32 1, !dbg !46
  store i32 2, i32* %y, align 4, !dbg !47
  %0 = load i32, i32* %x.addr, align 4, !dbg !48
  %x2 = getelementptr inbounds %struct.Struct2, %struct.Struct2* %st2, i32 0, i32 0, !dbg !49
  %1 = load i32, i32* %x2, align 4, !dbg !49
  %add = add nsw i32 %0, %1, !dbg !50
  ret i32 %add, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: mustprogress noinline norecurse optnone
define i32 @main() #2 !dbg !52 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i16, align 2
  %c = alloca i16, align 2
  %d = alloca i32, align 4
  %p = alloca i32 addrspace(999)*, align 16
  %r = alloca i32, align 4
  %st1 = alloca %struct.Struct1, align 4
  %e1 = alloca i8, align 1
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %a, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 1, i32* %a, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i16* %b, metadata !57, metadata !DIExpression()), !dbg !59
  store i16 2, i16* %b, align 2, !dbg !59
  call void @llvm.dbg.declare(metadata i16* %c, metadata !60, metadata !DIExpression()), !dbg !61
  store i16 3, i16* %c, align 2, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %d, metadata !62, metadata !DIExpression()), !dbg !64
  store i32 4, i32* %d, align 4, !dbg !64
  call void @llvm.dbg.declare(metadata i32 addrspace(999)** %p, metadata !65, metadata !DIExpression()), !dbg !67
  %a.ascast = addrspacecast i32* %a to i32 addrspace(999)*, !dbg !68
  store i32 addrspace(999)* %a.ascast, i32 addrspace(999)** %p, align 16, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %r, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata %struct.Struct1* %st1, metadata !71, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i8* %e1, metadata !78, metadata !DIExpression()), !dbg !79
  store i8 3, i8* %e1, align 1, !dbg !79
  %x = getelementptr inbounds %struct.Struct1, %struct.Struct1* %st1, i32 0, i32 0, !dbg !80
  store i32 1, i32* %x, align 4, !dbg !81
  %y = getelementptr inbounds %struct.Struct1, %struct.Struct1* %st1, i32 0, i32 1, !dbg !82
  store i32 2, i32* %y, align 4, !dbg !83
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i128 0, i128 0)), !dbg !84
  %0 = load i32, i32* %a, align 4, !dbg !85
  %1 = load i16, i16* %b, align 2, !dbg !86
  %conv = sext i16 %1 to i32, !dbg !86
  %2 = load i16, i16* %c, align 2, !dbg !87
  %conv1 = sext i16 %2 to i32, !dbg !87
  %3 = load i32 addrspace(999)*, i32 addrspace(999)** %p, align 16, !dbg !88
  %4 = load i32, i32 addrspace(999)* %3, align 4, !dbg !89
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i128 0, i128 0), i32 %0, i32 %conv, i32 %conv1, i32 4, i32 %4), !dbg !90
  %call3 = call i32 @_Z4fun1i(i32 1), !dbg !91
  store i32 %call3, i32* %r, align 4, !dbg !92
  %5 = load i32, i32* %r, align 4, !dbg !93
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i128 0, i128 0), i32 %5), !dbg !94
  %x5 = getelementptr inbounds %struct.Struct1, %struct.Struct1* %st1, i32 0, i32 0, !dbg !95
  %6 = load i32, i32* %x5, align 4, !dbg !95
  %call6 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i128 0, i128 0), i32 %6), !dbg !96
  %7 = load i8, i8* %e1, align 1, !dbg !97
  %conv7 = zext i8 %7 to i32, !dbg !97
  %call8 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i128 0, i128 0), i32 %conv7), !dbg !98
  %8 = load i32, i32* %r, align 4, !dbg !99
  ret i32 %8, !dbg !100
}

declare i32 @printf(i8*, ...) #3

; Function Attrs: mustprogress noinline optnone
define internal void @_CXX_PEP__Fv() #4 !dbg !101 {
entry:
  %call = call i32 @main(), !dbg !104
  ret void, !dbg !105
}

attributes #0 = { mustprogress noinline nounwind optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { mustprogress noinline norecurse optnone "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }
attributes #4 = { mustprogress noinline optnone "ILESymFlags"="IsCtlBody,IsPrototyped,IsMain" "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "g_a", scope: !2, file: !3, line: 12, type: !16, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C_plus_plus_14, file: !3, producer: "clang version 14.0.0 (git@github.ibm.com:iCompiler/llvm-project.git 31d59395e242e1ea6569ca064b53b5d7918768e0)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !15, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "TC220116B.cpp", directory: "/mnt/c/data/project/cct/TC220116B")
!4 = !{!5}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "DAY", file: !3, line: 3, baseType: !6, size: 8, elements: !7, identifier: "_ZTS3DAY")
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !{!8, !9, !10, !11, !12, !13, !14}
!8 = !DIEnumerator(name: "MON", value: 1, isUnsigned: true)
!9 = !DIEnumerator(name: "TUE", value: 2, isUnsigned: true)
!10 = !DIEnumerator(name: "WED", value: 3, isUnsigned: true)
!11 = !DIEnumerator(name: "THU", value: 4, isUnsigned: true)
!12 = !DIEnumerator(name: "FRI", value: 5, isUnsigned: true)
!13 = !DIEnumerator(name: "SAT", value: 6, isUnsigned: true)
!14 = !DIEnumerator(name: "SUN", value: 7, isUnsigned: true)
!15 = !{!0}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{i32 1, !"OSVRM", !"V7R5M0"}
!22 = !{i32 1, !"CompVRM", !"V7R5M0"}
!23 = !{i32 1, !"RuntimeBinding", !"P128"}
!24 = !{i32 1, !"StorageModel", !"SingleLevel"}
!25 = !{i32 1, !"Teraspace", !"NoTSIFC"}
!26 = !{i32 1, !"Authority", !"LIBCRTAUT"}
!27 = !{i32 1, !"IFSIO", !"64"}
!28 = !{i32 1, !"Replace", !"Yes"}
!29 = !{i32 1, !"Module Creation Options", !"NOKEEPILDTA"}
!30 = !{!"clang version 14.0.0 (git@github.ibm.com:iCompiler/llvm-project.git 31d59395e242e1ea6569ca064b53b5d7918768e0)"}
!31 = distinct !DISubprogram(name: "fun1", linkageName: "_Z4fun1i", scope: !3, file: !3, line: 14, type: !32, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !34)
!32 = !DISubroutineType(types: !33)
!33 = !{!16, !16}
!34 = !{}
!35 = !DILocalVariable(name: "x", arg: 1, scope: !31, file: !3, line: 14, type: !16)
!36 = !DILocation(line: 14, column: 14, scope: !31)
!37 = !DILocalVariable(name: "st2", scope: !31, file: !3, line: 21, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "Struct2", scope: !31, file: !3, line: 19, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !31, file: !3, line: 16, size: 64, flags: DIFlagTypePassByValue, elements: !40)
!40 = !{!41, !42}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !39, file: !3, line: 17, baseType: !16, size: 32)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !39, file: !3, line: 18, baseType: !16, size: 32, offset: 32)
!43 = !DILocation(line: 21, column: 13, scope: !31)
!44 = !DILocation(line: 22, column: 9, scope: !31)
!45 = !DILocation(line: 22, column: 11, scope: !31)
!46 = !DILocation(line: 23, column: 9, scope: !31)
!47 = !DILocation(line: 23, column: 11, scope: !31)
!48 = !DILocation(line: 25, column: 12, scope: !31)
!49 = !DILocation(line: 25, column: 18, scope: !31)
!50 = !DILocation(line: 25, column: 13, scope: !31)
!51 = !DILocation(line: 25, column: 5, scope: !31)
!52 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 29, type: !53, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !34)
!53 = !DISubroutineType(types: !54)
!54 = !{!16}
!55 = !DILocalVariable(name: "a", scope: !52, file: !3, line: 38, type: !16)
!56 = !DILocation(line: 38, column: 9, scope: !52)
!57 = !DILocalVariable(name: "b", scope: !52, file: !3, line: 39, type: !58)
!58 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!59 = !DILocation(line: 39, column: 15, scope: !52)
!60 = !DILocalVariable(name: "c", scope: !52, file: !3, line: 40, type: !58)
!61 = !DILocation(line: 40, column: 11, scope: !52)
!62 = !DILocalVariable(name: "d", scope: !52, file: !3, line: 41, type: !63)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!64 = !DILocation(line: 41, column: 15, scope: !52)
!65 = !DILocalVariable(name: "p", scope: !52, file: !3, line: 42, type: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 128)
!67 = !DILocation(line: 42, column: 10, scope: !52)
!68 = !DILocation(line: 42, column: 19, scope: !52)
!69 = !DILocalVariable(name: "r", scope: !52, file: !3, line: 43, type: !16)
!70 = !DILocation(line: 43, column: 11, scope: !52)
!71 = !DILocalVariable(name: "st1", scope: !52, file: !3, line: 45, type: !72)
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "Struct1", file: !3, line: 10, baseType: !73)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 7, size: 64, flags: DIFlagTypePassByValue, elements: !74, identifier: "_ZTS7Struct1")
!74 = !{!75, !76}
!75 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !73, file: !3, line: 8, baseType: !16, size: 32)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "y", scope: !73, file: !3, line: 9, baseType: !16, size: 32, offset: 32)
!77 = !DILocation(line: 45, column: 13, scope: !52)
!78 = !DILocalVariable(name: "e1", scope: !52, file: !3, line: 46, type: !5)
!79 = !DILocation(line: 46, column: 14, scope: !52)
!80 = !DILocation(line: 49, column: 9, scope: !52)
!81 = !DILocation(line: 49, column: 11, scope: !52)
!82 = !DILocation(line: 50, column: 9, scope: !52)
!83 = !DILocation(line: 50, column: 11, scope: !52)
!84 = !DILocation(line: 52, column: 5, scope: !52)
!85 = !DILocation(line: 53, column: 47, scope: !52)
!86 = !DILocation(line: 53, column: 50, scope: !52)
!87 = !DILocation(line: 53, column: 53, scope: !52)
!88 = !DILocation(line: 53, column: 60, scope: !52)
!89 = !DILocation(line: 53, column: 59, scope: !52)
!90 = !DILocation(line: 53, column: 5, scope: !52)
!91 = !DILocation(line: 55, column: 9, scope: !52)
!92 = !DILocation(line: 55, column: 7, scope: !52)
!93 = !DILocation(line: 56, column: 25, scope: !52)
!94 = !DILocation(line: 56, column: 5, scope: !52)
!95 = !DILocation(line: 57, column: 30, scope: !52)
!96 = !DILocation(line: 57, column: 5, scope: !52)
!97 = !DILocation(line: 58, column: 23, scope: !52)
!98 = !DILocation(line: 58, column: 5, scope: !52)
!99 = !DILocation(line: 60, column: 12, scope: !52)
!100 = !DILocation(line: 60, column: 5, scope: !52)
!101 = distinct !DISubprogram(name: "_CXX_PEP__Fv", scope: !3, file: !3, line: 1, type: !102, scopeLine: 1, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !34)
!102 = !DISubroutineType(types: !103)
!103 = !{null}
!104 = !DILocation(line: 2, column: 3, scope: !101)
!105 = !DILocation(line: 3, column: 1, scope: !101)
