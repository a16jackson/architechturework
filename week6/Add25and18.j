; Add25and18.j
; Neal Nelson  2012.01.26 
; Adds two integer constants and prints the result to the console

; class heirarchy
.class public Add25and18
.super java/lang/Object

; standard initializer
.method public <init>()V
  aload_0
  invokespecial	java/lang/Object/<init>()V
  return
.end method

.method public static main([Ljava.lang.String;)V
  .limit stack 6

  ; push System.out onto the stack
  getstatic  java/lang/System/out Ljava/io/PrintStream;

  ; push two iteger constants on the stack and add them
  sipush 25
  sipush 18
  iadd
  sipush 5
  iadd
  sipush 8
  iadd
  sipush 22
  i2f
  fstore 1
  sipush 5
  fstore 2
  fdiv
  f2i
  ; call PrintStream.println()
  invokevirtual	java/io/PrintStream/println(I)V
  return
.end method

