.class public Lcom/neusoft/interconnection/linkconnection/message/AppStatus;
.super Ljava/lang/Object;
.source "AppStatus.java"


# static fields
.field public static versionAndroid:I


# instance fields
.field public TimeStamp:I

.field private a:[B

.field public action:I

.field public cmd:I

.field public commonHeaderSize:I

.field public dataType:I

.field public format:[C

.field public headersize:I

.field public integrator_server:I

.field public mark:[B

.field public requestHeaderSize:I

.field public responseHeaderSize:I

.field public ret:I

.field public totalsize:I

.field public value:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 13
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->format:[C

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 21
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->mark:[B

    .line 37
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->format:[C

    const/4 v2, 0x0

    const/16 v3, 0x21

    aput-char v3, v1, v2

    const/4 v3, 0x1

    const/16 v4, 0x42

    .line 38
    aput-char v4, v1, v3

    const/4 v4, 0x2

    const/16 v5, 0x49

    .line 39
    aput-char v5, v1, v4

    const/4 v5, 0x3

    const/16 v6, 0x4e

    .line 40
    aput-char v6, v1, v5

    .line 41
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->dataType:I

    const/16 v1, 0x200

    .line 42
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->headersize:I

    .line 43
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->totalsize:I

    const/16 v1, 0x40

    .line 44
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->commonHeaderSize:I

    const/16 v1, 0x80

    .line 45
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->requestHeaderSize:I

    .line 46
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->responseHeaderSize:I

    .line 47
    iput v4, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->action:I

    .line 48
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->cmd:I

    .line 49
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->value:I

    .line 50
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->headersize:I

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    new-array v1, v0, [B

    .line 51
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->mark:[B

    :goto_0
    if-ge v2, v0, :cond_0

    .line 53
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->mark:[B

    add-int/lit8 v3, v2, 0x20

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_0

    .line 56
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->versionAndroid:I

    .line 58
    iput v4, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->integrator_server:I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new AppStatus  AppStatus versionAndroid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->versionAndroid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

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

    .line 64
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    aput-byte v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->format:[C

    aget-char v3, v2, v0

    int-to-byte v3, v3

    aput-byte v3, v1, v0

    const/4 v3, 0x1

    .line 67
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x2

    .line 68
    aget-char v4, v2, v3

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x3

    .line 69
    aget-char v2, v2, v3

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    .line 71
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->dataType:I

    const/4 v3, 0x4

    invoke-static {v2, v1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 72
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->totalsize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 73
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->headersize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 74
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->commonHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 75
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->requestHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 76
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->responseHeaderSize:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    .line 77
    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->action:I

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v2, v3, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v1

    :goto_1
    const/16 v2, 0x20

    if-ge v0, v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    add-int v3, v1, v0

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->mark:[B

    aget-byte v4, v4, v0

    aput-byte v4, v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/2addr v1, v2

    .line 83
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->TimeStamp:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v0, v2, v1}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 84
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->cmd:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 85
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->value:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 86
    sget v1, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->versionAndroid:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    move-result v0

    .line 87
    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->integrator_server:I

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    invoke-static {v1, v2, v0}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 92
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->ret:I

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    const/16 v2, 0xc0

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/utils/Utilities;->intToByteArray(I[BI)I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->action:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",cmd:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->cmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->value:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",versionAndroid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->versionAndroid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",integrator_server:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->integrator_server:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",ret:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->ret:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/AppStatus;->a:[B

    return-object v0
.end method
