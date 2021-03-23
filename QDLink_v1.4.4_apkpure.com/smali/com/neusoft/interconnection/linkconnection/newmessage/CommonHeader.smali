.class public Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;
.super Ljava/lang/Object;
.source "CommonHeader.java"


# instance fields
.field private a:[C

.field private b:I

.field private c:S

.field private d:B

.field private e:B

.field private f:B

.field private g:B

.field private h:B

.field private i:[B


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 53
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 54
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->a:[C

    .line 55
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->a:[C

    const/16 v1, 0x35

    const/4 v2, 0x0

    aput-char v1, v0, v2

    const/16 v2, 0x41

    const/4 v3, 0x1

    .line 56
    aput-char v2, v0, v3

    const/4 v3, 0x2

    .line 57
    aput-char v1, v0, v3

    const/4 v1, 0x3

    .line 58
    aput-char v2, v0, v1

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 90
    :goto_0
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 91
    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->a:[C

    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v0, 0x1

    .line 94
    aget-char v3, v1, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v0

    const/4 v3, 0x2

    .line 95
    aget-char v4, v1, v3

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x3

    .line 96
    aget-char v1, v1, v3

    int-to-byte v1, v1

    aput-byte v1, v2, v3

    .line 98
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getTotalSize()I

    move-result v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 99
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getExtendHeaderTotalSize()I

    move-result v2

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToTwoByteArray(I[BI)I

    move-result v1

    .line 100
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getMsgType()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/2addr v1, v0

    .line 102
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getSource()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/2addr v1, v0

    .line 104
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getDestination()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/2addr v1, v0

    .line 106
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getPayloadFormat()B

    move-result v3

    aput-byte v3, v2, v1

    add-int/2addr v1, v0

    .line 109
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getReservedOne()B

    move-result v2

    aput-byte v2, v0, v1

    .line 112
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->i:[B

    return-object v0
.end method

.method public getDestination()B
    .locals 1

    .line 152
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->f:B

    return v0
.end method

.method public getExtendHeaderTotalSize()I
    .locals 1

    .line 128
    iget-short v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->c:S

    return v0
.end method

.method public getMsgType()B
    .locals 1

    .line 136
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->d:B

    return v0
.end method

.method public getPayloadFormat()B
    .locals 1

    .line 160
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->g:B

    return v0
.end method

.method public getReservedOne()B
    .locals 1

    .line 168
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->h:B

    return v0
.end method

.method public getSource()B
    .locals 1

    .line 144
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->e:B

    return v0
.end method

.method public getTotalSize()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->b:I

    return v0
.end method

.method public setDestination(B)V
    .locals 0

    .line 156
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->f:B

    return-void
.end method

.method public setExtendHeaderTotalSize(S)V
    .locals 0

    .line 132
    iput-short p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->c:S

    return-void
.end method

.method public setMsgType(B)V
    .locals 0

    .line 140
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->d:B

    return-void
.end method

.method public setPayloadFormat(B)V
    .locals 0

    .line 164
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->g:B

    return-void
.end method

.method public setReservedOne(B)V
    .locals 0

    .line 172
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->h:B

    return-void
.end method

.method public setSource(B)V
    .locals 0

    .line 148
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->e:B

    return-void
.end method

.method public setTotalSize(I)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->b:I

    return-void
.end method

.method public setValueByBuffer([B)V
    .locals 1

    const/4 v0, 0x4

    .line 69
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    const/16 v0, 0x8

    .line 71
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    const/16 v0, 0xa

    .line 73
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    const/16 v0, 0xb

    .line 75
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    const/16 v0, 0xc

    .line 77
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    const/16 v0, 0xd

    .line 79
    aget-byte v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    const/16 v0, 0xe

    .line 82
    aget-byte p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setReservedOne(B)V

    return-void
.end method
