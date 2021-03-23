.class public Lcom/neusoft/qdrivelink/music/MusicPresenter;
.super Ljava/lang/Object;
.source "MusicPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;


# instance fields
.field private mMusicView:Lcom/neusoft/qdrivelink/music/MusicView;

.field private wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/MusicView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicPresenter;->mMusicView:Lcom/neusoft/qdrivelink/music/MusicView;

    .line 25
    new-instance p1, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-direct {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicPresenter;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    .line 26
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicPresenter;->mMusicView:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/music/MusicView;->setPresenter(Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeMusicType(I[Landroid/widget/TextView;[Landroid/view/View;Landroid/content/Context;[Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0

    .line 43
    invoke-static {p1, p2, p3, p4, p5}, Lcom/neusoft/qdrivelink/music/MusicModel;->changeMusicType(I[Landroid/widget/TextView;[Landroid/view/View;Landroid/content/Context;[Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public requestLocalMusicData(Landroid/content/Context;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicPresenter;->mMusicView:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/music/MusicModel;->getLocalMusicData(Landroid/content/Context;Lcom/neusoft/qdrivelink/music/MusicView;)V

    return-void
.end method

.method public requestMusicRankData()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicPresenter;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/MusicPresenter;->mMusicView:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/music/MusicModel;->getMusicRankData(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/MusicView;)V

    return-void
.end method

.method public requestSearchMusic(Ljava/lang/String;IIII)V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicPresenter;->wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/MusicPresenter;->mMusicView:Lcom/neusoft/qdrivelink/music/MusicView;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/neusoft/qdrivelink/music/MusicModel;->responseSearchMusic(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/MusicView;Ljava/lang/String;IIII)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
