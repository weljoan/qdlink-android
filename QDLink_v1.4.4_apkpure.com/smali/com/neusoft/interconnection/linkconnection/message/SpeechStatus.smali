.class public Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;
.super Ljava/lang/Object;
.source "SpeechStatus.java"


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
    .locals 7

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 7
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 15
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->mark:[B

    .line 26
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->format:[C

    const/4 v2, 0x0

    const/16 v3, 0x21

    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x42

    .line 27
    aput-char v4, v1, v3

    const/4 v4, 0x2

    const/16 v5, 0x49

    .line 28
    aput-char v5, v1, v4

    const/4 v5, 0x3

    const/16 v6, 0x4e

    .line 29
    aput-char v6, v1, v5

    .line 30
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->dataType:I

    const/16 v1, 0x200

    .line 31
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->headersize:I

    .line 32
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->totalsize:I

    const/16 v1, 0x40

    .line 33
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->commonHeaderSize:I

    const/16 v1, 0x80

    .line 34
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->requestHeaderSize:I

    .line 35
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->responseHeaderSize:I

    .line 37
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->headersize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    new-array v1, v0, [B

    .line 38
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->mark:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 40
    iget-object v5, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->mark:[B

    add-int/lit8 v6, v1, 0x20

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    .line 42
    :cond_0
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->TimeStamp:I

    .line 43
    iput v4, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->action:I

    const/16 v0, 0x15

    .line 44
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->cmd:I

    .line 45
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->value:I

    .line 46
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->ret:I

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

    .line 55
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 58
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 59
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 60
    aget-char v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 62
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 63
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 64
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 65
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 66
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 67
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 68
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 73
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->TimeStamp:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 74
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->cmd:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 75
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->value:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 78
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->ret:I

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SpeechStatus value:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->a:[B

    return-object v0
.end method
