.class public Lcom/neusoft/qdrivelink/music/search/SearchMusicPresenter;
.super Ljava/lang/Object;
.source "SearchMusicPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;


# instance fields
.field private searchMusicView:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

.field private wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 12
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicPresenter;->searchMusicView:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    .line 13
    new-instance p1, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-direct {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicPresenter;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    .line 14
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicPresenter;->searchMusicView:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->setPresenter(Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public requestSearchMusic(Ljava/lang/String;IIII)V
    .locals 7

    .line 26
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicPresenter;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicPresenter;->searchMusicView:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/neusoft/qdrivelink/music/search/SearchMusicModel;->responseSearchMusic(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/search/SearchMusicView;Ljava/lang/String;IIII)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
