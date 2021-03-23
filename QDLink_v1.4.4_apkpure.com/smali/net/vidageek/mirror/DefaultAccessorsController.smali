.class public final Lnet/vidageek/mirror/DefaultAccessorsController;
.super Ljava/lang/Object;
.source "DefaultAccessorsController.java"

# interfaces
.implements Lnet/vidageek/mirror/dsl/AccessorsController;


# instance fields
.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 30
    iput-object p1, p0, Lnet/vidageek/mirror/DefaultAccessorsController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 31
    iput-object p2, p0, Lnet/vidageek/mirror/DefaultAccessorsController;->target:Ljava/lang/Object;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get()Lnet/vidageek/mirror/get/dsl/GetterHandler;
    .locals 3

    .line 43
    new-instance v0, Lnet/vidageek/mirror/get/DefaultGetterHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultAccessorsController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultAccessorsController;->target:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/get/DefaultGetterHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;)V

    return-object v0
.end method

.method public invoke()Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/invoke/dsl/InvocationHandler<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 35
    new-instance v0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultAccessorsController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultAccessorsController;->target:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;)V

    return-object v0
.end method

.method public set()Lnet/vidageek/mirror/set/dsl/SetterHandler;
    .locals 3

    .line 39
    new-instance v0, Lnet/vidageek/mirror/set/DefaultSetterHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultAccessorsController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultAccessorsController;->target:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/set/DefaultSetterHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;)V

    return-object v0
.end method
