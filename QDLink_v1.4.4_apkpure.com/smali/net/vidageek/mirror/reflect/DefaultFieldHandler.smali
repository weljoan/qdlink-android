.class public Lnet/vidageek/mirror/reflect/DefaultFieldHandler;
.super Ljava/lang/Object;
.source "DefaultFieldHandler.java"

# interfaces
.implements Lnet/vidageek/mirror/reflect/dsl/FieldHandler;


# instance fields
.field private final field:Ljava/lang/reflect/Field;

.field private memberHandler:Lnet/vidageek/mirror/reflect/dsl/MemberHandler;

.field private final provider:Lnet/vidageek/mirror/provider/ReflectionProvider;


# direct methods
.method public constructor <init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/Field;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    .line 28
    iput-object p1, p0, Lnet/vidageek/mirror/reflect/DefaultFieldHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    .line 29
    iput-object p2, p0, Lnet/vidageek/mirror/reflect/DefaultFieldHandler;->field:Ljava/lang/reflect/Field;

    .line 30
    new-instance v0, Lnet/vidageek/mirror/reflect/DefaultMemberHandler;

    invoke-direct {v0, p1, p2}, Lnet/vidageek/mirror/reflect/DefaultMemberHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Ljava/lang/reflect/AnnotatedElement;)V

    iput-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultFieldHandler;->memberHandler:Lnet/vidageek/mirror/reflect/dsl/MemberHandler;

    return-void

    .line 25
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Argument field cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public annotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lnet/vidageek/mirror/reflect/DefaultFieldHandler;->memberHandler:Lnet/vidageek/mirror/reflect/dsl/MemberHandler;

    invoke-interface {v0, p1}, Lnet/vidageek/mirror/reflect/dsl/MemberHandler;->annotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    return-object p1
.end method

.method public genericType()Lnet/vidageek/mirror/reflect/dsl/ParameterizedElementHandler;
    .locals 3

    .line 38
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaFieldGenericTypeAccessor;

    iget-object v1, p0, Lnet/vidageek/mirror/reflect/DefaultFieldHandler;->field:Ljava/lang/reflect/Field;

    invoke-direct {v0, v1}, Lnet/vidageek/mirror/provider/java/PureJavaFieldGenericTypeAccessor;-><init>(Ljava/lang/reflect/Field;)V

    .line 40
    new-instance v1, Lnet/vidageek/mirror/reflect/DefaultParameterizedElementHandler;

    iget-object v2, p0, Lnet/vidageek/mirror/reflect/DefaultFieldHandler;->provider:Lnet/vidageek/mirror/provider/ReflectionProvider;

    invoke-direct {v1, v2, v0}, Lnet/vidageek/mirror/reflect/DefaultParameterizedElementHandler;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;Lnet/vidageek/mirror/provider/GenericTypeAccessor;)V

    return-object v1
.end method
