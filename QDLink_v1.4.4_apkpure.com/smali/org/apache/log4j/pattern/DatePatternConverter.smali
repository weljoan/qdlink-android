.class public final Lorg/apache/log4j/pattern/DatePatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "DatePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;
    }
.end annotation


# static fields
.field private static final ABSOLUTE_FORMAT:Ljava/lang/String; = "ABSOLUTE"

.field private static final ABSOLUTE_TIME_PATTERN:Ljava/lang/String; = "HH:mm:ss,SSS"

.field private static final DATE_AND_TIME_FORMAT:Ljava/lang/String; = "DATE"

.field private static final DATE_AND_TIME_PATTERN:Ljava/lang/String; = "dd MMM yyyy HH:mm:ss,SSS"

.field private static final ISO8601_FORMAT:Ljava/lang/String; = "ISO8601"

.field private static final ISO8601_PATTERN:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss,SSS"


# instance fields
.field private final df:Lorg/apache/log4j/pattern/CachedDateFormat;


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 6

    const-string v0, "Date"

    const-string v1, "date"

    .line 113
    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 117
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 122
    aget-object v0, p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    const-string v1, "yyyy-MM-dd HH:mm:ss,SSS"

    if-eqz v0, :cond_5

    const-string v2, "ISO8601"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    const-string v2, "ABSOLUTE"

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "HH:mm:ss,SSS"

    goto :goto_3

    :cond_3
    const-string v2, "DATE"

    .line 133
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "dd MMM yyyy HH:mm:ss,SSS"

    goto :goto_3

    :cond_4
    move-object v2, v0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v2, v1

    :goto_3
    const/16 v3, 0x3e8

    .line 143
    :try_start_0
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static {v2}, Lorg/apache/log4j/pattern/CachedDateFormat;->getMaximumCacheValidity(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v2

    .line 146
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Could not instantiate SimpleDateFormat with pattern "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 151
    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-direct {v4, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_4
    if-eqz p1, :cond_6

    .line 155
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_6

    .line 156
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p1

    .line 157
    invoke-virtual {v4, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    move-object p1, v4

    goto :goto_5

    .line 159
    :cond_6
    new-instance p1, Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;

    invoke-direct {p1, v4}, Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;-><init>(Ljava/text/DateFormat;)V

    .line 162
    :goto_5
    new-instance v0, Lorg/apache/log4j/pattern/CachedDateFormat;

    invoke-direct {v0, p1, v3}, Lorg/apache/log4j/pattern/CachedDateFormat;-><init>(Ljava/text/DateFormat;I)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/DatePatternConverter;->df:Lorg/apache/log4j/pattern/CachedDateFormat;

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/DatePatternConverter;
    .locals 1

    .line 172
    new-instance v0, Lorg/apache/log4j/pattern/DatePatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/DatePatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V
    .locals 1

    .line 188
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 189
    move-object v0, p1

    check-cast v0, Ljava/util/Date;

    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/pattern/DatePatternConverter;->format(Ljava/util/Date;Ljava/lang/StringBuffer;)V

    .line 192
    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;->format(Ljava/lang/Object;Ljava/lang/StringBuffer;)V

    return-void
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;)V
    .locals 3

    .line 201
    monitor-enter p0

    .line 202
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/DatePatternConverter;->df:Lorg/apache/log4j/pattern/CachedDateFormat;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lorg/apache/log4j/pattern/CachedDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 203
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 3

    .line 179
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/DatePatternConverter;->df:Lorg/apache/log4j/pattern/CachedDateFormat;

    iget-wide v1, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {v0, v1, v2, p2}, Lorg/apache/log4j/pattern/CachedDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 181
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
