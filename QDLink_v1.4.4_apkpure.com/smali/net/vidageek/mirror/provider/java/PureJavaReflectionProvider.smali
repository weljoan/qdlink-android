.class public final Lnet/vidageek/mirror/provider/java/PureJavaReflectionProvider;
.super Ljava/lang/Object;
.source "PureJavaReflectionProvider.java"

# interfaces
.implements Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnnotatedElementReflectionProvider(Ljava/lang/reflect/AnnotatedElement;)Lnet/vidageek/mirror/provider/AnnotatedElementReflectionProvider;
    .locals 1

    .line 46
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaAnnotatedElementReflectionProvider;

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/provider/java/PureJavaAnnotatedElementReflectionProvider;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0
.end method

.method public getClassGenericTypeAccessor(Ljava/lang/Class;)Lnet/vidageek/mirror/provider/GenericTypeAccessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/vidageek/mirror/provider/GenericTypeAccessor;"
        }
    .end annotation

    .line 60
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaClassGenericTypeAccessor;

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/provider/java/PureJavaClassGenericTypeAccessor;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getClassReflectionProvider(Ljava/lang/Class;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lnet/vidageek/mirror/provider/ClassReflectionProvider<",
            "TT;>;"
        }
    .end annotation

    .line 31
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaClassReflectionProvider;

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/provider/java/PureJavaClassReflectionProvider;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method

.method public getClassReflectionProvider(Ljava/lang/String;)Lnet/vidageek/mirror/provider/ClassReflectionProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lnet/vidageek/mirror/provider/ClassReflectionProvider<",
            "*>;"
        }
    .end annotation

    .line 26
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaClassReflectionProvider;

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/provider/java/PureJavaClassReflectionProvider;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getConstructorReflectionProvider(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)Lnet/vidageek/mirror/provider/ConstructorReflectionProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/reflect/Constructor<",
            "TT;>;)",
            "Lnet/vidageek/mirror/provider/ConstructorReflectionProvider<",
            "TT;>;"
        }
    .end annotation

    .line 41
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaConstructorReflectionProvider;

    invoke-direct {v0, p1, p2}, Lnet/vidageek/mirror/provider/java/PureJavaConstructorReflectionProvider;-><init>(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    return-object v0
.end method

.method public getFieldGenericTypeAccessor(Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/provider/GenericTypeAccessor;
    .locals 1

    .line 64
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaFieldGenericTypeAccessor;

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/provider/java/PureJavaFieldGenericTypeAccessor;-><init>(Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public getFieldReflectionProvider(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)Lnet/vidageek/mirror/provider/FieldReflectionProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Field;",
            ")",
            "Lnet/vidageek/mirror/provider/FieldReflectionProvider;"
        }
    .end annotation

    .line 36
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;

    invoke-direct {v0, p1, p2, p3}, Lnet/vidageek/mirror/provider/java/PureJavaFieldReflectionProvider;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Field;)V

    return-object v0
.end method

.method public getMethodReflectionProvider(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)Lnet/vidageek/mirror/provider/MethodReflectionProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lnet/vidageek/mirror/provider/MethodReflectionProvider;"
        }
    .end annotation

    .line 51
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaMethodReflectionProvider;

    invoke-direct {v0, p1, p2, p3}, Lnet/vidageek/mirror/provider/java/PureJavaMethodReflectionProvider;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/reflect/Method;)V

    return-object v0
.end method

.method public getParameterizedElementProvider(Lnet/vidageek/mirror/provider/GenericTypeAccessor;)Lnet/vidageek/mirror/provider/ParameterizedElementReflectionProvider;
    .locals 1

    .line 56
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaParameterizedElementReflectionProvider;

    invoke-direct {v0, p1}, Lnet/vidageek/mirror/provider/java/PureJavaParameterizedElementReflectionProvider;-><init>(Lnet/vidageek/mirror/provider/GenericTypeAccessor;)V

    return-object v0
.end method
