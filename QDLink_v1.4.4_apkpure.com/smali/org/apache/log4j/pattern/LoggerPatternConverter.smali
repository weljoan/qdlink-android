.class public final Lorg/apache/log4j/pattern/LoggerPatternConverter;
.super Lorg/apache/log4j/pattern/NamePatternConverter;
.source "LoggerPatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/LoggerPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/log4j/pattern/LoggerPatternConverter;-><init>([Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LoggerPatternConverter;

    return-void
.end method

.method private constructor <init>([Ljava/lang/String;)V
    .locals 2

    const-string v0, "Logger"

    const-string v1, "logger"

    .line 41
    invoke-direct {p0, v0, v1, p1}, Lorg/apache/log4j/pattern/NamePatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/LoggerPatternConverter;
    .locals 1

    if-eqz p0, :cond_1

    .line 51
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance v0, Lorg/apache/log4j/pattern/LoggerPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/LoggerPatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0

    .line 52
    :cond_1
    :goto_0
    sget-object p0, Lorg/apache/log4j/pattern/LoggerPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/LoggerPatternConverter;

    return-object p0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 62
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 63
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/pattern/LoggerPatternConverter;->abbreviate(ILjava/lang/StringBuffer;)V

    return-void
.end method
