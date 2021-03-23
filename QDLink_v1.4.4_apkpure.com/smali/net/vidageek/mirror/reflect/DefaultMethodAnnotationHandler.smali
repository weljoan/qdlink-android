.class public final Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;
.super Ljava/lang/Object;
.source "DefaultMethodAnnotationHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/MethodAnnotationHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/annotation/Annotation;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/vidageek/mirror/reflect/dsl/MethodAnnotationHandler<",
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

.field private final methodName:Ljava/lang/String;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/provider/ReflectionProvider;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    .line 30
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 36
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 37
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->clazz:Ljava/lang/Class;

    .line 38
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->methodName:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->annotation:Ljava/lang/Class;

    return-void

    .line 34
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument annotation cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 31
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument fieldName cannot be null or empty."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument clazz cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs withArgs([Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 43
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->methodName:Ljava/lang/String;

    iget-object v3, p0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3}, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {v0, p1}, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;->withArgs([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    iget-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-interface {p1, v0}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;

    move-result-object p1

    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->annotation:Ljava/lang/Class;

    invoke-interface {p1, v0}, Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1

    .line 45
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find method matching argument list "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public withoutArgs()Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 51
    invoke-virtual {p0, v0}, Lnet/vidageek/mirror/reflect/DefaultMethodAnnotationHandler;->withArgs([Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    return-object v0
.end method
