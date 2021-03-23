.class public final Lorg/apache/log4j/pattern/MessagePatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "MessagePatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/MessagePatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    new-instance v0, Lorg/apache/log4j/pattern/MessagePatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/MessagePatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/MessagePatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/MessagePatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "Message"

    const-string v1, "message"

    .line 39
    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/MessagePatternConverter;
    .locals 0

    .line 49
    sget-object p0, Lorg/apache/log4j/pattern/MessagePatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/MessagePatternConverter;

    return-object p0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 56
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method
