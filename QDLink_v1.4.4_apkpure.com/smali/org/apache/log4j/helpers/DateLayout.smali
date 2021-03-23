.class public abstract Lorg/apache/log4j/helpers/DateLayout;
.super Lorg/apache/log4j/Layout;
.source "DateLayout.java"


# static fields
.field public static final DATE_FORMAT_OPTION:Ljava/lang/String; = "DateFormat"

.field public static final NULL_DATE_FORMAT:Ljava/lang/String; = "NULL"

.field public static final RELATIVE_TIME_DATE_FORMAT:Ljava/lang/String; = "RELATIVE"

.field public static final TIMEZONE_OPTION:Ljava/lang/String; = "TimeZone"


# instance fields
.field protected date:Ljava/util/Date;

.field protected dateFormat:Ljava/text/DateFormat;

.field private dateFormatOption:Ljava/lang/String;

.field protected pos:Ljava/text/FieldPosition;

.field private timeZoneID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/apache/log4j/Layout;-><init>()V

    .line 51
    new-instance v0, Ljava/text/FieldPosition;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/text/FieldPosition;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->pos:Ljava/text/FieldPosition;

    .line 71
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->date:Ljava/util/Date;

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 2

    .line 136
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/helpers/DateLayout;->setDateFormat(Ljava/lang/String;)V

    .line 137
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->timeZoneID:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    if-eqz v1, :cond_0

    .line 138
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :cond_0
    return-void
.end method

.method public dateFormat(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3

    .line 144
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->date:Ljava/util/Date;

    iget-wide v1, p2, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 146
    iget-object p2, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->date:Ljava/util/Date;

    iget-object v1, p0, Lorg/apache/log4j/helpers/DateLayout;->pos:Ljava/text/FieldPosition;

    invoke-virtual {p2, v0, p1, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    const/16 p2, 0x20

    .line 147
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    return-object v0
.end method

.method public getOptionStrings()[Ljava/lang/String;
    .locals 2

    const-string v0, "DateFormat"

    const-string v1, "TimeZone"

    .line 79
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeZone()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->timeZoneID:Ljava/lang/String;

    return-object v0
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 104
    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    .line 106
    :cond_0
    iget-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/helpers/DateLayout;->setDateFormat(Ljava/lang/String;Ljava/util/TimeZone;)V

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;Ljava/util/TimeZone;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 178
    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    return-void

    :cond_0
    const-string v1, "NULL"

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    :cond_1
    const-string v0, "RELATIVE"

    .line 184
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    new-instance p1, Lorg/apache/log4j/helpers/RelativeTimeDateFormat;

    invoke-direct {p1}, Lorg/apache/log4j/helpers/RelativeTimeDateFormat;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    :cond_2
    const-string v0, "ABSOLUTE"

    .line 186
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    new-instance p1, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;

    invoke-direct {p1, p2}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    :cond_3
    const-string v0, "DATE"

    .line 189
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 191
    new-instance p1, Lorg/apache/log4j/helpers/DateTimeDateFormat;

    invoke-direct {p1, p2}, Lorg/apache/log4j/helpers/DateTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    :cond_4
    const-string v0, "ISO8601"

    .line 192
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 194
    new-instance p1, Lorg/apache/log4j/helpers/ISO8601DateFormat;

    invoke-direct {p1, p2}, Lorg/apache/log4j/helpers/ISO8601DateFormat;-><init>(Ljava/util/TimeZone;)V

    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    goto :goto_0

    .line 196
    :cond_5
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    .line 197
    iget-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    :goto_0
    return-void
.end method

.method public setDateFormat(Ljava/text/DateFormat;Ljava/util/TimeZone;)V
    .locals 0

    .line 157
    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    .line 158
    iget-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {p1, p2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    return-void
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "DateFormat"

    .line 88
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->dateFormatOption:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "TimeZone"

    .line 90
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    iput-object p2, p0, Lorg/apache/log4j/helpers/DateLayout;->timeZoneID:Ljava/lang/String;

    :cond_1
    :goto_0
    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lorg/apache/log4j/helpers/DateLayout;->timeZoneID:Ljava/lang/String;

    return-void
.end method
