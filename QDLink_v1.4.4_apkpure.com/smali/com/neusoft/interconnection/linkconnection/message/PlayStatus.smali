.class public Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;
.super Ljava/lang/Object;
.source "PlayStatus.java"


# instance fields
.field public TimeStamp:I

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

.field public totalsize:I

.field public value:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 11
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 19
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->mark:[B

    .line 31
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->format:[C

    const/4 v2, 0x0

    const/16 v3, 0x21

    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x42

    .line 32
    aput-char v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x49

    .line 33
    aput-char v4, v1, v3

    const/4 v3, 0x3

    const/16 v4, 0x4e

    .line 34
    aput-char v4, v1, v3

    .line 35
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->dataType:I

    const/16 v1, 0x200

    .line 36
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->headersize:I

    .line 37
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->totalsize:I

    const/16 v1, 0x40

    .line 38
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->commonHeaderSize:I

    const/16 v1, 0x80

    .line 39
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->requestHeaderSize:I

    .line 40
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->responseHeaderSize:I

    .line 42
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->headersize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    new-array v1, v0, [B

    .line 43
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->mark:[B

    :goto_0
    if-ge v2, v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->mark:[B

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

    .line 51
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 54
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 55
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 56
    aget-char v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 58
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 59
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 60
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 61
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 62
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 63
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 64
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 70
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->TimeStamp:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 71
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->cmd:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 72
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->value:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 75
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->ret:I

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PlayStatus getBuffer action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->a:[B

    return-object v0
.end method

.method public setValueByBuffer([B)V
    .locals 3

    const/4 v0, 0x4

    .line 86
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->dataType:I

    const/16 v0, 0x8

    .line 88
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->totalsize:I

    const/16 v0, 0xc

    .line 90
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->headersize:I

    const/16 v0, 0x10

    .line 92
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->commonHeaderSize:I

    const/16 v0, 0x14

    .line 94
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->requestHeaderSize:I

    const/16 v0, 0x18

    .line 96
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->responseHeaderSize:I

    const/16 v0, 0x1c

    .line 98
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->action:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 101
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->mark:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 105
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->TimeStamp:I

    const/16 v0, 0x44

    .line 108
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->cmd:I

    const/16 v0, 0x48

    .line 111
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->value:I

    const/16 v0, 0xc0

    .line 116
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->ret:I

    .line 119
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "PlayStatus setValueByBuffer action:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->action:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",cmd:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->cmd:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",value:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->value:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",ret:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->ret:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method
