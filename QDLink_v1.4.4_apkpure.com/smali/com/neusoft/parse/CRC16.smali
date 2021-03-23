.class public Lcom/neusoft/parse/CRC16;
.super Ljava/lang/Object;
.source "CRC16.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static crcProcess([B)I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    const p0, 0xffff

    and-int/2addr p0, v1

    return p0

    :cond_1
    const/16 v2, 0x80

    :goto_1
    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const v3, 0x8000

    and-int/2addr v3, v1

    if-eqz v3, :cond_3

    shl-int/lit8 v1, v1, 0x1

    xor-int/lit16 v1, v1, 0x1021

    goto :goto_2

    :cond_3
    shl-int/lit8 v1, v1, 0x1

    .line 19
    :goto_2
    aget-byte v3, p0, v0

    and-int/2addr v3, v2

    if-eqz v3, :cond_4

    xor-int/lit16 v1, v1, 0x1021

    :cond_4
    shr-int/lit8 v2, v2, 0x1

    int-to-char v2, v2

    goto :goto_1
.end method

.method public static crcProcess([BII)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-lt p1, p2, :cond_0

    const p0, 0xffff

    and-int/2addr p0, v0

    return p0

    :cond_0
    const/16 v1, 0x80

    :goto_1
    if-nez v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const v2, 0x8000

    and-int/2addr v2, v0

    if-eqz v2, :cond_2

    shl-int/lit8 v0, v0, 0x1

    xor-int/lit16 v0, v0, 0x1021

    goto :goto_2

    :cond_2
    shl-int/lit8 v0, v0, 0x1

    .line 38
    :goto_2
    aget-byte v2, p0, p1

    and-int/2addr v2, v1

    if-eqz v2, :cond_3

    xor-int/lit16 v0, v0, 0x1021

    :cond_3
    shr-int/lit8 v1, v1, 0x1

    int-to-char v1, v1

    goto :goto_1
.end method
