.class public final Lnet/vidageek/mirror/Mirror;
.super Ljava/lang/Object;
.source "Mirror.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final mirror:Lnet/vidageek/mirror/dsl/Mirror;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lnet/vidageek/mirror/dsl/Mirror;

    invoke-direct {v0}, Lnet/vidageek/mirror/dsl/Mirror;-><init>()V

    sput-object v0, Lnet/vidageek/mirror/Mirror;->mirror:Lnet/vidageek/mirror/dsl/Mirror;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static on(Ljava/lang/Object;)Lnet/vidageek/mirror/dsl/AccessorsController;
    .locals 1

    .line 71
    sget-object v0, Lnet/vidageek/mirror/Mirror;->mirror:Lnet/vidageek/mirror/dsl/Mirror;

    invoke-virtual {v0, p0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Object;)Lnet/vidageek/mirror/dsl/AccessorsController;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;
    .locals 1
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

    .line 58
    sget-object v0, Lnet/vidageek/mirror/Mirror;->mirror:Lnet/vidageek/mirror/dsl/Mirror;

    invoke-virtual {v0, p0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Class;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/String;)Lnet/vidageek/mirror/dsl/ClassController;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/vidageek/mirror/dsl/ClassController<",
            "*>;"
        }
    .end annotation

    .line 81
    sget-object v0, Lnet/vidageek/mirror/Mirror;->mirror:Lnet/vidageek/mirror/dsl/Mirror;

    invoke-virtual {v0, p0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/String;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/dsl/FieldController;
    .locals 1

    .line 107
    sget-object v0, Lnet/vidageek/mirror/Mirror;->mirror:Lnet/vidageek/mirror/dsl/Mirror;

    invoke-virtual {v0, p0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/dsl/FieldController;

    move-result-object p0

    return-object p0
.end method

.method public static on(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/dsl/MemberController;
    .locals 1

    .line 94
    sget-object v0, Lnet/vidageek/mirror/Mirror;->mirror:Lnet/vidageek/mirror/dsl/Mirror;

    invoke-virtual {v0, p0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/dsl/MemberController;

    move-result-object p0

    return-object p0
.end method

.method public static reflectClass(Ljava/lang/String;)Ljava/lang/Class;
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

    .line 45
    sget-object v0, Lnet/vidageek/mirror/Mirror;->mirror:Lnet/vidageek/mirror/dsl/Mirror;

    invoke-virtual {v0, p0}, Lnet/vidageek/mirror/dsl/Mirror;->reflectClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method
