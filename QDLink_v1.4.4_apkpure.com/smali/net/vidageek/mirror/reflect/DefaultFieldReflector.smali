.class public final Lnet/vidageek/mirror/reflect/DefaultFieldReflector;
.super Ljava/lang/Object;
.source "DefaultFieldReflector.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/FieldReflector;


# instance fields
.field private final fieldName:Ljava/lang/String;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/String;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 23
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultFieldReflector;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 27
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultFieldReflector;->fieldName:Ljava/lang/String;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldName cannot be null or blank"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public onClass(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 1

    if-eqz p1, :cond_0

    .line 36
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultFieldReflector;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-interface {v0, p1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getClassReflectionProvider(Ljava/lang/Class;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;

    move-result-object p1

    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultFieldReflector;->fieldName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lnet/vidageek/mirror/provider/ClassReflectionProvider;->reflectField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    return-object p1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument clazz cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
