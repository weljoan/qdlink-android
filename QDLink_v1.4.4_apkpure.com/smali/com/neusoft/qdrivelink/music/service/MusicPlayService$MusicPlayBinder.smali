.class public Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;
.super Landroid/os/Binder;
.source "MusicPlayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/service/MusicPlayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MusicPlayBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public changeMode(I)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$1102(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    return-void
.end method

.method public getMusicPlayService()Lcom/neusoft/qdrivelink/music/service/MusicPlayService;
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    return-object v0
.end method

.method public nextMusic()V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->serviceNext()V

    return-void
.end method

.method public overLocalMusic(Ljava/util/List;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 378
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$500(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 379
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 381
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    .line 382
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localMusicList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 383
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object p4, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localMusicList:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 385
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 386
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public pauseMusic()V
    .locals 3

    .line 489
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 491
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->pause()Z

    .line 492
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    const/4 v2, 0x1

    iput v2, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 493
    iget v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    if-eqz v0, :cond_1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$202(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    goto :goto_0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0, v2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$202(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 502
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz v0, :cond_3

    .line 503
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v2, v2, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {v0, v2}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V

    .line 506
    :cond_3
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_4

    .line 507
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    const-string v0, "textwwwww"

    const-string v1, "RemoteControlClient.PLAYSTATE_PAUSED333"

    .line 508
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public playCurrentMusic(I)V
    .locals 2

    .line 345
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 349
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 350
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->start()Z

    .line 351
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    const/4 v0, 0x0

    iput v0, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 353
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz p1, :cond_3

    .line 354
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V

    goto :goto_0

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 358
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 360
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 363
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$900(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    move-result-object p1

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$800(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public playLocalMusic()V
    .locals 3

    .line 396
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public playLocalMusic(Ljava/util/List;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 410
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$500(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 411
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 413
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    .line 414
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object p4, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localMusicList:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 415
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 416
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 417
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$500(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p1

    if-ne p4, p1, :cond_4

    .line 421
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$700(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 423
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 426
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 427
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->start()Z

    .line 428
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    const/4 p2, 0x0

    iput p2, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 430
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz p1, :cond_5

    .line 431
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget p2, p2, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V

    goto/16 :goto_0

    .line 435
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 436
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 439
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 441
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    .line 442
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object p4, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localMusicList:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 443
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 444
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 445
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 450
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 452
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sput-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    .line 453
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object p4, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localMusicList:Ljava/util/List;

    invoke-interface {p1, p4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 454
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 455
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 456
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public playOnLineMusic(Ljava/util/List;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 290
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$500(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 291
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0, p4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 292
    sput-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    .line 293
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 294
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 296
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$900(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$800(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$500(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    if-ne p4, v0, :cond_4

    .line 301
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$700(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 303
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p1

    if-ne p1, p2, :cond_2

    .line 306
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 307
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->start()Z

    .line 308
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    const/4 p2, 0x0

    iput p2, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 310
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz p1, :cond_5

    .line 311
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget p2, p2, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V

    goto/16 :goto_0

    .line 315
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 317
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$900(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$800(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V

    goto :goto_0

    .line 321
    :cond_3
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0, p4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 322
    sput-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    .line 323
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 324
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$900(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$800(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V

    goto :goto_0

    .line 330
    :cond_4
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0, p4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 331
    sput-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    .line 332
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 333
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 335
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$900(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$800(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public playSearchMusic(Lcom/neusoft/qdrivelink/music/bean/AudioItem;I)V
    .locals 3

    .line 469
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    const-string v1, "searchablumauto"

    if-eqz v0, :cond_0

    .line 470
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 471
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 472
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 473
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 474
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$900(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$800(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V

    goto :goto_0

    .line 476
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    .line 477
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$602(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 479
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$702(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;Ljava/lang/String;)Ljava/lang/String;

    .line 480
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$502(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 481
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$900(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$800(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public preMusic()V
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->servicePre()V

    return-void
.end method

.method public seekTo(II)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->seekTo(II)V

    :cond_0
    return-void
.end method

.method public startMusice()V
    .locals 6

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v1, v1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->currentPlaySuccess:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    .line 520
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$1000(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Z

    .line 522
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->start()Z

    .line 523
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iput v2, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    goto :goto_0

    .line 526
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$1000(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Z

    .line 528
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayType()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 530
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v4, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getPlayurl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 533
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$900(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v4, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$800(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v4

    invoke-virtual {v0, v1, v4}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V

    .line 537
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_3

    .line 538
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v2}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v0

    .line 540
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v1, 0x2

    .line 541
    sget-object v2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/4 v1, 0x7

    .line 542
    sget-object v2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    const/16 v1, 0x9

    .line 543
    sget-object v2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v3, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/RemoteControlClient$MetadataEditor;->putLong(IJ)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 544
    invoke-virtual {v0}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 545
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->myRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    const-string v0, "textwwwww"

    const-string v1, "RemoteControlClient.PLAYSTATE_PLAYING111"

    .line 546
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz v0, :cond_4

    .line 550
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget v1, v1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 553
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 554
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    const/4 v1, -0x1

    iput v1, v0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 555
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playLocalMusic()V

    :cond_4
    :goto_1
    return-void
.end method
