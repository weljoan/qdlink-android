.class public Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;
.super Ljava/lang/Object;
.source "Album.java"


# instance fields
.field private artist:Lcom/neusoft/sdk/wangyilibinter/bean/song/artist;

.field private artists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/song/artists;",
            ">;"
        }
    .end annotation
.end field

.field private blurPicUrl:Ljava/lang/String;

.field private briefDesc:Ljava/lang/String;

.field private commentThreadId:Ljava/lang/String;

.field private company:Ljava/lang/String;

.field private companyId:I

.field private copyrightId:I

.field private description:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private pic:Ljava/lang/String;

.field private picId:Ljava/lang/String;

.field private picId_str:Ljava/lang/String;

.field private picUrl:Ljava/lang/String;

.field private publishTime:Ljava/lang/String;

.field private size:I

.field private status:I

.field private subType:Ljava/lang/String;

.field private tags:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Lcom/neusoft/sdk/wangyilibinter/bean/song/artist;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->artist:Lcom/neusoft/sdk/wangyilibinter/bean/song/artist;

    return-object v0
.end method

.method public getArtists()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/song/artists;",
            ">;"
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->artists:Ljava/util/List;

    return-object v0
.end method

.method public getBlurPicUrl()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->blurPicUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getBriefDesc()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->briefDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getCommentThreadId()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->commentThreadId:Ljava/lang/String;

    return-object v0
.end method

.method public getCompany()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->company:Ljava/lang/String;

    return-object v0
.end method

.method public getCompanyId()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->companyId:I

    return v0
.end method

.method public getCopyrightId()I
    .locals 1

    .line 86
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->copyrightId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPic()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->pic:Ljava/lang/String;

    return-object v0
.end method

.method public getPicId()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->picId:Ljava/lang/String;

    return-object v0
.end method

.method public getPicId_str()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->picId_str:Ljava/lang/String;

    return-object v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->publishTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->size:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 166
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->status:I

    return v0
.end method

.method public getSubType()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->subType:Ljava/lang/String;

    return-object v0
.end method

.method public getTags()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->tags:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Lcom/neusoft/sdk/wangyilibinter/bean/song/artist;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->artist:Lcom/neusoft/sdk/wangyilibinter/bean/song/artist;

    return-void
.end method

.method public setArtists(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/song/artists;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->artists:Ljava/util/List;

    return-void
.end method

.method public setBlurPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->blurPicUrl:Ljava/lang/String;

    return-void
.end method

.method public setBriefDesc(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->briefDesc:Ljava/lang/String;

    return-void
.end method

.method public setCommentThreadId(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->commentThreadId:Ljava/lang/String;

    return-void
.end method

.method public setCompany(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->company:Ljava/lang/String;

    return-void
.end method

.method public setCompanyId(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->companyId:I

    return-void
.end method

.method public setCopyrightId(I)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->copyrightId:I

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->description:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->id:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->name:Ljava/lang/String;

    return-void
.end method

.method public setPic(Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->pic:Ljava/lang/String;

    return-void
.end method

.method public setPicId(Ljava/lang/String;)V
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->picId:Ljava/lang/String;

    return-void
.end method

.method public setPicId_str(Ljava/lang/String;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->picId_str:Ljava/lang/String;

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->publishTime:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 162
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->size:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->status:I

    return-void
.end method

.method public setSubType(Ljava/lang/String;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->subType:Ljava/lang/String;

    return-void
.end method

.method public setTags(Ljava/lang/String;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->tags:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Album;->type:Ljava/lang/String;

    return-void
.end method
