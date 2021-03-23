.class public final Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;
.super Ljava/lang/Object;
.source "DefaultAllMethodAnnotationsHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/AllMethodAnnotationsHandler;


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


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/provider/ReflectionProvider;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 30
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 35
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;->clazz:Ljava/lang/Class;

    .line 36
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;->methodName:Ljava/lang/String;

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument methodName cannot be null or blank."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument clazz cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs withArgs([Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 44
    new-instance v0, Lnet/vidageek/mirror/dsl/Mirror;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/dsl/ClassController;->reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;->methodName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;->method(Ljava/lang/String;)Lnet/vidageek/mirror/reflect/dsl/MethodReflector;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/vidageek/mirror/reflect/dsl/MethodReflector;->withArgs([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 48
    iget-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-interface {p1, v0}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;

    move-result-object p1

    invoke-interface {p1}, Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;->getAnnotations()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find method that matched "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withoutArgs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 40
    invoke-virtual {p0, v0}, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;->withArgs([Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
