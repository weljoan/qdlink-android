.class public interface abstract Lnet/vidageek/mirror/provider/ReflectionProvider;
.super Ljava/lang/Object;
.source "ReflectionProvider.java"


# virtual methods
.method public abstract getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;
.end method

.method public abstract getClassGenericTypeAccessor(Ljava/lang/Class;)Lnet/vidageek/mirror/provider/GenericTypeAccessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/vidageek/mirror/provider/GenericTypeAccessor;"
        }
    .end annotation
.end method

.method public abstract getClassReflectionProvider(Ljava/lang/Class;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/vidageek/mirror/provider/ClassReflectionProvider<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getClassReflectionProvider(Ljava/lang/String;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/vidageek/mirror/provider/ClassReflectionProvider<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getConstructorReflectionProvider(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Lnet/vidageek/mirror/provider/ConstructorReflectionProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)",
            "Lnet/vidageek/mirror/provider/ConstructorReflectionProvider<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getFieldGenericTypeAccessor(Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/provider/GenericTypeAccessor;
.end method

.method public abstract getFieldReflectionProvider(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/provider/FieldReflectionProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/vidageek/mirror/provider/FieldReflectionProvider;"
        }
    .end annotation
.end method

.method public abstract getMethodReflectionProvider(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lnet/vidageek/mirror/provider/MethodReflectionProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/vidageek/mirror/provider/MethodReflectionProvider;"
        }
    .end annotation
.end method

.method public abstract getParameterizedElementProvider(Lnet/vidageek/mirror/provider/GenericTypeAccessor;)Lnet/vidageek/mirror/provider/ParameterizedElementReflectionProvider;
.end method
