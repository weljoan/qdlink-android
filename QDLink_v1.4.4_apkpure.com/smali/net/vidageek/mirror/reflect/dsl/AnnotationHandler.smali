.class public interface abstract Lnet/vidageek/mirror/reflect/dsl/AnnotationHandler;
.super Ljava/lang/Object;
.source "AnnotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract atClass()Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract atField(Ljava/lang/String;)Ljava/lang/annotation/Annotation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public abstract atMethod(Ljava/lang/String;)Lnet/vidageek/mirror/reflect/dsl/MethodAnnotationHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/vidageek/mirror/reflect/dsl/MethodAnnotationHandler<",
            "TT;>;"
        }
    .end annotation
.end method
