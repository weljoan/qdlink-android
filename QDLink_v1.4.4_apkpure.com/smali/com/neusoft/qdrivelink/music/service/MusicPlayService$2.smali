.class Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;
.super Ljava/lang/Object;
.source "MusicPlayService.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/service/MusicPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 5

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioManager.OnAudioFocusChangeListener focusChange:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textwwwww"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x2

    const-string v2, ",isPlayMusic:"

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    if-eq p1, v4, :cond_0

    goto/16 :goto_2

    .line 190
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_GAIN currentStatus :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$200(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$200(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p1

    if-ne p1, v4, :cond_b

    .line 194
    :try_start_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 195
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 196
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->start()Z

    .line 197
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    const/4 v0, 0x0

    iput v0, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 199
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz p1, :cond_b

    .line 200
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 203
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 210
    :cond_2
    :try_start_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_LOSS isPlayMusic :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_3

    goto :goto_0

    .line 220
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, v3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$202(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    goto :goto_0

    .line 214
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$202(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 215
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->pause()Z

    .line 216
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$400(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V

    .line 217
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iput v4, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 224
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz p1, :cond_b

    .line 225
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    :catch_1
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 165
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AUDIOFOCUS_LOSS_TRANSIENT currentStatus :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$200(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 169
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    if-eqz p1, :cond_8

    if-eq p1, v4, :cond_7

    goto :goto_1

    .line 176
    :cond_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, v3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$202(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    goto :goto_1

    .line 171
    :cond_8
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$202(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 172
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->pause()Z

    .line 173
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iput v4, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 181
    :cond_9
    :goto_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz p1, :cond_a

    .line 182
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {p1, v3}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    const-string p1, "RemoteControlClient.PLAYSTATE_PAUSED111"

    .line 183
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_a
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz p1, :cond_b

    .line 186
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$2;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V

    :cond_b
    :goto_2
    return-void
.end method
