.class public abstract Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.super Lorg/apache/log4j/pattern/PatternConverter;
.source "LoggingEventPatternConverter.java"


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/pattern/PatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 53
    instance-of v0, p1, Lorg/apache/log4j/spi/LoggingEvent;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lorg/apache/log4j/spi/LoggingEvent;

    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;->format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V

    :cond_0
    return-void
.end method

.method public abstract format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
.end method

.method public handlesThrowable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
