.class public Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayPresenter;
.super Ljava/lang/Object;
.source "MusicPlayPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayContract$Presenter;


# instance fields
.field private mOnLineMusicView:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayPresenter;->mOnLineMusicView:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    .line 10
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayPresenter;->mOnLineMusicView:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->setPresenter(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    return-void
.end method
