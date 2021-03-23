.class final Lcom/neusoft/qdrivelink/music/search/SearchMusicModel$1;
.super Ljava/lang/Object;
.source "SearchMusicModel.java"

# interfaces
.implements Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/search/SearchMusicModel;->responseSearchMusic(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/search/SearchMusicView;Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$searchMusicView:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicModel$1;->val$searchMusicView:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseSearchSong(ILcom/neusoft/sdk/wangyilibinter/bean/Result;)V
    .locals 7

    if-eqz p2, :cond_4

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 27
    :goto_0
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 28
    new-instance v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-direct {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;-><init>()V

    .line 31
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

    .line 32
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

    .line 35
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

    .line 36
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

    .line 37
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

    .line 39
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

    .line 43
    :goto_3
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/Result;->getSongs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setSongName(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setArtistName(Ljava/lang/String;)V

    .line 45
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

    .line 46
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

    .line 47
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

    .line 48
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

    .line 49
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

    .line 50
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

    .line 51
    invoke-virtual {v2, v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setPlayType(I)V

    .line 53
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 56
    :cond_3
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicModel$1;->val$searchMusicView:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-virtual {p2, v0, p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->responseSearchMusicList(ILjava/util/List;)V

    goto :goto_4

    .line 59
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicModel$1;->val$searchMusicView:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->responseSearchMusicList(ILjava/util/List;)V

    :goto_4
    return-void
.end method
