.class final Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListModel$1;
.super Ljava/lang/Object;
.source "OnLineMusicListModel.java"

# interfaces
.implements Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListModel;->getOnLineMusicSongList(Ljava/lang/String;Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$onLineMusicListView:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListModel$1;->val$onLineMusicListView:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseSongList(ILjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_4

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 24
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 25
    new-instance v3, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-direct {v3}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;-><init>()V

    .line 28
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getArtists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    .line 29
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getArtists()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/Artists;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/Artists;->getName()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3

    :cond_0
    const-string v4, ""

    move-object v6, v4

    const/4 v4, 0x0

    .line 32
    :goto_1
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v7}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getArtists()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 33
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v7}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getArtists()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    if-ne v4, v7, :cond_1

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v6}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getArtists()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neusoft/sdk/wangyilibinter/bean/Artists;

    invoke-virtual {v6}, Lcom/neusoft/sdk/wangyilibinter/bean/Artists;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 36
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v6}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getArtists()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neusoft/sdk/wangyilibinter/bean/Artists;

    invoke-virtual {v6}, Lcom/neusoft/sdk/wangyilibinter/bean/Artists;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "  "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v6

    .line 40
    :goto_3
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v5}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setSongName(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setArtistName(Ljava/lang/String;)V

    .line 42
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setId(J)V

    .line 43
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getAlbum()Lcom/neusoft/sdk/wangyilibinter/bean/Album;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/Album;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setAlbumName(Ljava/lang/String;)V

    .line 44
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getAlbum()Lcom/neusoft/sdk/wangyilibinter/bean/Album;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setAlbumImage(Ljava/lang/String;)V

    .line 45
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getAlbum()Lcom/neusoft/sdk/wangyilibinter/bean/Album;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setPlayurl(Ljava/lang/String;)V

    .line 46
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getAlbum()Lcom/neusoft/sdk/wangyilibinter/bean/Album;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/Album;->getPicUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setListenFile(Ljava/lang/String;)V

    .line 47
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v4}, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setDuration(J)V

    .line 48
    invoke-virtual {v3, v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->setPlayType(I)V

    .line 50
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 52
    :cond_3
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListModel$1;->val$onLineMusicListView:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-virtual {p2, p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->responseOnLineMusicSongList(ILjava/util/List;)V

    goto :goto_4

    .line 55
    :cond_4
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListModel$1;->val$onLineMusicListView:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->responseOnLineMusicSongList(ILjava/util/List;)V

    :goto_4
    return-void
.end method
