.class public final Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;
.super Ljava/lang/Object;
.source "DefaultInvocationHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/vidageek/mirror/invoke/dsl/InvocationHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/provider/ReflectionProvider;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 43
    iput-object p1, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 44
    iput-object p2, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->clazz:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 45
    iput-object p1, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->target:Ljava/lang/Object;

    return-void

    .line 41
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 34
    iput-object p1, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 35
    iput-object p2, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->target:Ljava/lang/Object;

    .line 36
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->clazz:Ljava/lang/Class;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public constructor()Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler<",
            "TT;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->target:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V

    return-object v0

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "must use constructor InvocationHandler(Class<T>) instead of InvocationHandler(Object)."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor(Ljava/lang/reflect/Constructor;)Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler;
    .locals 3
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

    .line 70
    new-instance v0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByConstructor;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1}, Lnet/vidageek/mirror/invoke/ConstructorHandlerByConstructor;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public getterFor(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 75
    new-instance v0, Lnet/vidageek/mirror/bean/Bean;

    invoke-direct {v0}, Lnet/vidageek/mirror/bean/Bean;-><init>()V

    invoke-virtual {v0, p1}, Lnet/vidageek/mirror/bean/Bean;->getter(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    new-instance v2, Lnet/vidageek/mirror/dsl/Mirror;

    iget-object v3, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v2, v3}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v3, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->target:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object v2

    invoke-interface {v2}, Lnet/vidageek/mirror/dsl/ClassController;->reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;

    move-result-object v2

    invoke-interface {v2, v1}, Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;->method(Ljava/lang/String;)Lnet/vidageek/mirror/reflect/dsl/MethodReflector;

    move-result-object v1

    invoke-interface {v1}, Lnet/vidageek/mirror/reflect/dsl/MethodReflector;->withoutArgs()Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    :cond_1
    if-eqz v1, :cond_2

    .line 82
    new-instance p1, Lnet/vidageek/mirror/dsl/Mirror;

    iget-object v0, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {p1, v0}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v0, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->target:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Object;)Lnet/vidageek/mirror/dsl/AccessorsController;

    move-result-object p1

    invoke-interface {p1}, Lnet/vidageek/mirror/dsl/AccessorsController;->invoke()Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;

    move-result-object p1

    invoke-interface {p1, v1}, Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;->method(Ljava/lang/reflect/Method;)Lnet/vidageek/mirror/invoke/dsl/MethodHandler;

    move-result-object p1

    invoke-interface {p1}, Lnet/vidageek/mirror/invoke/dsl/MethodHandler;->withoutArgs()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 80
    :cond_2
    new-instance v0, Lnet/vidageek/mirror/exception/MirrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find getter for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/exception/MirrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getterFor(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0

    .line 86
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->getterFor(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public method(Ljava/lang/String;)Lnet/vidageek/mirror/invoke/dsl/MethodHandler;
    .locals 4

    if-eqz p1, :cond_0

    .line 52
    new-instance v0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->target:Ljava/lang/Object;

    iget-object v3, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/vidageek/mirror/invoke/MethodHandlerByName;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0

    .line 50
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "methodName can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public method(Ljava/lang/reflect/Method;)Lnet/vidageek/mirror/invoke/dsl/MethodHandler;
    .locals 4

    .line 65
    new-instance v0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->target:Ljava/lang/Object;

    iget-object v3, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public setterFor(Ljava/lang/String;)Lnet/vidageek/mirror/invoke/dsl/SetterMethodHandler;
    .locals 3

    .line 90
    new-instance v0, Lnet/vidageek/mirror/invoke/DefaultSetterMethodHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->target:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lnet/vidageek/mirror/invoke/DefaultSetterMethodHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public setterFor(Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/invoke/dsl/SetterMethodHandler;
    .locals 0

    .line 94
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;->setterFor(Ljava/lang/String;)Lnet/vidageek/mirror/invoke/dsl/SetterMethodHandler;

    move-result-object p1

    return-object p1
.end method
