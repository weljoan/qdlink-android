.class Lorg/apache/log4j/RollingCalendar;
.super Ljava/util/GregorianCalendar;
.source "DailyRollingFileAppender.java"


# static fields
.field private static final serialVersionUID:J = -0x3168d6e1c54238a1L


# instance fields
.field type:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 384
    invoke-direct {p0}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v0, -0x1

    .line 381
    iput v0, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    return-void
.end method

.method constructor <init>(Ljava/util/TimeZone;Ljava/util/Locale;)V
    .locals 0

    .line 388
    invoke-direct {p0, p1, p2}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;Ljava/util/Locale;)V

    const/4 p1, -0x1

    .line 381
    iput p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    return-void
.end method


# virtual methods
.method public getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;
    .locals 10

    .line 400
    invoke-virtual {p0, p1}, Lorg/apache/log4j/RollingCalendar;->setTime(Ljava/util/Date;)V

    .line 402
    iget p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    const/16 v0, 0xe

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_6

    const/16 v5, 0xb

    if-eq p1, v3, :cond_5

    const/4 v6, 0x2

    const/4 v7, 0x5

    if-eq p1, v6, :cond_3

    const/4 v8, 0x3

    if-eq p1, v8, :cond_2

    const/4 v9, 0x4

    if-eq p1, v9, :cond_1

    if-ne p1, v7, :cond_0

    .line 442
    invoke-virtual {p0, v7, v3}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 443
    invoke-virtual {p0, v5, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 444
    invoke-virtual {p0, v2, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 445
    invoke-virtual {p0, v1, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 446
    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 447
    invoke-virtual {p0, v6, v3}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    .line 450
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown periodicity type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const/4 p1, 0x7

    .line 434
    invoke-virtual {p0}, Lorg/apache/log4j/RollingCalendar;->getFirstDayOfWeek()I

    move-result v6

    invoke-virtual {p0, p1, v6}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 435
    invoke-virtual {p0, v5, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 436
    invoke-virtual {p0, v2, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 437
    invoke-virtual {p0, v1, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 438
    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 439
    invoke-virtual {p0, v8, v3}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    .line 427
    :cond_2
    invoke-virtual {p0, v5, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 428
    invoke-virtual {p0, v2, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 429
    invoke-virtual {p0, v1, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 430
    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 431
    invoke-virtual {p0, v7, v3}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    .line 415
    :cond_3
    invoke-virtual {p0, v2, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 416
    invoke-virtual {p0, v1, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 417
    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 418
    invoke-virtual {p0, v5}, Lorg/apache/log4j/RollingCalendar;->get(I)I

    move-result p1

    if-ge p1, v2, :cond_4

    .line 420
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    goto :goto_0

    .line 422
    :cond_4
    invoke-virtual {p0, v5, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 423
    invoke-virtual {p0, v7, v3}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    .line 409
    :cond_5
    invoke-virtual {p0, v2, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 410
    invoke-virtual {p0, v1, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 411
    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 412
    invoke-virtual {p0, v5, v3}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    goto :goto_0

    .line 404
    :cond_6
    invoke-virtual {p0, v1, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 405
    invoke-virtual {p0, v0, v4}, Lorg/apache/log4j/RollingCalendar;->set(II)V

    .line 406
    invoke-virtual {p0, v2, v3}, Lorg/apache/log4j/RollingCalendar;->add(II)V

    .line 452
    :goto_0
    invoke-virtual {p0}, Lorg/apache/log4j/RollingCalendar;->getTime()Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method

.method public getNextCheckMillis(Ljava/util/Date;)J
    .locals 2

    .line 396
    invoke-virtual {p0, p1}, Lorg/apache/log4j/RollingCalendar;->getNextCheckDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method setType(I)V
    .locals 0

    .line 392
    iput p1, p0, Lorg/apache/log4j/RollingCalendar;->type:I

    return-void
.end method
