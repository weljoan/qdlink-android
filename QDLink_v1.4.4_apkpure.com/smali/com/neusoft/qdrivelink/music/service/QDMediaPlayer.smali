.class public Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;
.super Ljava/lang/Object;
.source "QDMediaPlayer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Lcom/neusoft/qdrivelink/music/service/QDIplayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;
    }
.end annotation


# static fields
.field private static final MSG_PROGRESS:I = 0x0

.field public static final TAG:Ljava/lang/String; = "QDMediaPlayer"


# instance fields
.field private volatile bufferProgress:I

.field private volatile cancelTimer:Z

.field private context:Landroid/content/Context;

.field private executorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private volatile handleProgress:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;

.field mTimerTask:Ljava/lang/Runnable;

.field public mediaPlayer:Landroid/media/MediaPlayer;

.field private volatile playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

.field private qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->IDLE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 34
    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$1;-><init>(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mTimerTask:Ljava/lang/Runnable;

    .line 62
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->context:Landroid/content/Context;

    .line 63
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez p1, :cond_0

    .line 64
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 67
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 68
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->cancelTimer:Z

    return p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->handleProgress:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;

    return-object p0
.end method

.method static synthetic access$102(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->handleProgress:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;

    return-object p1
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)I
    .locals 0

    .line 17
    iget p0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->bufferProgress:I

    return p0
.end method

.method static synthetic access$302(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;I)I
    .locals 0

    .line 17
    iput p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->bufferProgress:I

    return p1
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    return-object p0
.end method

.method public static secToTime(I)Ljava/lang/String;
    .locals 5

    if-gtz p0, :cond_0

    const-string p0, "00:00"

    return-object p0

    .line 154
    :cond_0
    div-int/lit8 v0, p0, 0x3c

    const-string v1, ":"

    const/16 v2, 0x3c

    if-ge v0, v2, :cond_1

    .line 157
    rem-int/2addr p0, v2

    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->unitFormat(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 160
    :cond_1
    div-int/lit8 v3, v0, 0x3c

    const/16 v4, 0x63

    if-le v3, v4, :cond_2

    const-string p0, "99:59:59"

    return-object p0

    .line 165
    :cond_2
    rem-int/2addr v0, v2

    mul-int/lit16 v2, v3, 0xe10

    sub-int/2addr p0, v2

    mul-int/lit8 v2, v0, 0x3c

    sub-int/2addr p0, v2

    .line 167
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->unitFormat(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->unitFormat(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->unitFormat(I)Ljava/lang/String;

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

    .line 177
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

    .line 179
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

    .line 138
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->cancelTimer:Z

    return-void
.end method

.method public getCurrentPosition()J
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getDuration()I
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    long-to-int v1, v0

    return v1
.end method

.method public getPlayStatus()Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    sget-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->IDLE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    :goto_0
    return-object v0
.end method

.method public idle()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    sget-object v2, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->IDLE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    if-eq v0, v2, :cond_0

    .line 261
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 265
    sget-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->IDLE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 266
    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_2

    .line 270
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 271
    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_2
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    const-string p1, "QDMediaPlayer"

    const-string v0, "mediaPlayer onCompletion"

    .line 84
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 86
    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->IDLE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 87
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->cancelTimer()V

    .line 88
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_0

    .line 89
    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    const/4 v1, 0x0

    .line 90
    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 93
    :cond_0
    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->ERROR:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    if-eq v0, v1, :cond_1

    .line 94
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    if-eqz v0, :cond_1

    const-string v0, "mediaPlayer onCompletion 1"

    .line 95
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    invoke-interface {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;->onPlayCompletion()V

    :cond_1
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 104
    sget-object p3, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->ERROR:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 105
    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    if-eqz p3, :cond_0

    .line 106
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result p1

    int-to-long v0, p1

    .line 107
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    invoke-interface {p1, p2, v0, v1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;->onError(IJ)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .line 114
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const-string v0, "QDMediaPlayer"

    const-string v1, "mediaPlayer onPrepared"

    .line 115
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->START:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    .line 117
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;->getLastSeek()J

    move-result-wide v1

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mediaPlayer onPrepared:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    long-to-int v0, v1

    .line 121
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 122
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    invoke-interface {v0, v3, v4}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;->setLastPosition(J)V

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-interface {v0, v1, p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;->onPrepared(II)V

    .line 128
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez p1, :cond_2

    const/4 p1, 0x1

    .line 129
    invoke-static {p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->executorService:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mTimerTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 133
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->runTimer()V

    return-void
.end method

.method public pause()Z
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->START:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    if-ne v0, v1, :cond_0

    .line 228
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 229
    sget-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->PAUSE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public playUrl(Ljava/lang/String;)V
    .locals 2

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playUrl videoUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QDMediaPlayer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 206
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 207
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$2;-><init>(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 217
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 218
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public runTimer()V
    .locals 1

    const/4 v0, 0x0

    .line 143
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->cancelTimer:Z

    return-void
.end method

.method public seekTo(II)V
    .locals 1

    const/4 v0, -0x1

    if-le p1, v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 240
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    mul-int p1, p1, v0

    .line 241
    div-int/2addr p1, p2

    .line 242
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->handleProgress:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;

    if-eqz p2, :cond_0

    .line 243
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->handleProgress:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer$MyHandler;->removeMessages(I)V

    .line 245
    :cond_0
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_1
    return-void
.end method

.method public setPlayCallback(Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;)V
    .locals 0

    .line 277
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->qdMediaPlayerCallback:Lcom/neusoft/qdrivelink/music/service/QDMediaPlayerCallback;

    return-void
.end method

.method public setStopStatus()V
    .locals 1

    .line 297
    sget-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->STOP:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    return-void
.end method

.method public start()Z
    .locals 4

    .line 187
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    const-string v2, "QDMediaPlayer"

    if-nez v0, :cond_0

    const-string v0, "start mediaPlayer==null"

    .line 188
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    sget-object v3, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->IDLE:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    if-eq v0, v3, :cond_1

    const-string v0, "start ok"

    .line 191
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 193
    sget-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->START:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    const/4 v0, 0x1

    return v0

    :cond_1
    const-string v0, "start failed"

    .line 196
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public stop()V
    .locals 2

    .line 251
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    sget-object v1, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->START:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    if-ne v0, v1, :cond_0

    .line 252
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 253
    sget-object v0, Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;->STOP:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playStatus:Lcom/neusoft/qdrivelink/music/service/QDIplayer$Play;

    :cond_0
    return-void
.end method
