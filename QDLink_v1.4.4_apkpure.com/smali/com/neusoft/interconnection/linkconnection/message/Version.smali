.class public Lcom/neusoft/interconnection/linkconnection/message/Version;
.super Ljava/lang/Object;
.source "Version.java"


# instance fields
.field public TimeStamp:I

.field private a:[B

.field public action:I

.field public carHeight:I

.field public carType:Ljava/lang/String;

.field public carVersion:Ljava/lang/String;

.field public carWidth:I

.field public cmd:I

.field public commonHeaderSize:I

.field public dataType:I

.field public format:[C

.field public headersize:I

.field public isOldSSPVER:I

.field public isSleep:I

.field public mark:[B

.field public outAppHeight:I

.field public outAppWidth:I

.field public phoneHeight:I

.field public phoneWidth:I

.field public requestHeaderSize:I

.field public responseHeaderSize:I

.field public ret:I

.field public totalsize:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 11
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 19
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->mark:[B

    const/4 v1, 0x0

    .line 26
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carVersion:Ljava/lang/String;

    .line 30
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carType:Ljava/lang/String;

    const/4 v1, 0x0

    .line 34
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->isSleep:I

    .line 38
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->isOldSSPVER:I

    .line 42
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carWidth:I

    .line 46
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carHeight:I

    .line 52
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneWidth:I

    .line 56
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneHeight:I

    .line 60
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppWidth:I

    .line 64
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppHeight:I

    .line 70
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->format:[C

    const/16 v3, 0x21

    aput-char v3, v2, v1

    const/4 v3, 0x1

    const/16 v4, 0x42

    .line 71
    aput-char v4, v2, v3

    const/4 v3, 0x2

    const/16 v4, 0x49

    .line 72
    aput-char v4, v2, v3

    const/4 v3, 0x3

    const/16 v4, 0x4e

    .line 73
    aput-char v4, v2, v3

    .line 74
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->dataType:I

    const/16 v2, 0x200

    .line 75
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->headersize:I

    .line 76
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->totalsize:I

    const/16 v2, 0x40

    .line 77
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->commonHeaderSize:I

    const/16 v2, 0x80

    .line 78
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->requestHeaderSize:I

    .line 79
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->responseHeaderSize:I

    .line 81
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->headersize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    new-array v2, v0, [B

    .line 82
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->mark:[B

    :goto_0
    if-ge v1, v0, :cond_0

    .line 84
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->mark:[B

    add-int/lit8 v3, v1, 0x20

    int-to-byte v3, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    const-string v0, "Version() \u6784\u9020\u51fd\u6570"

    .line 86
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

    .line 91
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 94
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 95
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 96
    aget-char v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 98
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 99
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 100
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 101
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 102
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 103
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 104
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 111
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->TimeStamp:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 112
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->cmd:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 115
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 116
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneWidth:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 117
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneHeight:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 118
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppWidth:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 119
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppHeight:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "version getBuffer() phoneWidth:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",phoneHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->phoneHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",outAppWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",outAppHeight:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->outAppHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->a:[B

    return-object v0
.end method

.method public setValueByBuffer([B)V
    .locals 4

    const/4 v0, 0x4

    .line 128
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->dataType:I

    const/16 v0, 0x8

    .line 130
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->totalsize:I

    const/16 v0, 0xc

    .line 132
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->headersize:I

    const/16 v0, 0x10

    .line 134
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v1

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->commonHeaderSize:I

    const/16 v1, 0x14

    .line 136
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v1

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->requestHeaderSize:I

    const/16 v1, 0x18

    .line 138
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v1

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->responseHeaderSize:I

    const/16 v1, 0x1c

    .line 140
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v1

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->action:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x20

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->mark:[B

    add-int/lit8 v3, v1, 0x20

    aget-byte v3, p1, v3

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x40

    .line 147
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v1

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->TimeStamp:I

    const/16 v1, 0x44

    .line 150
    invoke-static {p1, v1}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v1

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->cmd:I

    const/16 v1, 0x48

    .line 153
    invoke-static {p1, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carVersion:Ljava/lang/String;

    const/16 v1, 0x68

    .line 156
    invoke-static {p1, v1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carType:Ljava/lang/String;

    const/16 v0, 0x78

    .line 159
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->isSleep:I

    const/16 v0, 0x7c

    .line 162
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->isOldSSPVER:I

    const/16 v0, 0x80

    .line 164
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carWidth:I

    const/16 v0, 0x84

    .line 166
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->carHeight:I

    const/16 v0, 0xc0

    .line 171
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    return-void
.end method

.method public setVersion()V
    .locals 3

    .line 178
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 199
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    goto :goto_0

    :pswitch_0
    const/4 v1, 0x4

    .line 181
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    goto :goto_0

    :pswitch_1
    const/4 v1, 0x3

    .line 184
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    goto :goto_0

    :pswitch_2
    const/4 v1, 0x2

    .line 187
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    goto :goto_0

    :pswitch_3
    const/4 v1, 0x1

    .line 190
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    goto :goto_0

    .line 193
    :pswitch_4
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    goto :goto_0

    .line 196
    :pswitch_5
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    .line 202
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setVersion() ret:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/Version;->ret:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",sdk:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
