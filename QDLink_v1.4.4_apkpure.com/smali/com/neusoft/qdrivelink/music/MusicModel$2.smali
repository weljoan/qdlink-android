.class final Lcom/neusoft/qdrivelink/music/MusicModel$2;
.super Ljava/lang/Object;
.source "MusicModel.java"

# interfaces
.implements Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/MusicModel;->responseSearchMusic(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/MusicView;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$musicView:Lcom/neusoft/qdrivelink/music/MusicView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/MusicView;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicModel$2;->val$musicView:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseSearchSong(ILcom/neusoft/sdk/wangyilibinter/bean/Result;)V
    .locals 7

    if-eqz p2, :cond_4

    .line 201
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 202
    :goto_0
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 203
    new-instance v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-direct {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;-><init>()V

    .line 206
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAr()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-gt v3, v4, :cond_0

    .line 207
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAr()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/sdk/wangyilibinter/bean/Ar;

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/Ar;->getName()Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_0
    const-string v3, ""

    move-object v5, v3

    const/4 v3, 0x0

    .line 210
    :goto_1
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v6}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAr()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_2

    .line 211
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v6}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAr()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sub-int/2addr v6, v4

    if-ne v3, v6, :cond_1

    .line 212
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v5}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAr()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neusoft/sdk/wangyilibinter/bean/Ar;

    invoke-virtual {v5}, Lcom/neusoft/sdk/wangyilibinter/bean/Ar;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 214
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v5}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAr()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neusoft/sdk/wangyilibinter/bean/Ar;

    invoke-virtual {v5}, Lcom/neusoft/sdk/wangyilibinter/bean/Ar;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object v3, v5

    .line 218
    :goto_3
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setSongName(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setArtistName(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setId(J)V

    .line 221
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAl()Lcom/neusoft/sdk/wangyilibinter/bean/Al;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/Al;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setAlbumName(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAl()Lcom/neusoft/sdk/wangyilibinter/bean/Al;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/Al;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setAlbumImage(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAl()Lcom/neusoft/sdk/wangyilibinter/bean/Al;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/Al;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setPlayurl(Ljava/lang/String;)V

    .line 224
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getAl()Lcom/neusoft/sdk/wangyilibinter/bean/Al;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/Al;->getPicUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setListenFile(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v3}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getDt()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setDuration(J)V

    const/4 v3, 0x2

    .line 226
    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setPlayType(I)V

    .line 228
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 231
    :cond_3
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicModel$2;->val$musicView:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-virtual {p2, v0, p1}, Lcom/neusoft/qdrivelink/music/MusicView;->responseSearchMusicList(ILjava/util/List;)V

    goto :goto_4

    .line 234
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicModel$2;->val$musicView:Lcom/neusoft/qdrivelink/music/MusicView;

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/neusoft/qdrivelink/music/MusicView;->responseSearchMusicList(ILjava/util/List;)V

    :goto_4
    return-void
.end method
