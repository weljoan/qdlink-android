.class Lcom/neusoft/qdrivelink/music/bean/Player$1;
.super Ljava/util/TimerTask;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/bean/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/bean/Player;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/bean/Player;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/Player$1;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 47
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player$1;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/bean/Player;->access$000(Lcom/neusoft/qdrivelink/music/bean/Player;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player$1;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_1

    return-void

    .line 53
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player$1;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player$1;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/bean/Player;->access$100(Lcom/neusoft/qdrivelink/music/bean/Player;)Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->START:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    if-ne v0, v1, :cond_3

    .line 55
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player$1;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 56
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/bean/Player$1;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    iget-object v1, v1, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    .line 57
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    const/4 v3, 0x0

    .line 58
    iput v3, v2, Landroid/os/Message;->what:I

    mul-int/lit8 v3, v1, 0x64

    if-gtz v0, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v0

    .line 59
    :goto_0
    div-int/2addr v3, v4

    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 60
    iput v0, v2, Landroid/os/Message;->arg2:I

    .line 61
    div-int/lit16 v1, v1, 0x3e8

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/bean/Player;->secToTime(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 62
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player$1;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/bean/Player;->handleProgress:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
