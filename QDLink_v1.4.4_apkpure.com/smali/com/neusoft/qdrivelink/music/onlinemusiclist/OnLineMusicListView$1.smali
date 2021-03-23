.class Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$1;
.super Ljava/lang/Object;
.source "OnLineMusicListView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/service/PlayState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->viewResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$1;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playMusicState(I)V
    .locals 2

    .line 118
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x106

    .line 119
    iput v1, v0, Landroid/os/Message;->what:I

    .line 120
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$1;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$000(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
