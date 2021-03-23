.class public Lnet/vidageek/mirror/provider/java/PureJavaFieldGenericTypeAccessor;
.super Ljava/lang/Object;
.source "PureJavaFieldGenericTypeAccessor.java"

# interfaces
.implements Lnet/vidageek/mirror/provider/GenericTypeAccessor;


# instance fields
.field private final field:Ljava/lang/reflect/Field;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 21
    iput-object p1, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldGenericTypeAccessor;->field:Ljava/lang/reflect/Field;

    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Argument field cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getGenericTypes()Ljava/lang/reflect/Type;
    .locals 1

    .line 25
    iget-object v0, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldGenericTypeAccessor;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method
