.class public final Lnet/vidageek/mirror/get/DefaultGetterHandler;
.super Ljava/lang/Object;
.source "DefaultGetterHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/get/dsl/GetterHandler;


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

.field private final target:Ljava/lang/Object;


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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 41
    iput-object p1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 42
    iput-object p2, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->clazz:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 43
    iput-object p1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->target:Ljava/lang/Object;

    return-void

    .line 39
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clazz cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 32
    iput-object p1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->clazz:Ljava/lang/Class;

    .line 34
    iput-object p2, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->target:Ljava/lang/Object;

    return-void

    .line 30
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .line 76
    new-instance v0, Lnet/vidageek/mirror/dsl/Mirror;

    iget-object v1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/dsl/ClassController;->reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;->field(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Lnet/vidageek/mirror/exception/MirrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not find field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/exception/MirrorException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public field(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0, p1}, Lnet/vidageek/mirror/get/DefaultGetterHandler;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/vidageek/mirror/get/DefaultGetterHandler;->field(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 48
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fieldName cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public field(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 3

    if-eqz p1, :cond_3

    .line 58
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 63
    iget-object v0, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->target:Ljava/lang/Object;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "attempt to get instance field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " on class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->target:Ljava/lang/Object;

    iget-object v2, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->clazz:Ljava/lang/Class;

    invoke-interface {v0, v1, v2, p1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getFieldReflectionProvider(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/provider/FieldReflectionProvider;

    move-result-object p1

    .line 69
    invoke-interface {p1}, Lnet/vidageek/mirror/provider/FieldReflectionProvider;->setAccessible()V

    .line 71
    invoke-interface {p1}, Lnet/vidageek/mirror/provider/FieldReflectionProvider;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 59
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field declaring class ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") doesn\'t match clazz "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/vidageek/mirror/get/DefaultGetterHandler;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "field cannot be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
