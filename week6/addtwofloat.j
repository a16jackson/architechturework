; addtwofloat.j
; Neal Nelson  2023.05
; Prints an approximation of Pi to the console as a float

; class heirarchy
.class public addtwofloat
.super java/lang/Object

; standard initializer
.method public <init>()V
  aload_0
  invokespecial	java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava.lang.String;)V
  .limit stack 3

  ; push System.out onto the stack
  getstatic  java/lang/System/out Ljava/io/PrintStream;

  ; push a floating point constant on the stack
  ldc 7.54
  ldc 3.14159
  fadd
  ; call PrintStream.println()
  invokevirtual	java/io/PrintStream/println(F)V
  return
.end method

