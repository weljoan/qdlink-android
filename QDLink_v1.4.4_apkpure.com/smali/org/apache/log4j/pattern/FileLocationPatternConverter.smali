.class public final Lorg/apache/log4j/pattern/FileLocationPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "FileLocationPatternConverter.java"


# static fields
.field private static final INSTANCE:Lorg/apache/log4j/pattern/FileLocationPatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/log4j/pattern/FileLocationPatternConverter;

    invoke-direct {v0}, Lorg/apache/log4j/pattern/FileLocationPatternConverter;-><init>()V

    sput-object v0, Lorg/apache/log4j/pattern/FileLocationPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/FileLocationPatternConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    const-string v0, "File Location"

    const-string v1, "file"

    .line 41
    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/FileLocationPatternConverter;
    .locals 0

    .line 51
    sget-object p0, Lorg/apache/log4j/pattern/FileLocationPatternConverter;->INSTANCE:Lorg/apache/log4j/pattern/FileLocationPatternConverter;

    return-object p0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 0

    .line 58
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LocationInfo;->getFileName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method
