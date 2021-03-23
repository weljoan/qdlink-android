.class Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$2;
.super Ljava/lang/Object;
.source "SearchMusicView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 2

    .line 247
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$100(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->setSelectedPosition(I)V

    .line 249
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$300(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playSearchMusic(Lcom/neusoft/qdrivelink/music/bean/AudioItem;I)V

    .line 250
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    new-instance p2, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$2;->this$1:Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$500(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v1, p2, v1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$600(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method
