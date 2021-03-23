.class public Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "ThrowableInformationPatternConverter.java"


# instance fields
.field private maxLines:I


# direct methods
.method private constructor <init>([Ljava/lang/String;)V
    .locals 3

    const-string v0, "Throwable"

    const-string v1, "throwable"

    .line 49
    invoke-direct {p0, v0, v1}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7fffffff

    .line 41
    iput v0, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    if-eqz p1, :cond_2

    .line 51
    array-length v0, p1

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 52
    aget-object v1, p1, v0

    const-string v2, "none"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    iput v0, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    goto :goto_0

    .line 54
    :cond_0
    aget-object v1, p1, v0

    const-string v2, "short"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    .line 55
    iput p1, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    goto :goto_0

    .line 58
    :cond_1
    :try_start_0
    aget-object p1, p1, v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;
    .locals 1

    .line 73
    new-instance v0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;

    invoke-direct {v0, p0}, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;-><init>([Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public format(Lorg/apache/log4j/spi/LoggingEvent;Ljava/lang/StringBuffer;)V
    .locals 3

    .line 80
    iget v0, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    if-eqz v0, :cond_2

    .line 81
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 84
    invoke-virtual {p1}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object p1

    .line 86
    array-length v0, p1

    .line 87
    iget v1, p0, Lorg/apache/log4j/pattern/ThrowableInformationPatternConverter;->maxLines:I

    if-gez v1, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    if-le v0, v1, :cond_1

    move v0, v1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 94
    aget-object v2, p1, v1

    .line 95
    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\n"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public handlesThrowable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
