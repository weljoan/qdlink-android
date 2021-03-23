.class public interface abstract Lnet/vidageek/mirror/provider/ConstructorReflectionProvider;
.super Ljava/lang/Object;
.source "ConstructorReflectionProvider.java"

# interfaces
.implements Lnet/vidageek/mirror/provider/ReflectionElementReflectionProvider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/vidageek/mirror/provider/ReflectionElementReflectionProvider;"
    }
.end annotation


# virtual methods
.method public abstract getParameters()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method public varargs abstract instantiate([Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation
.end method
