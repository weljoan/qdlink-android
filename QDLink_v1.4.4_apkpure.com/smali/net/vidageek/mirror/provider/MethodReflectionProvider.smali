.class public interface abstract Lnet/vidageek/mirror/provider/MethodReflectionProvider;
.super Ljava/lang/Object;
.source "MethodReflectionProvider.java"

# interfaces
.implements Lnet/vidageek/mirror/provider/ReflectionElementReflectionProvider;


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

.method public abstract invoke([Ljava/lang/Object;)Ljava/lang/Object;
.end method
