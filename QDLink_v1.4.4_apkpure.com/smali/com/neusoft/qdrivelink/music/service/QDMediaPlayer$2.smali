.class Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$2;
.super Ljava/lang/Object;
.source "QDMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V
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

    .line 207
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$2;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    .line 210
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onBufferingUpdate percent:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QDMediaPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$2;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$302(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;I)I

    .line 212
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$2;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$400(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 213
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$2;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->access$400(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$2;->this$0:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    invoke-interface {p1, p2, v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;->onBufferingProgress(II)V

    :cond_0
    return-void
.end method
