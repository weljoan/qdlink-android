.class public final Lnet/vidageek/mirror/dsl/Mirror;
.super Ljava/lang/Object;
.source "Mirror.java"


# static fields
.field private static final MIRROR_CFG:Ljava/lang/String; = "/mirror.properties"

.field private static final cachedProvider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# instance fields
.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Lnet/vidageek/mirror/config/MirrorProviderBuilder;

    const-class v1, Lnet/vidageek/mirror/dsl/Mirror;

    const-string v2, "/mirror.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/vidageek/mirror/config/MirrorProviderBuilder;-><init>(Ljava/net/URL;)V

    invoke-virtual {v0}, Lnet/vidageek/mirror/config/MirrorProviderBuilder;->createProvider()Lnet/vidageek/mirror/provider/ReflectionProvider;

    move-result-object v0

    sput-object v0, Lnet/vidageek/mirror/dsl/Mirror;->cachedProvider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    sget-object v0, Lnet/vidageek/mirror/dsl/Mirror;->cachedProvider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iput-object v0, p0, Lnet/vidageek/mirror/dsl/Mirror;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    return-void
.end method

.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lnet/vidageek/mirror/dsl/Mirror;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    return-void
.end method


# virtual methods
.method public on(Ljava/lang/Object;)Lnet/vidageek/mirror/dsl/AccessorsController;
    .locals 2

    .line 88
    new-instance v0, Lnet/vidageek/mirror/DefaultAccessorsController;

    iget-object v1, p0, Lnet/vidageek/mirror/dsl/Mirror;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1, p1}, Lnet/vidageek/mirror/DefaultAccessorsController;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Object;)V

    return-object v0
.end method

.method public on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/vidageek/mirror/dsl/ClassController<",
            "TT;>;"
        }
    .end annotation

    .line 75
    new-instance v0, Lnet/vidageek/mirror/DefaultClassController;

    iget-object v1, p0, Lnet/vidageek/mirror/dsl/Mirror;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1, p1}, Lnet/vidageek/mirror/DefaultClassController;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/Class;)V

    return-object v0
.end method

.method public on(Ljava/lang/String;)Lnet/vidageek/mirror/dsl/ClassController;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/vidageek/mirror/dsl/ClassController<",
            "*>;"
        }
    .end annotation

    .line 98
    invoke-virtual {p0, p1}, Lnet/vidageek/mirror/dsl/Mirror;->reflectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object p1

    return-object p1
.end method

.method public on(Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/dsl/FieldController;
    .locals 2

    .line 124
    new-instance v0, Lnet/vidageek/mirror/DefaultFieldController;

    iget-object v1, p0, Lnet/vidageek/mirror/dsl/Mirror;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1, p1}, Lnet/vidageek/mirror/DefaultFieldController;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public on(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/dsl/MemberController;
    .locals 2

    .line 111
    new-instance v0, Lnet/vidageek/mirror/DefaultMemberController;

    iget-object v1, p0, Lnet/vidageek/mirror/dsl/Mirror;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v0, v1, p1}, Lnet/vidageek/mirror/DefaultMemberController;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method

.method public reflectClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lnet/vidageek/mirror/dsl/Mirror;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-interface {v0, p1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getClassReflectionProvider(Ljava/lang/String;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;

    move-result-object p1

    invoke-interface {p1}, Lnet/vidageek/mirror/provider/ClassReflectionProvider;->reflectClass()Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "className cannot be null or empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
