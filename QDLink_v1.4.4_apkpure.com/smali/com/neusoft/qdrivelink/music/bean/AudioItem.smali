.class public Lcom/neusoft/qdrivelink/music/bean/AudioItem;
.super Ljava/lang/Object;
.source "AudioItem.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private albumImage:Ljava/lang/String;

.field private albumName:Ljava/lang/String;

.field private artistName:Ljava/lang/String;

.field private volatile currentPositon:J

.field private volatile duration:J

.field private id:J

.field private listenFile:Ljava/lang/String;

.field private playType:I

.field private playurl:Ljava/lang/String;

.field private randomIndex:I

.field private songName:Ljava/lang/String;

.field private totalTime:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 12
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->listenFile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAlbumImage()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->albumImage:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->artistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPositon()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->currentPositon:J

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 97
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->duration:J

    return-wide v0
.end method

.method public getId()J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->id:J

    return-wide v0
.end method

.method public getListenFile()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->listenFile:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayType()I
    .locals 1

    .line 25
    iget v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->playType:I

    return v0
.end method

.method public getPlayurl()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->playurl:Ljava/lang/String;

    return-object v0
.end method

.method public getRandomIndex()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->randomIndex:I

    return v0
.end method

.method public getSongName()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalTime()I
    .locals 1

    .line 105
    iget v0, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->totalTime:I

    return v0
.end method

.method public setAlbumImage(Ljava/lang/String;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->albumImage:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->albumName:Ljava/lang/String;

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->artistName:Ljava/lang/String;

    return-void
.end method

.method public setCurrentPositon(J)V
    .locals 0

    .line 93
    iput-wide p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->currentPositon:J

    return-void
.end method

.method public setDuration(J)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->duration:J

    return-void
.end method

.method public setId(J)V
    .locals 0

    .line 37
    iput-wide p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->id:J

    return-void
.end method

.method public setListenFile(Ljava/lang/String;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->listenFile:Ljava/lang/String;

    return-void
.end method

.method public setPlayType(I)V
    .locals 0

    .line 29
    iput p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->playType:I

    return-void
.end method

.method public setPlayurl(Ljava/lang/String;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->playurl:Ljava/lang/String;

    return-void
.end method

.method public setRandomIndex(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->randomIndex:I

    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->songName:Ljava/lang/String;

    return-void
.end method

.method public setTotalTime(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->totalTime:I

    return-void
.end method
