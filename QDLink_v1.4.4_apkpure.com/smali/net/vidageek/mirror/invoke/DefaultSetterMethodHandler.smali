.class public final Lnet/vidageek/mirror/invoke/DefaultSetterMethodHandler;
.super Ljava/lang/Object;
.source "DefaultSetterMethodHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/invoke/dsl/SetterMethodHandler;


# instance fields
.field private final fieldName:Ljava/lang/String;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lnet/vidageek/mirror/invoke/DefaultSetterMethodHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 16
    iput-object p2, p0, Lnet/vidageek/mirror/invoke/DefaultSetterMethodHandler;->target:Ljava/lang/Object;

    .line 17
    iput-object p3, p0, Lnet/vidageek/mirror/invoke/DefaultSetterMethodHandler;->fieldName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public withValue(Ljava/lang/Object;)V
    .locals 3

    .line 21
    new-instance v0, Lnet/vidageek/mirror/dsl/Mirror;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/DefaultSetterMethodHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/DefaultSetterMethodHandler;->target:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Object;)Lnet/vidageek/mirror/dsl/AccessorsController;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/dsl/AccessorsController;->invoke()Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;

    move-result-object v0

    new-instance v1, Lnet/vidageek/mirror/bean/Bean;

    invoke-direct {v1}, Lnet/vidageek/mirror/bean/Bean;-><init>()V

    iget-object v2, p0, Lnet/vidageek/mirror/invoke/DefaultSetterMethodHandler;->fieldName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lnet/vidageek/mirror/bean/Bean;->setter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;->method(Ljava/lang/String;)Lnet/vidageek/mirror/invoke/dsl/MethodHandler;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/invoke/dsl/MethodHandler;->withArgs([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
