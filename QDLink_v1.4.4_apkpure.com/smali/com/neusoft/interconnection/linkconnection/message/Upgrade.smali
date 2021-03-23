.class public Lcom/neusoft/interconnection/linkconnection/message/Upgrade;
.super Ljava/lang/Object;
.source "Upgrade.java"


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
    .locals 6

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 12
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 20
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->mark:[B

    .line 32
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->format:[C

    const/4 v2, 0x0

    const/16 v3, 0x21

    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x42

    .line 33
    aput-char v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x49

    .line 34
    aput-char v4, v1, v3

    const/4 v4, 0x3

    const/16 v5, 0x4e

    .line 35
    aput-char v5, v1, v4

    .line 36
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->dataType:I

    const/16 v1, 0x200

    .line 37
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->headersize:I

    .line 38
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->totalsize:I

    const/16 v1, 0x40

    .line 39
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->commonHeaderSize:I

    const/16 v1, 0x80

    .line 40
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->requestHeaderSize:I

    .line 41
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->responseHeaderSize:I

    .line 42
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->action:I

    const/16 v1, 0xd

    .line 43
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->cmd:I

    const/4 v1, 0x5

    .line 44
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->value:I

    .line 45
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->headersize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    new-array v1, v0, [B

    .line 46
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->mark:[B

    :goto_0
    if-ge v2, v0, :cond_0

    .line 48
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->mark:[B

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

    .line 54
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 57
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 58
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 59
    aget-char v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 61
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 62
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 63
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 64
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 65
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 66
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 67
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 73
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->TimeStamp:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 74
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->cmd:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 75
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->value:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 78
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->ret:I

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendupgradeMsgtToCar action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->a:[B

    return-object v0
.end method

.method public setValueByBuffer([B)V
    .locals 3

    const/4 v0, 0x4

    .line 88
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->dataType:I

    const/16 v0, 0x8

    .line 90
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->totalsize:I

    const/16 v0, 0xc

    .line 92
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->headersize:I

    const/16 v0, 0x10

    .line 94
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->commonHeaderSize:I

    const/16 v0, 0x14

    .line 96
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->requestHeaderSize:I

    const/16 v0, 0x18

    .line 98
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->responseHeaderSize:I

    const/16 v0, 0x1c

    .line 100
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->action:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->mark:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 107
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->TimeStamp:I

    const/16 v0, 0x44

    .line 110
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->cmd:I

    const/16 v0, 0x48

    .line 113
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->value:I

    const/16 v0, 0xc0

    .line 118
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/message/Upgrade;->ret:I

    return-void
.end method
