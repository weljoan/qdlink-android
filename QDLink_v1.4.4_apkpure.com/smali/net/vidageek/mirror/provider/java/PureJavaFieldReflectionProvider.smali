.class public final Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;
.super Ljava/lang/Object;
.source "PureJavaFieldReflectionProvider.java"

# interfaces
.implements Lnet/vidageek/mirror/provider/FieldReflectionProvider;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final field:Ljava/lang/reflect/Field;

.field private final target:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->target:Ljava/lang/Object;

    .line 23
    iput-object p2, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->clazz:Ljava/lang/Class;

    .line 24
    iput-object p3, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->field:Ljava/lang/reflect/Field;

    return-void
.end method


# virtual methods
.method public getValue()Ljava/lang/Object;
    .locals 3

    .line 40
    :try_start_0
    invoke-virtual {p0}, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->setAccessible()V

    .line 41
    iget-object v0, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->target:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 43
    :catch_0
    new-instance v0, Lnet/vidageek/mirror/exception/ReflectionProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not get value for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " of class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->clazz:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/vidageek/mirror/exception/ReflectionProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAccessible()V
    .locals 2

    .line 49
    iget-object v0, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->field:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    return-void
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 3

    .line 29
    :try_start_0
    invoke-virtual {p0}, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->setAccessible()V

    .line 30
    iget-object v0, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->field:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->target:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 33
    :catch_0
    new-instance v0, Lnet/vidageek/mirror/exception/ReflectionProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "could not set value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on field "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->field:Ljava/lang/reflect/Field;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " of class "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;->clazz:Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/exception/ReflectionProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
