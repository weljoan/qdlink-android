.class public final Lnet/vidageek/mirror/provider/java/PureJavaAnnotatedElementReflectionProvider;
.super Ljava/lang/Object;
.source "PureJavaAnnotatedElementReflectionProvider.java"

# interfaces
.implements Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;


# instance fields
.field private final element:Ljava/lang/reflect/AnnotatedElement;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lnet/vidageek/mirror/provider/java/PureJavaAnnotatedElementReflectionProvider;->element:Ljava/lang/reflect/AnnotatedElement;

    return-void
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lnet/vidageek/mirror/provider/java/PureJavaAnnotatedElementReflectionProvider;->element:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, p1}, Ljava/lang/reflect/AnnotatedElement;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lnet/vidageek/mirror/provider/java/PureJavaAnnotatedElementReflectionProvider;->element:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0}, Ljava/lang/reflect/AnnotatedElement;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
