.class public Lorg/apache/log4j/helpers/ISO8601DateFormat;
.super Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;
.source "ISO8601DateFormat.java"


# static fields
.field private static lastTime:J = 0x0L

.field private static lastTimeString:[C = null

.field private static final serialVersionUID:J = -0xa8b7f21cd667ee0L


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [C

    .line 55
    sput-object v0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/TimeZone;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/AbsoluteTimeDateFormat;-><init>(Ljava/util/TimeZone;)V

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 8

    .line 67
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    .line 68
    rem-long v2, v0, v2

    long-to-int p3, v2

    int-to-long v2, p3

    sub-long/2addr v0, v2

    .line 70
    sget-wide v2, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    const/4 v4, 0x0

    const/16 v5, 0xa

    const/16 v6, 0x30

    cmp-long v7, v0, v2

    if-nez v7, :cond_1

    sget-object v2, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    aget-char v3, v2, v4

    if-nez v3, :cond_0

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append([C)Ljava/lang/StringBuffer;

    goto/16 :goto_2

    .line 75
    :cond_1
    :goto_0
    iget-object v2, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    invoke-virtual {v2, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 77
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    .line 79
    iget-object v2, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 80
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 83
    iget-object v2, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    const-string v2, "-NA-"

    goto :goto_1

    :pswitch_0
    const-string v2, "-12-"

    goto :goto_1

    :pswitch_1
    const-string v2, "-11-"

    goto :goto_1

    :pswitch_2
    const-string v2, "-10-"

    goto :goto_1

    :pswitch_3
    const-string v2, "-09-"

    goto :goto_1

    :pswitch_4
    const-string v2, "-08-"

    goto :goto_1

    :pswitch_5
    const-string v2, "-07-"

    goto :goto_1

    :pswitch_6
    const-string v2, "-06-"

    goto :goto_1

    :pswitch_7
    const-string v2, "-05-"

    goto :goto_1

    :pswitch_8
    const-string v2, "-04-"

    goto :goto_1

    :pswitch_9
    const-string v2, "-03-"

    goto :goto_1

    :pswitch_a
    const-string v2, "-02-"

    goto :goto_1

    :pswitch_b
    const-string v2, "-01-"

    .line 98
    :goto_1
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 100
    iget-object v2, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v5, :cond_2

    .line 102
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 103
    :cond_2
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x20

    .line 105
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 107
    iget-object v2, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v5, :cond_3

    .line 109
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 111
    :cond_3
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    .line 112
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 114
    iget-object v3, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v7, 0xc

    invoke-virtual {v3, v7}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ge v3, v5, :cond_4

    .line 116
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 118
    :cond_4
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 119
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 121
    iget-object v2, p0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->calendar:Ljava/util/Calendar;

    const/16 v3, 0xd

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v5, :cond_5

    .line 123
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 125
    :cond_5
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v2, 0x2c

    .line 127
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 130
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    sget-object v3, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTimeString:[C

    invoke-virtual {p2, p1, v2, v3, v4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    .line 131
    sput-wide v0, Lorg/apache/log4j/helpers/ISO8601DateFormat;->lastTime:J

    :goto_2
    const/16 p1, 0x64

    if-ge p3, p1, :cond_6

    .line 139
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    if-ge p3, v5, :cond_7

    .line 141
    invoke-virtual {p2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 143
    :cond_7
    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
