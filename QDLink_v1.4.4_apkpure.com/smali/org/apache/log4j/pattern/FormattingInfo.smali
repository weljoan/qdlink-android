.class public final Lorg/apache/log4j/pattern/FormattingInfo;
.super Ljava/lang/Object;
.source "FormattingInfo.java"


# static fields
.field private static final DEFAULT:Lorg/apache/log4j/pattern/FormattingInfo;

.field private static final SPACES:[C


# instance fields
.field private final leftAlign:Z

.field private final maxLength:I

.field private final minLength:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [C

    .line 35
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/log4j/pattern/FormattingInfo;->SPACES:[C

    .line 41
    new-instance v0, Lorg/apache/log4j/pattern/FormattingInfo;

    const/4 v1, 0x0

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v1, v2}, Lorg/apache/log4j/pattern/FormattingInfo;-><init>(ZII)V

    sput-object v0, Lorg/apache/log4j/pattern/FormattingInfo;->DEFAULT:Lorg/apache/log4j/pattern/FormattingInfo;

    return-void

    nop

    :array_0
    .array-data 2
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
        0x20s
    .end array-data
.end method

.method public constructor <init>(ZII)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->leftAlign:Z

    .line 68
    iput p2, p0, Lorg/apache/log4j/pattern/FormattingInfo;->minLength:I

    .line 69
    iput p3, p0, Lorg/apache/log4j/pattern/FormattingInfo;->maxLength:I

    return-void
.end method

.method public static getDefault()Lorg/apache/log4j/pattern/FormattingInfo;
    .locals 1

    .line 77
    sget-object v0, Lorg/apache/log4j/pattern/FormattingInfo;->DEFAULT:Lorg/apache/log4j/pattern/FormattingInfo;

    return-object v0
.end method


# virtual methods
.method public format(ILjava/lang/StringBuffer;)V
    .locals 3

    .line 111
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    sub-int/2addr v0, p1

    .line 113
    iget v1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->maxLength:I

    if-le v0, v1, :cond_0

    .line 114
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->maxLength:I

    sub-int/2addr v0, v1

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 115
    :cond_0
    iget v1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->minLength:I

    if-ge v0, v1, :cond_3

    .line 116
    iget-boolean v2, p0, Lorg/apache/log4j/pattern/FormattingInfo;->leftAlign:Z

    if-eqz v2, :cond_1

    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    .line 118
    iget v1, p0, Lorg/apache/log4j/pattern/FormattingInfo;->minLength:I

    add-int/2addr p1, v1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 120
    :goto_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    if-ge v0, p1, :cond_3

    const/16 p1, 0x20

    .line 121
    invoke-virtual {p2, v0, p1}, Ljava/lang/StringBuffer;->setCharAt(IC)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v0

    :goto_1
    const/16 v0, 0x8

    if-le v1, v0, :cond_2

    .line 127
    sget-object v0, Lorg/apache/log4j/pattern/FormattingInfo;->SPACES:[C

    invoke-virtual {p2, p1, v0}, Ljava/lang/StringBuffer;->insert(I[C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, -0x8

    goto :goto_1

    .line 130
    :cond_2
    sget-object v0, Lorg/apache/log4j/pattern/FormattingInfo;->SPACES:[C

    const/4 v2, 0x0

    invoke-virtual {p2, p1, v0, v2, v1}, Ljava/lang/StringBuffer;->insert(I[CII)Ljava/lang/StringBuffer;

    :cond_3
    :goto_2
    return-void
.end method

.method public getMaxLength()I
    .locals 1

    .line 101
    iget v0, p0, Lorg/apache/log4j/pattern/FormattingInfo;->maxLength:I

    return v0
.end method

.method public getMinLength()I
    .locals 1

    .line 93
    iget v0, p0, Lorg/apache/log4j/pattern/FormattingInfo;->minLength:I

    return v0
.end method

.method public isLeftAligned()Z
    .locals 1

    .line 85
    iget-boolean v0, p0, Lorg/apache/log4j/pattern/FormattingInfo;->leftAlign:Z

    return v0
.end method
