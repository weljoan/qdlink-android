.class public Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;
.super Lcom/neusoft/interconnection/linkconnection/newmessage/ExtendHeader;
.source "ScreenCaptureExtendHeader.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:I

.field private e:I

.field private f:S

.field private g:B

.field private h:B

.field private i:I

.field private j:I

.field private k:I

.field private l:B

.field private m:I

.field private n:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ExtendHeader;-><init>()V

    const-string v0, "32"

    .line 8
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->a:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->a:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setExtendHeaderSize(S)V

    .line 36
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getExtendHeaderSize()S

    move-result v0

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    return-void
.end method


# virtual methods
.method public getBitRate()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->j:I

    return v0
.end method

.method public getBuffer()[B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 41
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getExtendHeaderSize()S

    move-result v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToTwoByteArray(I[BI)I

    move-result v0

    .line 46
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getExtendHeaderType()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 48
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getReserved()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 53
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 54
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 55
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getOrientation()S

    move-result v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToTwoByteArray(I[BI)I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getLandMode()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 58
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getEncodingType()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 60
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getFrameRate()I

    move-result v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 61
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getBitRate()I

    move-result v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 62
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getFrameInterval()I

    move-result v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 63
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getInOutApp()B

    move-result v2

    aput-byte v2, v1, v0

    .line 65
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->n:[B

    return-object v0
.end method

.method public getEncodingType()B
    .locals 1

    .line 121
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->h:B

    return v0
.end method

.method public getFrameInterval()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->k:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->i:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 97
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->e:I

    return v0
.end method

.method public getInOutApp()B
    .locals 1

    .line 153
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->l:B

    return v0
.end method

.method public getLandMode()B
    .locals 1

    .line 113
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->g:B

    return v0
.end method

.method public getOrientation()S
    .locals 1

    .line 105
    iget-short v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->f:S

    return v0
.end method

.method public getSerial()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->b:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->c:J

    return-wide v0
.end method

.method public getWidth()I
    .locals 1

    .line 89
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->d:I

    return v0
.end method

.method public setBitRate(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->j:I

    return-void
.end method

.method public setEncodingType(B)V
    .locals 0

    .line 125
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->h:B

    return-void
.end method

.method public setFrameInterval(I)V
    .locals 0

    .line 149
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->k:I

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 133
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->i:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->e:I

    return-void
.end method

.method public setInOutApp(B)V
    .locals 0

    .line 157
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->l:B

    return-void
.end method

.method public setLandMode(B)V
    .locals 0

    .line 117
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->g:B

    return-void
.end method

.method public setOrientation(S)V
    .locals 0

    .line 109
    iput-short p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->f:S

    return-void
.end method

.method public setSerial(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->b:I

    return-void
.end method

.method public setTimeStamp(J)V
    .locals 0

    .line 81
    iput-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->c:J

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->d:I

    return-void
.end method
