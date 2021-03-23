.class Lcom/neusoft/qdrivelink/music/playlist/PlayListView$4;
.super Ljava/lang/Object;
.source "PlayListView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$4;->this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$4;->this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->access$000(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    .line 161
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playCurrentMusic(I)V

    return-void
.end method
