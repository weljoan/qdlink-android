.class public Lnet/vidageek/mirror/provider/java/PureJavaClassGenericTypeAccessor;
.super Ljava/lang/Object;
.source "PureJavaClassGenericTypeAccessor.java"

# interfaces
.implements Lnet/vidageek/mirror/provider/GenericTypeAccessor;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lnet/vidageek/mirror/provider/java/PureJavaClassGenericTypeAccessor;->clazz:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getGenericTypes()Ljava/lang/reflect/Type;
    .locals 1

    .line 21
    iget-object v0, p0, Lnet/vidageek/mirror/provider/java/PureJavaClassGenericTypeAccessor;->clazz:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
