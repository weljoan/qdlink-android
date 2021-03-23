.class public Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;
.super Ljava/lang/Object;
.source "CustomStatus.java"


# instance fields
.field private a:[B

.field public commonHeaderSize:I

.field public dataType:I

.field public format:[C

.field public headersize:I

.field public totalsize:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 10
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->format:[C

    .line 18
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->format:[C

    const/4 v1, 0x0

    const/16 v2, 0x21

    aput-char v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x42

    .line 19
    aput-char v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x49

    .line 20
    aput-char v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x4e

    .line 21
    aput-char v2, v0, v1

    const/16 v0, 0x63

    .line 22
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->dataType:I

    const/16 v0, 0x200

    .line 23
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->headersize:I

    .line 24
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->totalsize:I

    const/16 v0, 0x40

    .line 25
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->commonHeaderSize:I

    .line 27
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->headersize:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->a:[B

    return-void
.end method


# virtual methods
.method public getBuffer()[B
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x200

    if-ge v1, v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v0, 0x1

    .line 35
    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v0, 0x2

    .line 36
    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v0, 0x3

    .line 37
    aget-char v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 39
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->dataType:I

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 40
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->totalsize:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 42
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->commonHeaderSize:I

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->a:[B

    const/16 v2, 0x40

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 44
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->a:[B

    return-object v0
.end method

.method public setValueByBuffer([B)V
    .locals 1

    const/4 v0, 0x4

    .line 51
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->dataType:I

    const/16 v0, 0x8

    .line 53
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->totalsize:I

    const/16 v0, 0x40

    .line 56
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;->commonHeaderSize:I

    return-void
.end method
