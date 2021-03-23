.class public Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;
.super Ljava/lang/Object;
.source "Songs.java"


# instance fields
.field private album:Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;

.field private artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/song/artistss;",
            ">;"
        }
    .end annotation
.end field

.field private bMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;

.field private commentThreadId:Ljava/lang/String;

.field private copyFrom:Ljava/lang/String;

.field private copyright:I

.field private copyrightId:I

.field private dayPlays:I

.field private disc:Ljava/lang/String;

.field private duration:I

.field private fee:I

.field private ftype:I

.field private hMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/HMusic;

.field private hearTime:I

.field private id:Ljava/lang/String;

.field private lMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/LMusic;

.field private mMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/MMusic;

.field private mvid:I

.field private name:Ljava/lang/String;

.field private no:I

.field private playedNum:I

.field private popularity:D

.field private position:I

.field private rtype:I

.field private score:I

.field private starred:Z

.field private starredNum:I

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->album:Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;

    return-object v0
.end method

.method public getArtists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/song/artistss;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->artists:Ljava/util/List;

    return-object v0
.end method

.method public getCommentThreadId()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->commentThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyFrom()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->copyFrom:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()I
    .locals 1

    .line 100
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->copyright:I

    return v0
.end method

.method public getCopyrightId()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->copyrightId:I

    return v0
.end method

.method public getDayPlays()I
    .locals 1

    .line 116
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->dayPlays:I

    return v0
.end method

.method public getDisc()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->disc:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->duration:I

    return v0
.end method

.method public getFee()I
    .locals 1

    .line 140
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->fee:I

    return v0
.end method

.method public getFtype()I
    .locals 1

    .line 148
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->ftype:I

    return v0
.end method

.method public getHearTime()I
    .locals 1

    .line 156
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->hearTime:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getMvid()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->mvid:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    .line 188
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->no:I

    return v0
.end method

.method public getPlayedNum()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->playedNum:I

    return v0
.end method

.method public getPopularity()D
    .locals 2

    .line 204
    iget-wide v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->popularity:D

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .line 212
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->position:I

    return v0
.end method

.method public getRtype()I
    .locals 1

    .line 220
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->rtype:I

    return v0
.end method

.method public getScore()I
    .locals 1

    .line 228
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->score:I

    return v0
.end method

.method public getStarredNum()I
    .locals 1

    .line 244
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->starredNum:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 252
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->status:I

    return v0
.end method

.method public getbMusic()Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->bMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;

    return-object v0
.end method

.method public gethMusic()Lcom/neusoft/sdk/wangyilibinter/bean/song/HMusic;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->hMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/HMusic;

    return-object v0
.end method

.method public getlMusic()Lcom/neusoft/sdk/wangyilibinter/bean/song/LMusic;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->lMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/LMusic;

    return-object v0
.end method

.method public getmMusic()Lcom/neusoft/sdk/wangyilibinter/bean/song/MMusic;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->mMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/MMusic;

    return-object v0
.end method

.method public isStarred()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->starred:Z

    return v0
.end method

.method public setAlbum(Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->album:Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;

    return-void
.end method

.method public setArtists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/song/artistss;",
            ">;)V"
        }
    .end annotation

    .line 48
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->artists:Ljava/util/List;

    return-void
.end method

.method public setCommentThreadId(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->commentThreadId:Ljava/lang/String;

    return-void
.end method

.method public setCopyFrom(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->copyFrom:Ljava/lang/String;

    return-void
.end method

.method public setCopyright(I)V
    .locals 0

    .line 104
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->copyright:I

    return-void
.end method

.method public setCopyrightId(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->copyrightId:I

    return-void
.end method

.method public setDayPlays(I)V
    .locals 0

    .line 120
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->dayPlays:I

    return-void
.end method

.method public setDisc(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->disc:Ljava/lang/String;

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 136
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->duration:I

    return-void
.end method

.method public setFee(I)V
    .locals 0

    .line 144
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->fee:I

    return-void
.end method

.method public setFtype(I)V
    .locals 0

    .line 152
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->ftype:I

    return-void
.end method

.method public setHearTime(I)V
    .locals 0

    .line 160
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->hearTime:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->id:Ljava/lang/String;

    return-void
.end method

.method public setMvid(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->mvid:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->name:Ljava/lang/String;

    return-void
.end method

.method public setNo(I)V
    .locals 0

    .line 192
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->no:I

    return-void
.end method

.method public setPlayedNum(I)V
    .locals 0

    .line 200
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->playedNum:I

    return-void
.end method

.method public setPopularity(D)V
    .locals 0

    .line 208
    iput-wide p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->popularity:D

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 216
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->position:I

    return-void
.end method

.method public setRtype(I)V
    .locals 0

    .line 224
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->rtype:I

    return-void
.end method

.method public setScore(I)V
    .locals 0

    .line 232
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->score:I

    return-void
.end method

.method public setStarred(Z)V
    .locals 0

    .line 240
    iput-boolean p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->starred:Z

    return-void
.end method

.method public setStarredNum(I)V
    .locals 0

    .line 248
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->starredNum:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 256
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->status:I

    return-void
.end method

.method public setbMusic(Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->bMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/BMusic;

    return-void
.end method

.method public sethMusic(Lcom/neusoft/sdk/wangyilibinter/bean/song/HMusic;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->hMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/HMusic;

    return-void
.end method

.method public setlMusic(Lcom/neusoft/sdk/wangyilibinter/bean/song/LMusic;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->lMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/LMusic;

    return-void
.end method

.method public setmMusic(Lcom/neusoft/sdk/wangyilibinter/bean/song/MMusic;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;->mMusic:Lcom/neusoft/sdk/wangyilibinter/bean/song/MMusic;

    return-void
.end method
