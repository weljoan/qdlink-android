.class public interface abstract Lnet/vidageek/mirror/reflect/dsl/MethodReflector;
.super Ljava/lang/Object;
.source "MethodReflector.java"


# virtual methods
.method public varargs abstract withArgs([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation
.end method

.method public abstract withoutArgs()Ljava/lang/reflect/Method;
.end method
