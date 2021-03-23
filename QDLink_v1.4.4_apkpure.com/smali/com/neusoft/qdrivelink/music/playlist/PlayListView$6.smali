.class Lcom/neusoft/qdrivelink/music/playlist/PlayListView$6;
.super Ljava/lang/Object;
.source "PlayListView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->viewResume()V
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

    .line 183
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$6;->this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playListRefrsh(I)V
    .locals 2

    .line 187
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    .line 188
    iput v1, v0, Landroid/os/Message;->what:I

    add-int/lit8 p1, p1, 0x1

    .line 189
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 190
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$6;->this$0:Lcom/neusoft/qdrivelink/music/playlist/PlayListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->access$300(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
