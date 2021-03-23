.class public Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncPresenter;
.super Ljava/lang/Object;
.source "QQMusicSyncPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncContract$Presenter;


# instance fields
.field private qqMusicSyncView:Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 9
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncPresenter;->qqMusicSyncView:Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;

    .line 10
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncPresenter;->qqMusicSyncView:Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;->setPresenter(Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    return-void
.end method
