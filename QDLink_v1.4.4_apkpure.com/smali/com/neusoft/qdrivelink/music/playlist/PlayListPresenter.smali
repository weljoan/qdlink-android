.class public Lcom/neusoft/qdrivelink/music/playlist/PlayListPresenter;
.super Ljava/lang/Object;
.source "PlayListPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/playlist/PlayListContract$Presenter;


# instance fields
.field private playListView:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListPresenter;->playListView:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    .line 11
    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->setPresenter(Lcom/neusoft/qdrivelink/music/playlist/PlayListContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public start()V
    .locals 0

    return-void
.end method
