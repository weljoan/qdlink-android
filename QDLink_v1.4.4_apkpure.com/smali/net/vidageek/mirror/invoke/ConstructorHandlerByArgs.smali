.class public final Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;
.super Ljava/lang/Object;
.source "ConstructorHandlerByArgs.java"

# interfaces
.implements Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler<",
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

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 27
    iput-object p1, p0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 28
    iput-object p2, p0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;->clazz:Ljava/lang/Class;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument class cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private varargs getConstructor([Ljava/lang/Object;)Ljava/lang/reflect/Constructor;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 40
    :cond_0
    array-length v1, p1

    .line 42
    :goto_0
    new-array v2, v1, [Ljava/lang/Class;

    :goto_1
    if-ge v0, v1, :cond_2

    .line 44
    aget-object v3, p1, v0

    if-eqz v3, :cond_1

    .line 48
    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 45
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot invoke a constructor by args if one of it\'s arguments is null. First reflect the constructor."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_2
    new-instance p1, Lnet/vidageek/mirror/dsl/Mirror;

    iget-object v0, p0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {p1, v0}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v0, p0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;->clazz:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object p1

    invoke-interface {p1}, Lnet/vidageek/mirror/dsl/ClassController;->reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;

    move-result-object p1

    invoke-interface {p1}, Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;->constructor()Lnet/vidageek/mirror/reflect/dsl/ConstructorReflector;

    move-result-object p1

    invoke-interface {p1, v2}, Lnet/vidageek/mirror/reflect/dsl/ConstructorReflector;->withArgs([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    if-eqz p1, :cond_3

    return-object p1

    .line 53
    :cond_3
    new-instance p1, Lnet/vidageek/mirror/exception/MirrorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not find constructor with args "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;->clazz:Ljava/lang/Class;

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
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 36
    new-instance v0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByConstructor;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;->clazz:Ljava/lang/Class;

    invoke-direct {p0, p1}, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;->getConstructor([Ljava/lang/Object;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/vidageek/mirror/invoke/ConstructorHandlerByConstructor;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    invoke-virtual {v0, p1}, Lnet/vidageek/mirror/invoke/ConstructorHandlerByConstructor;->withArgs([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withoutArgs()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 32
    invoke-virtual {p0, v0}, Lnet/vidageek/mirror/invoke/ConstructorHandlerByArgs;->withArgs([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
