.class public Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;
.super Ljava/lang/Object;
.source "BMusic.java"


# instance fields
.field private bitrate:I

.field private dfsId:I

.field private extension:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private playTime:I

.field private size:I

.field private sr:I

.field private volumeDelta:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 23
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->bitrate:I

    return v0
.end method

.method public getDfsId()I
    .locals 1

    .line 31
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->dfsId:I

    return v0
.end method

.method public getExtension()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->extension:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayTime()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->playTime:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->size:I

    return v0
.end method

.method public getSr()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->sr:I

    return v0
.end method

.method public getVolumeDelta()D
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->volumeDelta:D

    return-wide v0
.end method

.method public setBitrate(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->bitrate:I

    return-void
.end method

.method public setDfsId(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->dfsId:I

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->extension:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->id:Ljava/lang/String;

    return-void
.end method

.method public setPlayTime(I)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->playTime:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->size:I

    return-void
.end method

.method public setSr(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->sr:I

    return-void
.end method

.method public setVolumeDelta(D)V
    .locals 0

    .line 83
    iput-wide p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;->volumeDelta:D

    return-void
.end method
