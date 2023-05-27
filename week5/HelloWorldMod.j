; Hello World Jasmin program.
; Modified from Jon Meyer's sample HelloWorld.j program.


.class public HelloWorld
.super java/lang/Object


; standard initializer
.method public <init>()V
; aload_0 loads a reference onto the stack from local variable 0
   aload_0   
 
   invokespecial java/lang/Object/<init>()V
   return
.end method

; I believe this is the start of the body of the program
.method public static main([Ljava/lang/String;)V
   .limit stack 2
   .limit locals 10

   ; push System.out onto the stack
   getstatic java/lang/System.out Ljava/io/PrintStream;

   ; ldc pushes a constant, in this case a string, onto the stack.
   ldc "Hello Walls from Jasmin!"

   ; call the PrintStream.println() method.
   invokevirtual java/io/PrintStream.println(Ljava/lang/String;)V

   ; done
   return
.end method
; and I believe it ends here