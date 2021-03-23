.class public Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;
.super Ljava/lang/Object;
.source "MirrorSupport.java"


# instance fields
.field private a:[B

.field public action:I

.field public cmd:I

.field public commonHeaderSize:I

.field public dataType:I

.field public format:[C

.field public headersize:I

.field public mark:[B

.field public requestHeaderSize:I

.field public responseHeaderSize:I

.field public ret:I

.field public sreenCaptureSupport:I

.field public timeStamp:I

.field public totalsize:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 11
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 20
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->mark:[B

    .line 29
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->format:[C

    const/4 v2, 0x0

    const/16 v3, 0x21

    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x42

    .line 30
    aput-char v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x49

    .line 31
    aput-char v4, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x4e

    .line 32
    aput-char v4, v1, v3

    .line 33
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->dataType:I

    const/16 v1, 0x200

    .line 34
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->headersize:I

    .line 35
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->totalsize:I

    const/16 v1, 0x40

    .line 36
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->commonHeaderSize:I

    const/16 v1, 0x80

    .line 37
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->requestHeaderSize:I

    .line 38
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->responseHeaderSize:I

    .line 40
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->headersize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    new-array v1, v0, [B

    .line 41
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->mark:[B

    :goto_0
    if-ge v2, v0, :cond_0

    .line 43
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->mark:[B

    add-int/lit8 v3, v2, 0x20

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    .line 84
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 87
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 88
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 89
    aget-char v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 91
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 92
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 93
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 94
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 95
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 96
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 97
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 103
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->timeStamp:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 104
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->cmd:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 107
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->ret:I

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 109
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->a:[B

    return-object v0
.end method

.method public setValueByBuffer([B)V
    .locals 3

    const/4 v0, 0x4

    .line 51
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->dataType:I

    const/16 v0, 0x8

    .line 53
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->totalsize:I

    const/16 v0, 0xc

    .line 55
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->headersize:I

    const/16 v0, 0x10

    .line 57
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->commonHeaderSize:I

    const/16 v0, 0x14

    .line 59
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->requestHeaderSize:I

    const/16 v0, 0x18

    .line 61
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->responseHeaderSize:I

    const/16 v0, 0x1c

    .line 63
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->action:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->mark:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 70
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->timeStamp:I

    const/16 v0, 0x44

    .line 73
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->cmd:I

    const/16 v0, 0x48

    .line 76
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->sreenCaptureSupport:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MirrorSupport [dataType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->totalsize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", headersize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->headersize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", commonHeaderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->commonHeaderSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", requestHeaderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->requestHeaderSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ret="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", responseHeaderSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->responseHeaderSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", timeStamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->timeStamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", cmd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sreenCaptureSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->sreenCaptureSupport:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
