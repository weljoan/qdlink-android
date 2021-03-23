.class public Lcom/neusoft/qdrivelink/music/bean/Player;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;,
        Lcom/neusoft/qdrivelink/music/bean/Player$Play;
    }
.end annotation


# instance fields
.field private cancelTimer:Z

.field handleProgress:Landroid/os/Handler;

.field private mPlayCallback:Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;

.field private mTimer:Ljava/util/Timer;

.field mTimerTask:Ljava/util/TimerTask;

.field public mediaPlayer:Landroid/media/MediaPlayer;

.field private playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mTimer:Ljava/util/Timer;

    .line 22
    sget-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->IDLE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    .line 44
    new-instance v0, Lcom/neusoft/qdrivelink/music/bean/Player$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/bean/Player$1;-><init>(Lcom/neusoft/qdrivelink/music/bean/Player;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mTimerTask:Ljava/util/TimerTask;

    .line 112
    new-instance v0, Lcom/neusoft/qdrivelink/music/bean/Player$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/bean/Player$2;-><init>(Lcom/neusoft/qdrivelink/music/bean/Player;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->handleProgress:Landroid/os/Handler;

    .line 30
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 32
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 33
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 34
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 35
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 36
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 37
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x5dc

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/bean/Player;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->cancelTimer:Z

    return p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/music/bean/Player;)Lcom/neusoft/qdrivelink/music/bean/Player$Play;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/music/bean/Player;)Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mPlayCallback:Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;

    return-object p0
.end method

.method public static secToTime(I)Ljava/lang/String;
    .locals 5

    if-gtz p0, :cond_0

    const-string p0, "00:00"

    return-object p0

    .line 86
    :cond_0
    div-int/lit8 v0, p0, 0x3c

    const-string v1, ":"

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_1

    .line 88
    rem-int/2addr p0, v2

    .line 89
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/bean/Player;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/neusoft/qdrivelink/music/bean/Player;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 91
    :cond_1
    div-int/lit8 v3, v0, 0x3c

    const/16 v4, 0x63

    if-le v3, v4, :cond_2

    const-string p0, "99:59:59"

    return-object p0

    .line 94
    :cond_2
    rem-int/2addr v0, v2

    mul-int/lit16 v2, v3, 0xe10

    sub-int/2addr p0, v2

    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr p0, v2

    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/neusoft/qdrivelink/music/bean/Player;->unitFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/bean/Player;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    invoke-static {p0}, Lcom/neusoft/qdrivelink/music/bean/Player;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static unitFormat(I)Ljava/lang/String;
    .locals 2

    if-ltz p0, :cond_0

    const/16 v0, 0xa

    if-ge p0, v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    const/4 v0, 0x1

    .line 71
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->cancelTimer:Z

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getPlayStatus()Lcom/neusoft/qdrivelink/music/bean/Player$Play;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 214
    sget-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->IDLE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    return-object v0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    return-object v0
.end method

.method public idle()V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 198
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 200
    sget-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->IDLE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    .line 201
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    :cond_0
    return-void
.end method

.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 242
    sget-object p1, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->IDLE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    .line 243
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mPlayCallback:Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;

    if-eqz p1, :cond_0

    .line 244
    invoke-interface {p1}, Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;->onPlayCompletion()V

    :cond_0
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 224
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 226
    sget-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->START:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    .line 227
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mPlayCallback:Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;->onPrepared(II)V

    :cond_0
    return-void
.end method

.method public pause()Z
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    sget-object v1, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->START:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    if-ne v0, v1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 159
    sget-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->PAUSE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public playUrl(Ljava/lang/String;)V
    .locals 1

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 139
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public runTimer()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->cancelTimer:Z

    return-void
.end method

.method public seekTo(II)V
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    mul-int p1, p1, v0

    .line 170
    div-int/2addr p1, p2

    .line 172
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->handleProgress:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setPlayCallback(Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;)V
    .locals 0

    .line 255
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mPlayCallback:Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;

    return-void
.end method

.method public setStopStatus()V
    .locals 1

    .line 191
    sget-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->STOP:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    return-void
.end method

.method public start()Z
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    sget-object v1, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->IDLE:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    if-eq v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 126
    sget-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->START:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public stop()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    sget-object v1, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->START:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    if-ne v0, v1, :cond_0

    .line 181
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 182
    sget-object v0, Lcom/neusoft/qdrivelink/music/bean/Player$Play;->STOP:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player;->playStatus:Lcom/neusoft/qdrivelink/music/bean/Player$Play;

    :cond_0
    return-void
.end method
