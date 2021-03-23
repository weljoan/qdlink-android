.class public interface abstract Lnet/vidageek/mirror/reflect/dsl/AllMethodAnnotationsHandler;
.super Ljava/lang/Object;
.source "AllMethodAnnotationsHandler.java"


# virtual methods
.method public varargs abstract withArgs([Ljava/lang/Class;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract withoutArgs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method
