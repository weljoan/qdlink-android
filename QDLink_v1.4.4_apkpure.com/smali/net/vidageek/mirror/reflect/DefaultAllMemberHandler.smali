.class public final Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;
.super Ljava/lang/Object;
.source "DefaultAllMemberHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/AllMemberHandler;


# instance fields
.field private final member:Ljava/lang/reflect/AnnotatedElement;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 28
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 29
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;->member:Ljava/lang/reflect/AnnotatedElement;

    return-void

    .line 26
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument member cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public annotations()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;->member:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;->getAnnotations()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public annotationsMatching(Lnet/vidageek/mirror/dsl/Matcher;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/dsl/Matcher<",
            "Ljava/lang/annotation/Annotation;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/annotation/Annotation;",
            ">;"
        }
    .end annotation

    .line 37
    new-instance v0, Lnet/vidageek/mirror/matcher/ListFilter;

    invoke-direct {v0}, Lnet/vidageek/mirror/matcher/ListFilter;-><init>()V

    invoke-virtual {p0}, Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;->annotations()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/vidageek/mirror/matcher/ListFilter;->filter(Lnet/vidageek/mirror/dsl/Matcher;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
