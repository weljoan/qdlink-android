.class Lcom/neusoft/qdrivelink/music/playlist/PlayListView$1;
.super Ljava/lang/Object;
.source "PlayListView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 92
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$1;->this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 95
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    const/16 v1, 0x107

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 101
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    const v1, 0x7f0d003b

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$1;->this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->access$200(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$1;->this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->access$100(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$1;->this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->access$000(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    :cond_4
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
