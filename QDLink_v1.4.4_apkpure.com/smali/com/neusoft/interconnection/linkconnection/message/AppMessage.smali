.class public Lcom/neusoft/interconnection/linkconnection/message/AppMessage;
.super Ljava/lang/Object;
.source "AppMessage.java"


# instance fields
.field public ResponseStatus:I

.field private a:[B

.field public action:I

.field private b:[B

.field private c:[B

.field public commonHeaderSize:I

.field private d:Ljava/nio/ByteBuffer;

.field public dataSize:I

.field public dataType:I

.field public format:[C

.field public headersize:I

.field public mark:[B

.field public requestHeaderSize:I

.field public responseHeaderSize:I

.field public totalsize:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 12
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 20
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->mark:[B

    .line 34
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->format:[C

    const/4 v2, 0x0

    const/16 v3, 0x21

    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x42

    .line 35
    aput-char v4, v1, v3

    const/4 v3, 0x2

    const/16 v4, 0x49

    .line 36
    aput-char v4, v1, v3

    const/4 v4, 0x3

    const/16 v5, 0x4e

    .line 37
    aput-char v5, v1, v4

    .line 38
    iput v4, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->dataType:I

    const/16 v1, 0x200

    .line 39
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->headersize:I

    .line 40
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->totalsize:I

    const/16 v1, 0x40

    .line 41
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->commonHeaderSize:I

    .line 42
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->requestHeaderSize:I

    .line 43
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->responseHeaderSize:I

    .line 44
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->action:I

    .line 46
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->headersize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    new-array v1, v0, [B

    .line 47
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->mark:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 49
    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->mark:[B

    add-int/lit8 v4, v1, 0x20

    int-to-byte v4, v4

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    .line 52
    :cond_0
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->dataSize:I

    .line 53
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->ResponseStatus:I

    return-void
.end method

.method private a([B[BII)Lcom/neusoft/interconnection/linkconnection/message/AppMessage$Buffer;
    .locals 4

    .line 155
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->d:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    if-le p4, v0, :cond_1

    .line 156
    :cond_0
    invoke-static {p4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->d:Ljava/nio/ByteBuffer;

    .line 158
    :cond_1
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p3, :cond_2

    .line 161
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->d:Ljava/nio/ByteBuffer;

    aget-byte v3, p2, v1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 163
    :cond_2
    array-length p1, p1

    sub-int p1, p4, p1

    sub-int/2addr p1, p3

    const/4 p2, 0x0

    :goto_1
    if-ge p2, p1, :cond_3

    .line 166
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p3, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 168
    :cond_3
    new-instance p1, Lcom/neusoft/interconnection/linkconnection/message/AppMessage$Buffer;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p2

    invoke-direct {p1, p0, p2, p4}, Lcom/neusoft/interconnection/linkconnection/message/AppMessage$Buffer;-><init>(Lcom/neusoft/interconnection/linkconnection/message/AppMessage;[BI)V

    return-object p1
.end method


# virtual methods
.method public getBuffer()[B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 61
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 62
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 63
    aget-char v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 65
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 66
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 67
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 68
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 69
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 70
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 71
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 77
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->dataSize:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 78
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->ResponseStatus:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 80
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a:[B

    return-object v0
.end method

.method public sendAppMessage([BI)[B
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AppMessage sendAppMessage:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 120
    array-length v0, p1

    if-lt v0, p2, :cond_1

    if-ltz p2, :cond_1

    const-string v0, "AppMessage sendAppMessage1"

    .line 121
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 123
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->headersize:I

    rem-int v1, p2, v0

    if-eqz v1, :cond_0

    sub-int v1, v0, v1

    .line 127
    :cond_0
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->headersize:I

    add-int/2addr v0, p2

    add-int/2addr v0, v1

    .line 128
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->totalsize:I

    .line 129
    iput p2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->dataSize:I

    .line 130
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->getBuffer()[B

    move-result-object v1

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->b:[B

    .line 131
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->b:[B

    invoke-direct {p0, v1, p1, p2, v0}, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->a([B[BII)Lcom/neusoft/interconnection/linkconnection/message/AppMessage$Buffer;

    move-result-object p1

    .line 137
    iget-object p1, p1, Lcom/neusoft/interconnection/linkconnection/message/AppMessage$Buffer;->a:[B

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public setValueByBuffer([B)V
    .locals 3

    const/4 v0, 0x4

    .line 87
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->dataType:I

    const/16 v0, 0x8

    .line 89
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->totalsize:I

    const/16 v0, 0xc

    .line 91
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->headersize:I

    const/16 v0, 0x10

    .line 93
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->commonHeaderSize:I

    const/16 v0, 0x14

    .line 95
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->requestHeaderSize:I

    const/16 v0, 0x18

    .line 97
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->responseHeaderSize:I

    const/16 v0, 0x1c

    .line 99
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->action:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->mark:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x40

    .line 106
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->dataSize:I

    const/16 v0, 0x44

    .line 109
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->ResponseStatus:I

    return-void
.end method
