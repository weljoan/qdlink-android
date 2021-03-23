.class Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;
.super Ljava/lang/Object;
.source "QDMediaPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 36
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$000(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    .line 38
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$100(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;

    move-result-object v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    new-instance v1, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;-><init>(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$102(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;

    .line 42
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$200(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->START:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    if-ne v0, v1, :cond_2

    .line 43
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    .line 44
    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    iget-object v2, v2, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x64

    mul-long v4, v4, v0

    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-gtz v8, :cond_1

    const-wide/16 v6, 0x1

    goto :goto_0

    :cond_1
    move-wide v6, v2

    .line 45
    :goto_0
    div-long/2addr v4, v6

    .line 46
    iget-object v6, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    long-to-int v7, v4

    invoke-static {v6, v7}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$302(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;I)I

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mTimerTask:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {v7}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$200(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    move-result-object v7

    invoke-virtual {v7}, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " CurrentPosition:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " Duration:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, " bufferPercentage:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {v7}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$300(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " CurrentPercentage%:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "QDMediaPlayer"

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    const/4 v5, 0x0

    .line 50
    iput v5, v4, Landroid/os/Message;->what:I

    long-to-int v1, v0

    .line 51
    iput v1, v4, Landroid/os/Message;->arg1:I

    long-to-int v0, v2

    .line 52
    iput v0, v4, Landroid/os/Message;->arg2:I

    .line 53
    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->secToTime(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$100(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
