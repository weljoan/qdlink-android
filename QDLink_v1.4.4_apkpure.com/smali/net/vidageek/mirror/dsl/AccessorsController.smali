.class public interface abstract Lnet/vidageek/mirror/dsl/AccessorsController;
.super Ljava/lang/Object;
.source "AccessorsController.java"


# virtual methods
.method public abstract get()Lnet/vidageek/mirror/get/dsl/GetterHandler;
.end method

.method public abstract invoke()Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/invoke/dsl/InvocationHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public abstract set()Lnet/vidageek/mirror/set/dsl/SetterHandler;
.end method
