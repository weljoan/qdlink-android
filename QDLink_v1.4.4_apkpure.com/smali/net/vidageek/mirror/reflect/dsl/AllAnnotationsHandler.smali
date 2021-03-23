.class public interface abstract Lnet/vidageek/mirror/reflect/dsl/AllAnnotationsHandler;
.super Ljava/lang/Object;
.source "AllAnnotationsHandler.java"


# virtual methods
.method public abstract atClass()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract atField(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract atMethod(Ljava/lang/String;)Lnet/vidageek/mirror/reflect/dsl/AllMethodAnnotationsHandler;
.end method
