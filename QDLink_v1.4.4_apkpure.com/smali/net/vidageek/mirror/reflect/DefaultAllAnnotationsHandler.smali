.class public final Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;
.super Ljava/lang/Object;
.source "DefaultAllAnnotationsHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/AllAnnotationsHandler;


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


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/provider/ReflectionProvider;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 27
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 28
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->clazz:Ljava/lang/Class;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument clazz cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public atClass()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->clazz:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public atField(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 36
    new-instance v0, Lnet/vidageek/mirror/dsl/Mirror;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/dsl/ClassController;->reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;->field(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-interface {p1, v0}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;

    move-result-object p1

    invoke-interface {p1}, Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;->getAnnotations()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " at class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public atMethod(Ljava/lang/String;)Lnet/vidageek/mirror/reflect/dsl/AllMethodAnnotationsHandler;
    .locals 3

    .line 44
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1}, Lnet/vidageek/mirror/reflect/DefaultAllMethodAnnotationsHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method
