.class public interface abstract Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;
.super Ljava/lang/Object;
.source "InvocationHandler.java"


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
.method public abstract constructor()Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract constructor(Ljava/lang/reflect/Constructor;)Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Constructor<",
            "TC;>;)",
            "Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler<",
            "TC;>;"
        }
    .end annotation
.end method

.method public abstract getterFor(Ljava/lang/String;)Ljava/lang/Object;
.end method

.method public abstract getterFor(Ljava/lang/reflect/Field;)Ljava/lang/Object;
.end method

.method public abstract method(Ljava/lang/String;)Lnet/vidageek/mirror/invoke/dsl/MethodHandler;
.end method

.method public abstract method(Ljava/lang/reflect/Method;)Lnet/vidageek/mirror/invoke/dsl/MethodHandler;
.end method

.method public abstract setterFor(Ljava/lang/String;)Lnet/vidageek/mirror/invoke/dsl/SetterMethodHandler;
.end method

.method public abstract setterFor(Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/invoke/dsl/SetterMethodHandler;
.end method
