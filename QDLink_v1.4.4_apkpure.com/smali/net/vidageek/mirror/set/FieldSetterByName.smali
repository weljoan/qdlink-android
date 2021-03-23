.class public final Lnet/vidageek/mirror/set/FieldSetterByName;
.super Ljava/lang/Object;
.source "FieldSetterByName.java"

# interfaces
.implements Lnet/vidageek/mirror/set/dsl/FieldSetter;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final fieldName:Ljava/lang/String;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/vidageek/mirror/provider/ReflectionProvider;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_1

    .line 31
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    .line 39
    iput-object p1, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 40
    iput-object p2, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->fieldName:Ljava/lang/String;

    .line 41
    iput-object p3, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->target:Ljava/lang/Object;

    .line 42
    iput-object p4, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->clazz:Ljava/lang/Class;

    return-void

    .line 36
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "clazz cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 32
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "fieldName cannot be null or blank"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public withValue(Ljava/lang/Object;)V
    .locals 5

    .line 46
    new-instance v0, Lnet/vidageek/mirror/dsl/Mirror;

    iget-object v1, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    iget-object v1, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->clazz:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/dsl/ClassController;->reflect()Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;

    move-result-object v0

    iget-object v1, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->fieldName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/reflect/dsl/ReflectionHandler;->field(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v1, Lnet/vidageek/mirror/set/FieldSetterByField;

    iget-object v2, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v3, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->target:Ljava/lang/Object;

    iget-object v4, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->clazz:Ljava/lang/Class;

    invoke-direct {v1, v2, v3, v4, v0}, Lnet/vidageek/mirror/set/FieldSetterByField;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    invoke-virtual {v1, p1}, Lnet/vidageek/mirror/set/FieldSetterByField;->withValue(Ljava/lang/Object;)V

    return-void

    .line 48
    :cond_0
    new-instance p1, Lnet/vidageek/mirror/exception/MirrorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "could not find field "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->fieldName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " on class "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/vidageek/mirror/set/FieldSetterByName;->clazz:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lnet/vidageek/mirror/exception/MirrorException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
