.class Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;
.super Landroid/os/Handler;
.source "QDMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    .line 302
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 306
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$400(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$400(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;->onSeekChanged(IILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void
.end method
