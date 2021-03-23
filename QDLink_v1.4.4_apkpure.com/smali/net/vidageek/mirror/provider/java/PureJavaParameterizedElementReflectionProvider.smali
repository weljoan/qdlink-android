.class public Lnet/vidageek/mirror/provider/java/PureJavaParameterizedElementReflectionProvider;
.super Ljava/lang/Object;
.source "PureJavaParameterizedElementReflectionProvider.java"

# interfaces
.implements Lnet/vidageek/mirror/provider/ParameterizedElementReflectionProvider;


# instance fields
.field private final accessor:Lnet/vidageek/mirror/provider/GenericTypeAccessor;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/GenericTypeAccessor;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/vidageek/mirror/provider/java/PureJavaParameterizedElementReflectionProvider;->accessor:Lnet/vidageek/mirror/provider/GenericTypeAccessor;

    return-void
.end method


# virtual methods
.method public getTypeAtPosition(I)Ljava/lang/Class;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 28
    :try_start_0
    iget-object v0, p0, Lnet/vidageek/mirror/provider/java/PureJavaParameterizedElementReflectionProvider;->accessor:Lnet/vidageek/mirror/provider/GenericTypeAccessor;

    invoke-interface {v0}, Lnet/vidageek/mirror/provider/GenericTypeAccessor;->getGenericTypes()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 35
    :try_start_1
    aget-object v0, v0, p1

    check-cast v0, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 37
    :catch_0
    new-instance v0, Lnet/vidageek/mirror/exception/MirrorException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "No type declared at position %d."

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/exception/MirrorException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p1

    .line 30
    new-instance v0, Lnet/vidageek/mirror/exception/MirrorException;

    const-string v1, "Element is not parameterized with a generic type."

    invoke-direct {v0, v1, p1}, Lnet/vidageek/mirror/exception/MirrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
