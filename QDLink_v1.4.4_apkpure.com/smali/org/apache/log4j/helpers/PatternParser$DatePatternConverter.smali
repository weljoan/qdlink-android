.class Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;
.super Lorg/apache/log4j/helpers/PatternConverter;
.source "PatternParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/helpers/PatternParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatePatternConverter"
.end annotation


# instance fields
.field private date:Ljava/util/Date;

.field private df:Ljava/text/DateFormat;


# direct methods
.method constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;Ljava/text/DateFormat;)V
    .locals 0

    .line 433
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternConverter;-><init>(Lorg/apache/log4j/helpers/FormattingInfo;)V

    .line 434
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->date:Ljava/util/Date;

    .line 435
    iput-object p2, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->df:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 3

    .line 440
    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->date:Ljava/util/Date;

    iget-wide v1, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 443
    :try_start_0
    iget-object p1, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->df:Ljava/text/DateFormat;

    iget-object v0, p0, Lorg/apache/log4j/helpers/PatternParser$DatePatternConverter;->date:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "Error occured while converting date."

    .line 446
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
