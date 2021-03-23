.class Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;
.super Ljava/lang/Object;
.source "MusicPlayService.java"

# interfaces
.implements Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->onCreate()V
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

    .line 612
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responsePlayUrl(ILcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 615
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 616
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 617
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->playUrl(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_0
    const-string p1, "textwang"

    const-string p2, "playUrl == null"

    .line 621
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    const/4 p2, 0x1

    iput p2, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    .line 624
    iget p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    const/4 v0, 0x2

    if-eqz p1, :cond_2

    if-eq p1, p2, :cond_1

    goto :goto_0

    .line 629
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$202(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    goto :goto_0

    .line 626
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$202(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;I)I

    .line 632
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 634
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$300(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/QDMediaPlayer;->pause()Z

    .line 636
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    if-eqz p1, :cond_4

    .line 637
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playOrPauseCallback:Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget p2, p2, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->isPlayMusic:I

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;->showPlayOrPause(I)V

    .line 640
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playState:Lcom/neusoft/qdrivelink/music/service/PlayState;

    if-eqz p1, :cond_5

    .line 641
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playState:Lcom/neusoft/qdrivelink/music/service/PlayState;

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivelink/music/service/PlayState;->playMusicState(I)V

    .line 644
    :cond_5
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playListRefrsh:Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;

    if-eqz p1, :cond_6

    .line 645
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playListRefrsh:Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result p2

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;->playListRefrsh(I)V

    .line 648
    :cond_6
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMessage:Lcom/neusoft/qdrivelink/music/service/PlayMessage;

    if-eqz p1, :cond_7

    .line 649
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->playMessage:Lcom/neusoft/qdrivelink/music/service/PlayMessage;

    sget-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$500(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$3;->this$0:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->access$600(Lcom/neusoft/qdrivelink/music/service/MusicPlayService;)I

    move-result v1

    invoke-interface {p1, p2, v0, v1}, Lcom/neusoft/qdrivelink/music/service/PlayMessage;->currentMessage(Lcom/neusoft/qdrivelink/music/bean/AudioItem;II)V

    :cond_7
    :goto_1
    return-void
.end method
