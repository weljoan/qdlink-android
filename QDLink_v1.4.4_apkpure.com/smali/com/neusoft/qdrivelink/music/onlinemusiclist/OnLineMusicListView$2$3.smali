.class Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$3;
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

    .line 217
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$3;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 3

    .line 221
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$3;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    .line 222
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->onLineMusicList:Ljava/util/List;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$3;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    iget-object v1, v1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$600(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1, v2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playOnLineMusic(Ljava/util/List;ILjava/lang/String;I)V

    .line 223
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$3;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    new-instance v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$3;->this$1:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    iget-object v1, v1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$900(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, p2, v0, p2}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$1000(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method
