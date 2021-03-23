.class public interface abstract Lnet/vidageek/mirror/reflect/dsl/AllMemberHandler;
.super Ljava/lang/Object;
.source "AllMemberHandler.java"


# virtual methods
.method public abstract annotations()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method

.method public abstract annotationsMatching(Lnet/vidageek/mirror/dsl/Matcher;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/dsl/Matcher<",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation
.end method
