.class public interface abstract Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;
.super Ljava/lang/Object;
.source "ReflectionHandler.java"


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
.method public abstract annotation(Ljava/lang/Class;)Lnet/vidageek/mirror/reflect/dsl/AnnotationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Lnet/vidageek/mirror/reflect/dsl/AnnotationHandler<",
            "+TA;>;"
        }
    .end annotation
.end method

.method public abstract constructor()Lnet/vidageek/mirror/reflect/dsl/ConstructorReflector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/reflect/dsl/ConstructorReflector<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract field(Ljava/lang/String;)Ljava/lang/reflect/Field;
.end method

.method public abstract method(Ljava/lang/String;)Lnet/vidageek/mirror/reflect/dsl/MethodReflector;
.end method

.method public abstract parentGenericType()Lnet/vidageek/mirror/reflect/dsl/ParameterizedElementHandler;
.end method
