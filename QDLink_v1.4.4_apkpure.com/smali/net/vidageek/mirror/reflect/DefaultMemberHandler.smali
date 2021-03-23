.class public final Lnet/vidageek/mirror/reflect/DefaultMemberHandler;
.super Ljava/lang/Object;
.source "DefaultMemberHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/MemberHandler;


# instance fields
.field private final member:Ljava/lang/reflect/AnnotatedElement;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 25
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultMemberHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 26
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultMemberHandler;->member:Ljava/lang/reflect/AnnotatedElement;

    return-void

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument member cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public annotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultMemberHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultMemberHandler;->member:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method
