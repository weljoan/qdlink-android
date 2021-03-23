.class public Lnet/vidageek/mirror/DefaultFieldController;
.super Ljava/lang/Object;
.source "DefaultFieldController.java"

# interfaces
.implements Lnet/vidageek/mirror/dsl/FieldController;


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/Field;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 26
    iput-object p1, p0, Lnet/vidageek/mirror/DefaultFieldController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 27
    iput-object p2, p0, Lnet/vidageek/mirror/DefaultFieldController;->field:Ljava/lang/reflect/Field;

    return-void

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument field cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public reflect()Lnet/vidageek/mirror/reflect/dsl/FieldHandler;
    .locals 3

    .line 31
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultFieldHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultFieldController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultFieldController;->field:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/reflect/DefaultFieldHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public reflectAll()Lnet/vidageek/mirror/reflect/dsl/AllMemberHandler;
    .locals 3

    .line 35
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultFieldController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultFieldController;->field:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method
