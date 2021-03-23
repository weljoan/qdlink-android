.class public Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;
.super Ljava/lang/Object;
.source "PhoneClickMirrOff.java"


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

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 9
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 17
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->mark:[B

    .line 28
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->format:[C

    const/4 v2, 0x0

    const/16 v3, 0x21

    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x42

    .line 29
    aput-char v4, v1, v3

    const/4 v4, 0x2

    const/16 v5, 0x49

    .line 30
    aput-char v5, v1, v4

    const/4 v5, 0x3

    const/16 v6, 0x4e

    .line 31
    aput-char v6, v1, v5

    .line 32
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->dataType:I

    const/16 v1, 0x200

    .line 33
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->headersize:I

    .line 34
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->totalsize:I

    const/16 v1, 0x40

    .line 35
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->commonHeaderSize:I

    const/16 v1, 0x80

    .line 36
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->requestHeaderSize:I

    .line 37
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->responseHeaderSize:I

    .line 39
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->headersize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    new-array v1, v0, [B

    .line 40
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->mark:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 42
    iget-object v5, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->mark:[B

    add-int/lit8 v6, v1, 0x20

    int-to-byte v6, v6

    aput-byte v6, v5, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    .line 44
    :cond_0
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->TimeStamp:I

    .line 45
    iput v4, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->action:I

    const/16 v0, 0x13

    .line 46
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->cmd:I

    .line 47
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->value:I

    .line 48
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->ret:I

    const-string v0, "PhoneClickMirrOff() \u6784\u9020\u51fd\u6570"

    .line 49
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

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

    .line 58
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->format:[C

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
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 66
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 67
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 68
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 69
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 70
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 71
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 73
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 77
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->TimeStamp:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 78
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->cmd:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 79
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->value:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 82
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->ret:I

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PhoneClickMirrOff getBuffer action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->a:[B

    return-object v0
.end method
