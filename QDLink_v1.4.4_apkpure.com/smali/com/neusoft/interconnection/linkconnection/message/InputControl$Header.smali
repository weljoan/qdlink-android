.class public Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;
.super Ljava/lang/Object;
.source "InputControl.java"


# instance fields
.field private a:[B

.field public action:I

.field private synthetic b:Lcom/neusoft/interconnection/linkconnection/message/InputControl;

.field public commonHeaderSize:I

.field public dataType:I

.field public event_type:S

.field public event_value0:S

.field public event_value1:S

.field public event_value2:S

.field public event_value3:S

.field public finger:S

.field public format:[C

.field public headersize:I

.field public mEventNumber:S

.field public mark:[B

.field public press:S

.field public requestHeaderSize:I

.field public responseHeaderSize:I

.field public totalsize:I

.field public type:S

.field public x:S

.field public y:S


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/linkconnection/message/InputControl;)V
    .locals 5

    .line 35
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->b:Lcom/neusoft/interconnection/linkconnection/message/InputControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x4

    new-array p1, p1, [C

    .line 13
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->format:[C

    const/16 p1, 0x20

    new-array v0, p1, [B

    .line 21
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->mark:[B

    .line 36
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->format:[C

    const/4 v1, 0x0

    const/16 v2, 0x21

    aput-char v2, v0, v1

    const/4 v2, 0x1

    const/16 v3, 0x42

    .line 37
    aput-char v3, v0, v2

    const/4 v2, 0x2

    const/16 v3, 0x49

    .line 38
    aput-char v3, v0, v2

    const/4 v3, 0x3

    const/16 v4, 0x4e

    .line 39
    aput-char v4, v0, v3

    .line 40
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->dataType:I

    const/16 v0, 0x200

    .line 41
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->totalsize:I

    .line 42
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->headersize:I

    const/16 v0, 0x40

    .line 43
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->commonHeaderSize:I

    .line 44
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->requestHeaderSize:I

    .line 45
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->responseHeaderSize:I

    .line 46
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->headersize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    new-array p1, p1, [B

    .line 47
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->mark:[B

    .line 48
    iput-short v2, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->mEventNumber:S

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    .line 53
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 55
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->format:[C

    aget-char v4, v3, v0

    int-to-byte v4, v4

    aput-byte v4, v1, v0

    const/4 v4, 0x1

    .line 56
    aget-char v5, v3, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x2

    .line 57
    aget-char v5, v3, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    const/4 v4, 0x3

    .line 58
    aget-char v3, v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v4

    .line 60
    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->dataType:I

    const/4 v4, 0x4

    invoke-static {v3, v1, v4}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 61
    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->totalsize:I

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 62
    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->headersize:I

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 63
    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->commonHeaderSize:I

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 64
    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->requestHeaderSize:I

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 65
    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->responseHeaderSize:I

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 66
    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->action:I

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    const/16 v4, 0x20

    if-ge v3, v4, :cond_1

    .line 68
    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    add-int v5, v1, v3

    iget-object v6, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->mark:[B

    aget-byte v6, v6, v3

    aput-byte v6, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v4

    .line 71
    iget-short v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->mEventNumber:S

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    const/16 v3, -0x8000

    .line 72
    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    .line 73
    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    const/16 v4, 0x1ff

    invoke-static {v4, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    const/16 v3, 0x3ff

    .line 74
    iget-object v5, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v5, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    .line 75
    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v4, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    .line 76
    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v0, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    const/16 v3, -0x7ffe

    .line 77
    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    const/16 v3, 0x31f

    .line 78
    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v3, v4, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    .line 79
    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    const/16 v2, 0x7f

    .line 80
    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    move-result v1

    .line 81
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->shortToByteArray(S[BI)I

    .line 82
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    return-object v0
.end method

.method public setValueByBuffer([BI)V
    .locals 4

    const/4 v0, 0x4

    .line 89
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->dataType:I

    const/16 v0, 0x8

    .line 91
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->totalsize:I

    const/16 v0, 0xc

    .line 93
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->headersize:I

    const/16 v0, 0x10

    .line 95
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->commonHeaderSize:I

    const/16 v0, 0x14

    .line 97
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->requestHeaderSize:I

    const/16 v0, 0x18

    .line 99
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->responseHeaderSize:I

    const/16 v0, 0x1c

    .line 101
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->action:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->mark:[B

    add-int/lit8 v3, v1, 0x20

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    .line 108
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->mEventNumber:S

    const/16 v1, 0x42

    .line 110
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_type:S

    const/16 v1, 0x44

    .line 112
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_value0:S

    const/16 v1, 0x46

    .line 114
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_value1:S

    const/16 v1, 0x48

    .line 116
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_value2:S

    const/16 v1, 0x4a

    .line 118
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_value3:S

    const/16 v1, 0x4c

    .line 120
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->type:S

    const/16 v1, 0x4e

    .line 122
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->x:S

    const/16 v1, 0x50

    .line 124
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->y:S

    const/16 v1, 0x52

    .line 126
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->press:S

    const/16 v1, 0x54

    .line 128
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToShort([BI)S

    move-result v1

    iput-short v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->finger:S

    :goto_1
    if-ge v0, p2, :cond_1

    .line 132
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->a:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
