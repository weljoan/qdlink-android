.class public final Lnet/vidageek/mirror/DefaultMemberController;
.super Ljava/lang/Object;
.source "DefaultMemberController.java"

# interfaces
.implements Lnet/vidageek/mirror/dsl/MemberController;


# instance fields
.field private final member:Ljava/lang/reflect/AnnotatedElement;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 27
    iput-object p1, p0, Lnet/vidageek/mirror/DefaultMemberController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 28
    iput-object p2, p0, Lnet/vidageek/mirror/DefaultMemberController;->member:Ljava/lang/reflect/AnnotatedElement;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument member cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public reflect()Lnet/vidageek/mirror/reflect/dsl/MemberHandler;
    .locals 3

    .line 36
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultMemberHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultMemberController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultMemberController;->member:Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/reflect/DefaultMemberHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method

.method public reflectAll()Lnet/vidageek/mirror/reflect/dsl/AllMemberHandler;
    .locals 3

    .line 32
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;

    iget-object v1, p0, Lnet/vidageek/mirror/DefaultMemberController;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v2, p0, Lnet/vidageek/mirror/DefaultMemberController;->member:Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v0, v1, v2}, Lnet/vidageek/mirror/reflect/DefaultAllMemberHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method
