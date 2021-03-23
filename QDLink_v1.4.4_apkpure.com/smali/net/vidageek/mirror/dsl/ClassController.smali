.class public interface abstract Lnet/vidageek/mirror/dsl/ClassController;
.super Ljava/lang/Object;
.source "ClassController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract get()Lnet/vidageek/mirror/get/dsl/GetterHandler;
.end method

.method public abstract invoke()Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/invoke/dsl/InvocationHandler<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract reflectAll()Lnet/vidageek/mirror/reflect/dsl/AllReflectionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/reflect/dsl/AllReflectionHandler<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract set()Lnet/vidageek/mirror/set/dsl/SetterHandler;
.end method
