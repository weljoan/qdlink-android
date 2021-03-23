.class public final Lorg/apache/log4j/pattern/ClassNamePatternConverter;
.super Lorg/apache/log4j/pattern/NamePatternConverter;
.source "ClassNamePatternConverter.java"


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 2

    const-string v0, "Class Name"

    const-string v1, "class name"

    .line 36
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/log4j/pattern/NamePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/ClassNamePatternConverter;
    .locals 1

    .line 46
    new-instance v0, Lorg/apache/log4j/pattern/ClassNamePatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/ClassNamePatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 55
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 56
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "?"

    .line 59
    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LocationInfo;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    :goto_0
    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/pattern/ClassNamePatternConverter;->abbreviate(ILjava/lang/StringBuffer;)V

    return-void
.end method
