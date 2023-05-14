.class public Add25and18
.super java/lang/Object

.method public static main([Ljava.lang.String;)V
  .limit stack 4

  ; push System.out onto the stack
  getstatic  java/lang/System/out Ljava/io/PrintStream;

  ; push two iteger constants on the stack and add them
  sipush 28
  sipush 30
  iadd
  sipush 0
  sipush 0
  idiv
  imul

  ; call PrintStream.println()
  invokevirtual	java/io/PrintStream/println(I)V
  return
.end method