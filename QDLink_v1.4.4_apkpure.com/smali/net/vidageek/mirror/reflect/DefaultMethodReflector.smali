.class public final Lnet/vidageek/mirror/reflect/DefaultMethodReflector;
.super Ljava/lang/Object;
.source "DefaultMethodReflector.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/MethodReflector;


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
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/provider/ReflectionProvider;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 31
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 32
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;->methodName:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;->clazz:Ljava/lang/Class;

    return-void

    .line 29
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clazz cannnot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 26
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "methodName cannot be null or empty"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs withArgs([Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;->clazz:Ljava/lang/Class;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getClassReflectionProvider(Ljava/lang/Class;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;

    move-result-object v0

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;->methodName:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lnet/vidageek/mirror/provider/ClassReflectionProvider;->reflectMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "classes cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withoutArgs()Ljava/lang/reflect/Method;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Class;

    .line 37
    invoke-virtual {p0, v0}, Lnet/vidageek/mirror/reflect/DefaultMethodReflector;->withArgs([Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    return-object v0
.end method
