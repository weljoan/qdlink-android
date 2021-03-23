.class public final Lorg/apache/log4j/pattern/CachedDateFormat;
.super Ljava/text/DateFormat;
.source "CachedDateFormat.java"


# static fields
.field private static final DIGITS:Ljava/lang/String; = "0123456789"

.field private static final MAGIC1:I = 0x28e

.field private static final MAGIC2:I = 0x3db

.field private static final MAGICSTRING1:Ljava/lang/String; = "654"

.field private static final MAGICSTRING2:Ljava/lang/String; = "987"

.field public static final NO_MILLISECONDS:I = -0x2

.field public static final UNRECOGNIZED_MILLISECONDS:I = -0x1

.field private static final ZERO_STRING:Ljava/lang/String; = "000"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private cache:Ljava/lang/StringBuffer;

.field private final expiration:I

.field private final formatter:Ljava/text/DateFormat;

.field private millisecondStart:I

.field private previousTime:J

.field private slotBegin:J

.field private final tmpDate:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/text/DateFormat;I)V
    .locals 3

    .line 132
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    .line 122
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->tmpDate:Ljava/util/Date;

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    .line 141
    iput-object p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    .line 142
    iput p2, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->expiration:I

    const/4 p1, 0x0

    .line 143
    iput p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    const-wide/high16 p1, -0x8000000000000000L

    .line 148
    iput-wide p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    .line 149
    iput-wide p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    return-void

    .line 138
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "expiration must be non-negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "dateFormat cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static findMillisecondStart(JLjava/lang/String;Ljava/text/DateFormat;)I
    .locals 8

    const-wide/16 v0, 0x3e8

    .line 163
    div-long v2, p0, v0

    mul-long v2, v2, v0

    cmp-long v4, v2, p0

    if-lez v4, :cond_0

    sub-long/2addr v2, v0

    :cond_0
    sub-long/2addr p0, v2

    long-to-int p1, p0

    const/16 p0, 0x28e

    if-ne p1, p0, :cond_1

    const/16 p0, 0x3db

    const-string v0, "987"

    goto :goto_0

    :cond_1
    const-string v0, "654"

    .line 179
    :goto_0
    new-instance v1, Ljava/util/Date;

    int-to-long v4, p0

    add-long/2addr v4, v2

    invoke-direct {v1, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 185
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, -0x1

    if-eq v1, v4, :cond_2

    return v5

    :cond_2
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 189
    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_5

    .line 190
    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v6, v7, :cond_4

    .line 193
    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "ABC"

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 194
    invoke-static {p1, v6, v1}, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondFormat(ILjava/lang/StringBuffer;I)V

    .line 196
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p3, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne p3, v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {v0, v1, p0, v4, p3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, v1, p2, v4, p3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x3

    const-string p2, "000"

    invoke-virtual {p2, v1, p1, v4, p0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_3

    return v4

    :cond_3
    return v5

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    const/4 p0, -0x2

    return p0
.end method

.method public static getMaximumCacheValidity(Ljava/lang/String;)I
    .locals 2

    const/16 v0, 0x53

    .line 364
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v1, "SSS"

    .line 366
    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/16 p0, 0x3e8

    return p0
.end method

.method private static millisecondFormat(ILjava/lang/StringBuffer;I)V
    .locals 3

    .line 313
    div-int/lit8 v0, p0, 0x64

    const-string v1, "0123456789"

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, p2, 0x1

    .line 314
    div-int/lit8 v2, p0, 0xa

    rem-int/lit8 v2, v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 p2, p2, 0x2

    .line 315
    rem-int/lit8 p0, p0, 0xa

    invoke-virtual {v1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    return-void
.end method


# virtual methods
.method public format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 8

    .line 246
    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 247
    iget-object p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p3

    .line 256
    :cond_0
    iget v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    const/4 v1, -0x1

    const-wide/16 v2, 0x3e8

    if-eq v0, v1, :cond_2

    iget-wide v4, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    iget v1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->expiration:I

    int-to-long v6, v1

    add-long/2addr v6, v4

    cmp-long v1, p1, v6

    if-gez v1, :cond_2

    cmp-long v1, p1, v4

    if-ltz v1, :cond_2

    add-long v6, v4, v2

    cmp-long v1, p1, v6

    if-gez v1, :cond_2

    if-ltz v0, :cond_1

    sub-long v1, p1, v4

    long-to-int v2, v1

    .line 266
    iget-object v1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-static {v2, v1, v0}, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondFormat(ILjava/lang/StringBuffer;I)V

    .line 272
    :cond_1
    iput-wide p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    .line 273
    iget-object p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p3

    .line 281
    :cond_2
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 282
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->tmpDate:Ljava/util/Date;

    invoke-virtual {v0, p1, p2}, Ljava/util/Date;->setTime(J)V

    .line 283
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    iget-object v4, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->tmpDate:Ljava/util/Date;

    invoke-virtual {v1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 284
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 285
    iput-wide p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    .line 286
    iget-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    div-long v4, v0, v2

    mul-long v4, v4, v2

    iput-wide v4, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    .line 288
    iget-wide v4, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    cmp-long v6, v4, v0

    if-lez v6, :cond_3

    sub-long/2addr v4, v2

    .line 289
    iput-wide v4, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    .line 296
    :cond_3
    iget v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    if-ltz v0, :cond_4

    .line 297
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->cache:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-static {p1, p2, v0, v1}, Lorg/apache/log4j/pattern/CachedDateFormat;->findMillisecondStart(JLjava/lang/String;Ljava/text/DateFormat;)I

    move-result p1

    iput p1, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->millisecondStart:I

    :cond_4
    return-object p3
.end method

.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 229
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/log4j/pattern/CachedDateFormat;->format(JLjava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    return-object p2
.end method

.method public getNumberFormat()Ljava/text/NumberFormat;
    .locals 1

    .line 348
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/text/DateFormat;->getNumberFormat()Ljava/text/NumberFormat;

    move-result-object v0

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 1

    .line 339
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .locals 2

    .line 326
    iget-object v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->formatter:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    const-wide/high16 v0, -0x8000000000000000L

    .line 327
    iput-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->previousTime:J

    .line 328
    iput-wide v0, p0, Lorg/apache/log4j/pattern/CachedDateFormat;->slotBegin:J

    return-void
.end method
