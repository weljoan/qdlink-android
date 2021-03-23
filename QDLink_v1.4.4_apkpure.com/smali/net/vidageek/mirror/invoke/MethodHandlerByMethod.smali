.class public final Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;
.super Ljava/lang/Object;
.source "MethodHandlerByMethod.java"

# interfaces
.implements Lnet/vidageek/mirror/invoke/dsl/MethodHandler;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/reflect/Method;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/provider/ReflectionProvider;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p3, :cond_2

    if-eqz p4, :cond_1

    .line 37
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iput-object p1, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 41
    iput-object p2, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->target:Ljava/lang/Object;

    .line 42
    iput-object p3, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->clazz:Ljava/lang/Class;

    .line 43
    iput-object p4, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->method:Ljava/lang/reflect/Method;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p4, " cannot be invoked on clazz "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 35
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "method cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clazz cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public varargs withArgs([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 47
    iget-object v0, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->target:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "attempt to call instance method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 52
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->target:Ljava/lang/Object;

    iget-object v2, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->clazz:Ljava/lang/Class;

    iget-object v3, p0, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->method:Ljava/lang/reflect/Method;

    invoke-interface {v0, v1, v2, v3}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getMethodReflectionProvider(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lnet/vidageek/mirror/provider/MethodReflectionProvider;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Lnet/vidageek/mirror/provider/MethodReflectionProvider;->setAccessible()V

    .line 54
    invoke-interface {v0, p1}, Lnet/vidageek/mirror/provider/MethodReflectionProvider;->invoke([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public withoutArgs()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    .line 58
    invoke-virtual {p0, v0}, Lnet/vidageek/mirror/invoke/MethodHandlerByMethod;->withArgs([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
