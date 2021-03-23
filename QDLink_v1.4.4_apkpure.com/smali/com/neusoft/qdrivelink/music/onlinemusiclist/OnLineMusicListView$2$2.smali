.class Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$2;
.super Ljava/lang/Object;
.source "OnLineMusicListView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$2;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 4

    .line 211
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$2;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    .line 212
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->onLineMusicList:Ljava/util/List;

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$2;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    iget-object v2, v2, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$600(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, p2, v2, v3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playOnLineMusic(Ljava/util/List;ILjava/lang/String;I)V

    .line 213
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$2;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    new-instance p2, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$2;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$700(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1, p2, v1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$800(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method
