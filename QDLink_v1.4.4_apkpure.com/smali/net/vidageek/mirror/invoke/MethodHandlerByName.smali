.class public final Lnet/vidageek/mirror/invoke/MethodHandlerByName;
.super Ljava/lang/Object;
.source "MethodHandlerByName.java"

# interfaces
.implements Lnet/vidageek/mirror/invoke/dsl/MethodHandler;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final methodName:Ljava/lang/String;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/provider/ReflectionProvider;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    .line 31
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iput-object p1, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 36
    iput-object p2, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->target:Ljava/lang/Object;

    .line 37
    iput-object p3, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->clazz:Ljava/lang/Class;

    .line 38
    iput-object p4, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->methodName:Ljava/lang/String;

    return-void

    .line 32
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "methodName can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clazz can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getMethod([Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 50
    :cond_0
    array-length v1, p1

    .line 52
    :goto_0
    new-array v2, v1, [Ljava/lang/Class;

    :goto_1
    if-ge v0, v1, :cond_2

    .line 54
    aget-object v3, p1, v0

    if-eqz v3, :cond_1

    .line 58
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 55
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot invoke a method by name if one of it\'s arguments is null. First reflect the method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 61
    :cond_2
    new-instance p1, Lnet/vidageek/mirror/dsl/Mirror;

    iget-object v0, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {p1, v0}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v0, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->clazz:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object p1

    invoke-interface {p1}, Lnet/vidageek/mirror/dsl/ClassController;->reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;

    move-result-object p1

    iget-object v0, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->methodName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;->method(Ljava/lang/String;)Lnet/vidageek/mirror/reflect/dsl/MethodReflector;

    move-result-object p1

    invoke-interface {p1, v2}, Lnet/vidageek/mirror/reflect/dsl/MethodReflector;->withArgs([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    .line 63
    :cond_3
    new-instance p1, Lnet/vidageek/mirror/exception/MirrorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/vidageek/mirror/exception/MirrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs withArgs([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 46
    new-instance v0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->target:Ljava/lang/Object;

    iget-object v3, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->getMethod([Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    invoke-virtual {v0, p1}, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->withArgs([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withoutArgs()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 42
    invoke-virtual {p0, v0}, Lnet/vidageek/mirror/invoke/MethodHandlerByName;->withArgs([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
