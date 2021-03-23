.class public Lnet/vidageek/mirror/reflect/DefaultParameterizedElementHandler;
.super Ljava/lang/Object;
.source "DefaultParameterizedElementHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/ParameterizedElementHandler;


# instance fields
.field private final accessor:Lnet/vidageek/mirror/provider/GenericTypeAccessor;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Lnet/vidageek/mirror/provider/GenericTypeAccessor;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 23
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultParameterizedElementHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 24
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultParameterizedElementHandler;->accessor:Lnet/vidageek/mirror/provider/GenericTypeAccessor;

    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument accessor cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public atPosition(I)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultParameterizedElementHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultParameterizedElementHandler;->accessor:Lnet/vidageek/mirror/provider/GenericTypeAccessor;

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/provider/ReflectionProvider;->getParameterizedElementProvider(Lnet/vidageek/mirror/provider/GenericTypeAccessor;)Lnet/vidageek/mirror/provider/ParameterizedElementReflectionProvider;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/vidageek/mirror/provider/ParameterizedElementReflectionProvider;->getTypeAtPosition(I)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
