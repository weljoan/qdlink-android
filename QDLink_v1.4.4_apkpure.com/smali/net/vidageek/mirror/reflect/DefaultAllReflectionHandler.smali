.class public final Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;
.super Ljava/lang/Object;
.source "DefaultAllReflectionHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/AllReflectionHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lnet/vidageek/mirror/reflect/dsl/AllReflectionHandler<",
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

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 35
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 36
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->clazz:Ljava/lang/Class;

    return-void

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clazz cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public annotations()Lnet/vidageek/mirror/reflect/dsl/AllAnnotationsHandler;
    .locals 3

    .line 52
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/reflect/DefaultAllAnnotationsHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V

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

    .line 76
    new-instance v0, Lnet/vidageek/mirror/matcher/ListFilter;

    invoke-direct {v0}, Lnet/vidageek/mirror/matcher/ListFilter;-><init>()V

    invoke-virtual {p0}, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->annotations()Lnet/vidageek/mirror/reflect/dsl/AllAnnotationsHandler;

    move-result-object v1

    invoke-interface {v1}, Lnet/vidageek/mirror/reflect/dsl/AllAnnotationsHandler;->atClass()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/vidageek/mirror/matcher/ListFilter;->filter(Lnet/vidageek/mirror/dsl/Matcher;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public constructors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->clazz:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getClassReflectionProvider(Ljava/lang/Class;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/provider/ClassReflectionProvider;->reflectAllConstructors()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public constructorsMatching(Lnet/vidageek/mirror/dsl/Matcher;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/dsl/Matcher<",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;>;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;>;"
        }
    .end annotation

    .line 72
    new-instance v0, Lnet/vidageek/mirror/matcher/ListFilter;

    invoke-direct {v0}, Lnet/vidageek/mirror/matcher/ListFilter;-><init>()V

    invoke-virtual {p0}, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->constructors()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/vidageek/mirror/matcher/ListFilter;->filter(Lnet/vidageek/mirror/dsl/Matcher;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public fields()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->clazz:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getClassReflectionProvider(Ljava/lang/Class;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/provider/ClassReflectionProvider;->reflectAllFields()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public fieldsMatching(Lnet/vidageek/mirror/dsl/Matcher;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/dsl/Matcher<",
            "Ljava/lang/reflect/Field;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 64
    new-instance v0, Lnet/vidageek/mirror/matcher/ListFilter;

    invoke-direct {v0}, Lnet/vidageek/mirror/matcher/ListFilter;-><init>()V

    invoke-virtual {p0}, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->fields()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/vidageek/mirror/matcher/ListFilter;->filter(Lnet/vidageek/mirror/dsl/Matcher;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 60
    new-instance v0, Lnet/vidageek/mirror/matcher/ListFilter;

    invoke-direct {v0}, Lnet/vidageek/mirror/matcher/ListFilter;-><init>()V

    new-instance v1, Lnet/vidageek/mirror/matcher/GetterMatcher;

    invoke-direct {v1}, Lnet/vidageek/mirror/matcher/GetterMatcher;-><init>()V

    invoke-virtual {p0}, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->methods()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/vidageek/mirror/matcher/ListFilter;->filter(Lnet/vidageek/mirror/dsl/Matcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public methods()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->clazz:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getClassReflectionProvider(Ljava/lang/Class;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/provider/ClassReflectionProvider;->reflectAllMethods()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public methodsMatching(Lnet/vidageek/mirror/dsl/Matcher;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/dsl/Matcher<",
            "Ljava/lang/reflect/Method;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Lnet/vidageek/mirror/matcher/ListFilter;

    invoke-direct {v0}, Lnet/vidageek/mirror/matcher/ListFilter;-><init>()V

    invoke-virtual {p0}, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->methods()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lnet/vidageek/mirror/matcher/ListFilter;->filter(Lnet/vidageek/mirror/dsl/Matcher;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public setters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lnet/vidageek/mirror/matcher/ListFilter;

    invoke-direct {v0}, Lnet/vidageek/mirror/matcher/ListFilter;-><init>()V

    new-instance v1, Lnet/vidageek/mirror/matcher/SetterMatcher;

    invoke-direct {v1}, Lnet/vidageek/mirror/matcher/SetterMatcher;-><init>()V

    invoke-virtual {p0}, Lnet/vidageek/mirror/reflect/DefaultAllReflectionHandler;->methods()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/vidageek/mirror/matcher/ListFilter;->filter(Lnet/vidageek/mirror/dsl/Matcher;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
