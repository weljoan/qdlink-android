.class public Lcom/neusoft/interconnection/utils/Utilities;
.super Ljava/lang/Object;
.source "Utilities.java"


# static fields
.field private static final a:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 92
    fill-array-data v0, :array_0

    sput-object v0, Lcom/neusoft/interconnection/utils/Utilities;->a:[B

    return-void

    :array_0
    .array-data 1
        0x30t
        0x31t
        0x32t
        0x33t
        0x34t
        0x35t
        0x36t
        0x37t
        0x38t
        0x39t
        0x41t
        0x42t
        0x43t
        0x44t
        0x45t
        0x46t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArray2String([BII)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    add-int v1, v0, p2

    .line 301
    aget-byte v1, p0, v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 308
    :goto_1
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0, p2, v0}, Ljava/lang/String;-><init>([BII)V

    return-object p1
.end method

.method public static byteArrayToFloat([BI)F
    .locals 1

    const/4 v0, 0x4

    .line 191
    invoke-static {p0, p1, v0}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getFloat()F

    move-result p0

    return p0
.end method

.method public static byteArrayToInt([BI)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    add-int v2, v0, p1

    .line 164
    aget-byte v3, p0, v2

    if-gez v3, :cond_0

    .line 165
    aget-byte v2, p0, v2

    add-int/lit16 v2, v2, 0x100

    goto :goto_1

    .line 167
    :cond_0
    aget-byte v2, p0, v2

    :goto_1
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static byteArrayToInt([BII)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    add-int v2, v0, p1

    .line 199
    aget-byte v3, p0, v2

    if-gez v3, :cond_0

    .line 200
    aget-byte v2, p0, v2

    add-int/lit16 v2, v2, 0x100

    goto :goto_1

    .line 202
    :cond_0
    aget-byte v2, p0, v2

    :goto_1
    rsub-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x8

    shl-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static byteArrayToIntArray([B)[I
    .locals 3

    .line 125
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 126
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 127
    aget-byte v2, p0, v1

    and-int/lit16 v2, v2, 0xff

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static byteArrayToShort([BI)S
    .locals 1

    .line 210
    aget-byte v0, p0, p1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 p1, p1, 0x1

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, v0

    int-to-short p0, p0

    return p0
.end method

.method public static byteArrayToShort2([BI)S
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    add-int v3, v0, p1

    .line 217
    aget-byte v4, p0, v3

    if-gez v4, :cond_0

    .line 218
    aget-byte v3, p0, v3

    add-int/lit16 v3, v3, 0x100

    goto :goto_1

    .line 220
    :cond_0
    aget-byte v3, p0, v3

    :goto_1
    sub-int/2addr v2, v0

    mul-int/lit8 v2, v2, 0x8

    shl-int v2, v3, v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public static byteArrayToString([BII)Ljava/lang/String;
    .locals 3

    .line 288
    new-array v0, p2, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int v2, v1, p1

    .line 290
    aget-byte v2, p0, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 292
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public static byteToLong([BI)J
    .locals 7

    add-int/lit8 v0, p1, 0x0

    .line 251
    aget-byte v0, p0, v0

    int-to-long v0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x1

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x2

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x3

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x4

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 v4, p1, 0x5

    aget-byte v4, p0, v4

    int-to-long v4, v4

    and-long/2addr v4, v2

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v0, v4

    add-int/lit8 p1, p1, 0x6

    aget-byte p1, p0, p1

    int-to-long v4, p1

    and-long/2addr v4, v2

    const/16 p1, 0x8

    shl-long/2addr v4, p1

    or-long/2addr v0, v4

    const/4 p1, 0x7

    aget-byte p0, p0, p1

    int-to-long p0, p0

    and-long/2addr p0, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public static centerAround(IILandroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 14
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 15
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 16
    div-int/lit8 v2, v0, 0x2

    sub-int/2addr p0, v2

    .line 17
    div-int/lit8 v2, v1, 0x2

    sub-int/2addr p1, v2

    add-int/2addr v0, p0

    add-int/2addr v1, p1

    .line 20
    invoke-virtual {p2, p0, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public static dateToTimeValue(II)I
    .locals 0

    mul-int/lit8 p0, p0, 0x3c

    add-int/2addr p0, p1

    return p0
.end method

.method public static dateToTimeValue(Ljava/util/Date;)I
    .locals 1

    .line 89
    invoke-virtual {p0}, Ljava/util/Date;->getHours()I

    move-result v0

    invoke-virtual {p0}, Ljava/util/Date;->getMinutes()I

    move-result p0

    invoke-static {v0, p0}, Lcom/neusoft/interconnection/utils/Utilities;->dateToTimeValue(II)I

    move-result p0

    return p0
.end method

.method public static final dumpBytes([BI)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 109
    array-length v1, p0

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_1

    const-string v2, "0x"

    .line 112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/neusoft/interconnection/utils/Utilities;->a:[B

    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v3, v3, 0x4

    aget-byte v2, v2, v3

    int-to-char v2, v2

    .line 113
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v2, Lcom/neusoft/interconnection/utils/Utilities;->a:[B

    aget-byte v3, p0, v1

    and-int/lit8 v3, v3, 0xf

    aget-byte v2, v2, v3

    int-to-char v2, v2

    .line 114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static enablePreference(Landroid/preference/PreferenceManager;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1

    .line 65
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public static formatTime(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 79
    div-int/lit8 v1, p1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/Date;->setHours(I)V

    .line 80
    rem-int/lit8 p1, p1, 0x3c

    invoke-virtual {v0, p1}, Ljava/util/Date;->setMinutes(I)V

    .line 81
    invoke-static {p0, v0}, Lcom/neusoft/interconnection/utils/Utilities;->formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatTime(Landroid/content/Context;Ljava/util/Date;)Ljava/lang/String;
    .locals 0

    .line 73
    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    .line 74
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fourCCToString(I)Ljava/lang/String;
    .locals 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x27

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x18

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x10

    and-int/lit16 v2, v2, 0xff

    .line 56
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    and-int/lit16 p0, p0, 0xff

    .line 58
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getHexStringFour(I)Ljava/lang/String;
    .locals 2

    .line 320
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 322
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 324
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static getHexStringTwo(I)Ljava/lang/String;
    .locals 2

    .line 337
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    .line 339
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 341
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static indexOf([II)I
    .locals 2

    const/4 v0, 0x0

    .line 24
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 25
    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static indexOf([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    .line 33
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 34
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static intToByteArray(I[BI)I
    .locals 2

    ushr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    .line 140
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    .line 141
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 142
    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x3

    int-to-byte p0, p0

    .line 143
    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x4

    return p2
.end method

.method public static intToTwoByteArray(I[BI)I
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 155
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-byte p0, p0

    .line 156
    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x2

    return p2
.end method

.method public static longToByteArray(J[BI)I
    .locals 6

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    shl-int/lit8 v2, v1, 0x3

    rsub-int/lit8 v2, v2, 0x40

    add-int/2addr v0, p3

    shr-long v2, p0, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    long-to-int v3, v2

    int-to-byte v2, v3

    .line 232
    aput-byte v2, p2, v0

    move v0, v1

    goto :goto_0

    :cond_0
    add-int/2addr p3, v1

    return p3
.end method

.method public static shortToByteArray(S[BI)I
    .locals 1

    shr-int/lit8 v0, p0, 0x8

    int-to-byte v0, v0

    .line 261
    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    int-to-byte p0, p0

    .line 262
    aput-byte p0, p1, v0

    add-int/lit8 p2, p2, 0x2

    return p2
.end method

.method public static stringToByteArray(Ljava/lang/String;[BII)I
    .locals 4

    const-string v0, "US-ASCII"

    .line 268
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 269
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 271
    aget-byte v3, p0, v1

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, p3

    return p2
.end method

.method public static stringToByteArray1(Ljava/lang/String;[BI)I
    .locals 4

    const-string v0, "US-ASCII"

    .line 277
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    .line 278
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 280
    aget-byte v3, p0, v1

    aput-byte v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x14

    return p2
.end method

.method public static stringToFourCC(Ljava/lang/String;)I
    .locals 4

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 45
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method public static unsignedByte(B)I
    .locals 0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
