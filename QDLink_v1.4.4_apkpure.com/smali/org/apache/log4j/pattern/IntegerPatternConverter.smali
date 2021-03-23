.class public final Lorg/apache/log4j/pattern/IntegerPatternConverter;
.super Lorg/apache/log4j/pattern/PatternConverter;
.source "IntegerPatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/IntegerPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/log4j/pattern/IntegerPatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/IntegerPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/IntegerPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/IntegerPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "Integer"

    const-string v1, "integer"

    .line 39
    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/PatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/IntegerPatternConverter;
    .locals 0

    .line 49
    sget-object p0, Lorg/apache/log4j/pattern/IntegerPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/IntegerPatternConverter;

    return-object p0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 2

    .line 56
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :cond_0
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 61
    check-cast p1, Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    return-void
.end method
