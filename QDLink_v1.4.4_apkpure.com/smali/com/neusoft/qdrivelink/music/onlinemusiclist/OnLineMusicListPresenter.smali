.class public Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListPresenter;
.super Ljava/lang/Object;
.source "OnLineMusicListPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$Presenter;


# instance fields
.field private onLineMusicListView:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

.field private wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 13
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListPresenter;->onLineMusicListView:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    .line 14
    new-instance p1, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-direct {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListPresenter;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    .line 15
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListPresenter;->onLineMusicListView:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->setPresenter(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public requestOnLineMusicSongList(Ljava/lang/String;)V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListPresenter;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListPresenter;->onLineMusicListView:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1, v0, v1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListModel;->getOnLineMusicSongList(Ljava/lang/String;Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
