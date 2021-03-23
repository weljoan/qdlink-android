.class public final Lnet/vidageek/mirror/DefaultClassController;
.super Ljava/lang/Object;
.source "DefaultClassController.java"

# interfaces
.implements Lnet/vidageek/mirror/dsl/ClassController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/vidageek/mirror/dsl/ClassController<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


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

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lnet/vidageek/mirror/DefaultClassController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    if-eqz p2, :cond_0

    .line 35
    iput-object p2, p0, Lnet/vidageek/mirror/DefaultClassController;->clazz:Ljava/lang/Class;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clazz cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public get()Lnet/vidageek/mirror/get/dsl/GetterHandler;
    .locals 3

    .line 47
    new-instance v0, Lnet/vidageek/mirror/get/DefaultGetterHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultClassController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultClassController;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/get/DefaultGetterHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V

    return-object v0
.end method

.method public invoke()Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/invoke/dsl/InvocationHandler<",
            "TT;>;"
        }
    .end annotation

    .line 39
    new-instance v0, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultClassController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultClassController;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/invoke/DefaultInvocationHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V

    return-object v0
.end method

.method public reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultClassController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultClassController;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V

    return-object v0
.end method

.method public reflectAll()Lnet/vidageek/mirror/reflect/dsl/AllReflectionHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/reflect/dsl/AllReflectionHandler<",
            "TT;>;"
        }
    .end annotation

    .line 55
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultClassController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultClassController;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V

    return-object v0
.end method

.method public set()Lnet/vidageek/mirror/set/dsl/SetterHandler;
    .locals 3

    .line 43
    new-instance v0, Lnet/vidageek/mirror/set/DefaultSetterHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultClassController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultClassController;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/set/DefaultSetterHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V

    return-object v0
.end method
