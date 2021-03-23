.class public abstract Lorg/apache/log4j/helpers/PatternConverter;
.super Ljava/lang/Object;
.source "PatternConverter.java"


# static fields
.field static SPACES:[Ljava/lang/String;


# instance fields
.field leftAlign:Z

.field max:I

.field min:I

.field public next:Lorg/apache/log4j/helpers/PatternConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, " "

    const-string v1, "  "

    const-string v2, "    "

    const-string v3, "        "

    const-string v4, "                "

    const-string v5, "                                "

    .line 91
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/helpers/PatternConverter;->SPACES:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    const v0, 0x7fffffff

    .line 39
    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    return-void
.end method

.method protected constructor <init>(Lorg/apache/log4j/helpers/FormattingInfo;)V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 38
    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    const v0, 0x7fffffff

    .line 39
    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    .line 47
    iget v0, p1, Lorg/apache/log4j/helpers/FormattingInfo;->min:I

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    .line 48
    iget v0, p1, Lorg/apache/log4j/helpers/FormattingInfo;->max:I

    iput v0, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    .line 49
    iget-boolean p1, p1, Lorg/apache/log4j/helpers/FormattingInfo;->leftAlign:Z

    iput-boolean p1, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    return-void
.end method


# virtual methods
.method protected abstract convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
.end method

.method public format(Ljava/lang/StringBuffer;Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3

    .line 65
    invoke-virtual {p0, p2}, Lorg/apache/log4j/helpers/PatternConverter;->convert(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 68
    iget p2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    if-lez p2, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/helpers/PatternConverter;->spacePad(Ljava/lang/StringBuffer;I)V

    :cond_0
    return-void

    .line 73
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 75
    iget v1, p0, Lorg/apache/log4j/helpers/PatternConverter;->max:I

    if-le v0, v1, :cond_2

    sub-int/2addr v0, v1

    .line 76
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 77
    :cond_2
    iget v1, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    if-ge v0, v1, :cond_4

    .line 78
    iget-boolean v2, p0, Lorg/apache/log4j/helpers/PatternConverter;->leftAlign:Z

    if-eqz v2, :cond_3

    .line 79
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    iget p2, p0, Lorg/apache/log4j/helpers/PatternConverter;->min:I

    sub-int/2addr p2, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/helpers/PatternConverter;->spacePad(Ljava/lang/StringBuffer;I)V

    goto :goto_0

    :cond_3
    sub-int/2addr v1, v0

    .line 83
    invoke-virtual {p0, p1, v1}, Lorg/apache/log4j/helpers/PatternConverter;->spacePad(Ljava/lang/StringBuffer;I)V

    .line 84
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 88
    :cond_4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method public spacePad(Ljava/lang/StringBuffer;I)V
    .locals 2

    :goto_0
    const/16 v0, 0x20

    if-lt p2, v0, :cond_0

    .line 101
    sget-object v0, Lorg/apache/log4j/helpers/PatternConverter;->SPACES:[Ljava/lang/String;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p2, p2, -0x20

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_1
    if-ltz v0, :cond_2

    const/4 v1, 0x1

    shl-int/2addr v1, v0

    and-int/2addr v1, p2

    if-eqz v1, :cond_1

    .line 107
    sget-object v1, Lorg/apache/log4j/helpers/PatternConverter;->SPACES:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    return-void
.end method
