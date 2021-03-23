.class Lorg/apache/log4j/jmx/MethodUnion;
.super Ljava/lang/Object;
.source "MethodUnion.java"


# instance fields
.field readMethod:Ljava/lang/reflect/Method;

.field writeMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lorg/apache/log4j/jmx/MethodUnion;->readMethod:Ljava/lang/reflect/Method;

    .line 29
    iput-object p2, p0, Lorg/apache/log4j/jmx/MethodUnion;->writeMethod:Ljava/lang/reflect/Method;

    return-void
.end method
