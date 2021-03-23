.class public final Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;
.super Ljava/lang/Object;
.source "DefaultAnnotationHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/AnnotationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/vidageek/mirror/reflect/dsl/AnnotationHandler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final annotation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

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
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/provider/ReflectionProvider;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 30
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 31
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->clazz:Ljava/lang/Class;

    .line 32
    iput-object p3, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->annotation:Ljava/lang/Class;

    return-void

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument annotation cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument clazz cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public atClass()Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->clazz:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;

    move-result-object v0

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->annotation:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method

.method public atField(Ljava/lang/String;)Ljava/lang/annotation/Annotation;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    new-instance v1, Lnet/vidageek/mirror/dsl/Mirror;

    invoke-direct {v1, v0}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object v1

    invoke-interface {v1}, Lnet/vidageek/mirror/dsl/ClassController;->reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;

    move-result-object v1

    invoke-interface {v1, p1}, Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;->field(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-interface {v0, p1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;

    move-result-object p1

    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->annotation:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fieldName cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public atMethod(Ljava/lang/String;)Lnet/vidageek/mirror/reflect/dsl/MethodAnnotationHandler;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/vidageek/mirror/reflect/dsl/MethodAnnotationHandler<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lnet/vidageek/mirror/reflect/DefaultAnnotationHandler;->annotation:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1, v3}, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V

    return-object v0

    .line 47
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "methodName cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
