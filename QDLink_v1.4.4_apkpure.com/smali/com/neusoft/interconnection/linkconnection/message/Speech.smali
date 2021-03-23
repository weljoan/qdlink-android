.class public Lcom/neusoft/interconnection/linkconnection/message/Speech;
.super Ljava/lang/Object;
.source "Speech.java"


# instance fields
.field public AudioFormat:I

.field public AudioFormat1:I

.field public ChannelConfig:I

.field public ChannelConfig1:I

.field public EncodingType:I

.field public EncodingType1:I

.field public Revered:I

.field public Revered1:I

.field public SampleRate:I

.field public SampleRate1:I

.field public SpeechDataSize:I

.field private a:[B

.field public action:I

.field public commonHeaderSize:I

.field public dataType:I

.field public format:[C

.field public headersize:I

.field public mark:[B

.field public oNo:I

.field public requestHeaderSize:I

.field public responseHeaderSize:I

.field public totalsize:I


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 11
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 19
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->mark:[B

    .line 51
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->format:[C

    const/4 v2, 0x0

    const/16 v3, 0x21

    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x42

    .line 52
    aput-char v4, v1, v3

    const/4 v4, 0x2

    const/16 v5, 0x49

    .line 53
    aput-char v5, v1, v4

    const/4 v4, 0x3

    const/16 v5, 0x4e

    .line 54
    aput-char v5, v1, v4

    const/16 v1, 0xc

    .line 55
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->dataType:I

    const/16 v1, 0x200

    .line 56
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->headersize:I

    .line 57
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->totalsize:I

    const/16 v1, 0x40

    .line 58
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->commonHeaderSize:I

    const/16 v1, 0x10

    .line 59
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->requestHeaderSize:I

    .line 60
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->responseHeaderSize:I

    .line 62
    iget v4, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->headersize:I

    new-array v4, v4, [B

    iput-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    new-array v4, v0, [B

    .line 63
    iput-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->mark:[B

    :goto_0
    if-ge v2, v0, :cond_0

    .line 65
    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->mark:[B

    add-int/lit8 v5, v2, 0x20

    int-to-byte v5, v5

    aput-byte v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_0

    .line 68
    :cond_0
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->EncodingType:I

    const/16 v0, 0x3e80

    .line 69
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->SampleRate:I

    .line 70
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->ChannelConfig:I

    .line 71
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->AudioFormat:I

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

    .line 81
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 84
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 85
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 86
    aget-char v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 88
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 89
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 90
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 91
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 92
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 93
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 94
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 99
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->EncodingType:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 100
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->SampleRate:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 101
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->ChannelConfig:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 102
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->AudioFormat:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 105
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->SpeechDataSize:I

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    const/16 v2, 0x120

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 106
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->oNo:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 107
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->EncodingType1:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 108
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->SampleRate1:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 109
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->ChannelConfig1:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 110
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->AudioFormat1:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Speech EncodingType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->EncodingType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",SampleRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->SampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ChannelConfig:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->ChannelConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",AudioFormat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->AudioFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->a:[B

    return-object v0
.end method

.method public setValueByBuffer([B)V
    .locals 3

    const/4 v0, 0x4

    .line 117
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->dataType:I

    const/16 v0, 0x8

    .line 119
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->totalsize:I

    const/16 v0, 0xc

    .line 121
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->headersize:I

    const/16 v0, 0x10

    .line 123
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->commonHeaderSize:I

    const/16 v0, 0x14

    .line 125
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->requestHeaderSize:I

    const/16 v0, 0x18

    .line 127
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->responseHeaderSize:I

    const/16 v0, 0x1c

    .line 129
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->action:I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x20

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->mark:[B

    add-int/lit8 v2, v0, 0x20

    aget-byte v2, p1, v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x120

    .line 137
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->SpeechDataSize:I

    const/16 v0, 0x124

    .line 140
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->oNo:I

    const/16 v0, 0x128

    .line 143
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->EncodingType1:I

    const/16 v0, 0x12c

    .line 146
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->SampleRate1:I

    const/16 v0, 0x130

    .line 149
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->ChannelConfig1:I

    const/16 v0, 0x134

    .line 152
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->AudioFormat1:I

    return-void
.end method
