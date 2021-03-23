.class public final Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;
.super Ljava/lang/Object;
.source "DefaultReflectionHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler<",
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

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 32
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 33
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->clazz:Ljava/lang/Class;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clazz cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public annotation(Ljava/lang/Class;)Lnet/vidageek/mirror/reflect/dsl/AnnotationHandler;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Lnet/vidageek/mirror/reflect/dsl/AnnotationHandler<",
            "+TA;>;"
        }
    .end annotation

    .line 56
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1}, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;Ljava/lang/Class;)V

    return-object v0
.end method

.method public constructor()Lnet/vidageek/mirror/reflect/dsl/ConstructorReflector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/vidageek/mirror/reflect/dsl/ConstructorReflector<",
            "TT;>;"
        }
    .end annotation

    .line 51
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultConstructorReflector;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/reflect/DefaultConstructorReflector;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V

    return-object v0
.end method

.method public field(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultFieldReflector;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1, p1}, Lnet/vidageek/mirror/reflect/DefaultFieldReflector;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/String;)V

    iget-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Lnet/vidageek/mirror/reflect/DefaultFieldReflector;->onClass(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fieldName cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public method(Ljava/lang/String;)Lnet/vidageek/mirror/reflect/dsl/MethodReflector;
    .locals 3

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v2}, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "methodName cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public parentGenericType()Lnet/vidageek/mirror/reflect/dsl/ParameterizedElementHandler;
    .locals 3

    .line 60
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaClassGenericTypeAccessor;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1}, Lnet/vidageek/mirror/provider/java/PureJavaClassGenericTypeAccessor;-><init>(Ljava/lang/Class;)V

    .line 61
    new-instance v1, Lnet/vidageek/mirror/reflect/DefaultParameterizedElementHandler;

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v1, v2, v0}, Lnet/vidageek/mirror/reflect/DefaultParameterizedElementHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Lnet/vidageek/mirror/provider/GenericTypeAccessor;)V

    return-object v1
.end method
