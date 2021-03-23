.class public Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;
.super Ljava/lang/Object;
.source "SongListBean.java"


# instance fields
.field private album:Lcom/neusoft/sdk/wangyilibinter/bean/Album;

.field private artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/Artists;",
            ">;"
        }
    .end annotation
.end field

.field private commentThreadId:Ljava/lang/String;

.field private copyrightId:Ljava/lang/String;

.field private djid:I

.field private duration:I

.field private fee:I

.field private ftype:I

.field private id:Ljava/lang/String;

.field private lastRank:I

.field private mvid:I

.field private name:Ljava/lang/String;

.field private no:I

.field private privilege:Lcom/neusoft/sdk/wangyilibinter/bean/Privilege;

.field private publishTime:J

.field private score:D

.field private status:I

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Lcom/neusoft/sdk/wangyilibinter/bean/Album;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->album:Lcom/neusoft/sdk/wangyilibinter/bean/Album;

    return-object v0
.end method

.method public getArtists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/Artists;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->artists:Ljava/util/List;

    return-object v0
.end method

.method public getCommentThreadId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->commentThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyrightId()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->copyrightId:Ljava/lang/String;

    return-object v0
.end method

.method public getDjid()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->djid:I

    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 74
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->duration:I

    return v0
.end method

.method public getFee()I
    .locals 1

    .line 82
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->fee:I

    return v0
.end method

.method public getFtype()I
    .locals 1

    .line 90
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->ftype:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getLastRank()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->lastRank:I

    return v0
.end method

.method public getMvid()I
    .locals 1

    .line 114
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->mvid:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->no:I

    return v0
.end method

.method public getPrivilege()Lcom/neusoft/sdk/wangyilibinter/bean/Privilege;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->privilege:Lcom/neusoft/sdk/wangyilibinter/bean/Privilege;

    return-object v0
.end method

.method public getPublishTime()J
    .locals 2

    .line 138
    iget-wide v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->publishTime:J

    return-wide v0
.end method

.method public getScore()D
    .locals 2

    .line 146
    iget-wide v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->score:D

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 154
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->status:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->type:I

    return v0
.end method

.method public setAlbum(Lcom/neusoft/sdk/wangyilibinter/bean/Album;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->album:Lcom/neusoft/sdk/wangyilibinter/bean/Album;

    return-void
.end method

.method public setArtists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/Artists;",
            ">;)V"
        }
    .end annotation

    .line 38
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->artists:Ljava/util/List;

    return-void
.end method

.method public setCommentThreadId(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->commentThreadId:Ljava/lang/String;

    return-void
.end method

.method public setCopyrightId(Ljava/lang/String;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->copyrightId:Ljava/lang/String;

    return-void
.end method

.method public setDjid(I)V
    .locals 0

    .line 70
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->djid:I

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 78
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->duration:I

    return-void
.end method

.method public setFee(I)V
    .locals 0

    .line 86
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->fee:I

    return-void
.end method

.method public setFtype(I)V
    .locals 0

    .line 94
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->ftype:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->id:Ljava/lang/String;

    return-void
.end method

.method public setLastRank(I)V
    .locals 0

    .line 110
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->lastRank:I

    return-void
.end method

.method public setMvid(I)V
    .locals 0

    .line 118
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->mvid:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setNo(I)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->no:I

    return-void
.end method

.method public setPrivilege(Lcom/neusoft/sdk/wangyilibinter/bean/Privilege;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->privilege:Lcom/neusoft/sdk/wangyilibinter/bean/Privilege;

    return-void
.end method

.method public setPublishTime(J)V
    .locals 0

    .line 142
    iput-wide p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->publishTime:J

    return-void
.end method

.method public setScore(D)V
    .locals 0

    .line 150
    iput-wide p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->score:D

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 158
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->status:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 166
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->type:I

    return-void
.end method
