.class public final Lnet/vidageek/mirror/set/DefaultSetterHandler;
.super Ljava/lang/Object;
.source "DefaultSetterHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/set/dsl/SetterHandler;


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

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 38
    iput-object p1, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 39
    iput-object p2, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->clazz:Ljava/lang/Class;

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->target:Ljava/lang/Object;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clazz cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 29
    iput-object p1, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 30
    iput-object p2, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->target:Ljava/lang/Object;

    .line 31
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->clazz:Ljava/lang/Class;

    return-void

    .line 27
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "target cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public field(Ljava/lang/String;)Lnet/vidageek/mirror/set/dsl/FieldSetter;
    .locals 4

    if-eqz p1, :cond_0

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Lnet/vidageek/mirror/set/FieldSetterByName;

    iget-object v1, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->target:Ljava/lang/Object;

    iget-object v3, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, p1, v2, v3}, Lnet/vidageek/mirror/set/FieldSetterByName;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    return-object v0

    .line 45
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fieldName cannot be null or empty."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public field(Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/set/dsl/FieldSetter;
    .locals 4

    if-eqz p1, :cond_0

    .line 54
    new-instance v0, Lnet/vidageek/mirror/set/FieldSetterByField;

    iget-object v1, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->target:Ljava/lang/Object;

    iget-object v3, p0, Lnet/vidageek/mirror/set/DefaultSetterHandler;->clazz:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, v3, p1}, Lnet/vidageek/mirror/set/FieldSetterByField;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v0

    .line 52
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "parameter field cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
