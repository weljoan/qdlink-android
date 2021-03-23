.class Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;
.super Ljava/lang/Object;
.source "MusicPlayView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V
    .locals 0

    .line 326
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    .line 330
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x108

    const v2, 0x7f0b002d

    const/16 v3, 0x96

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v0, v1, :cond_5

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 410
    :pswitch_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_8

    const v0, 0x7f0d003b

    if-eq p1, v4, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 417
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1700(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 414
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1600(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 406
    :pswitch_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->showPlayOrPause(I)V

    goto/16 :goto_1

    .line 391
    :pswitch_2
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$000(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$000(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr p1, v4

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->setSelectedPosition(I)V

    .line 395
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1500(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    .line 396
    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1400(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 397
    invoke-virtual {p1, v3, v3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    .line 398
    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$700(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    sget-object v0, Lcom/squareup/picasso/MemoryPolicy;->NO_CACHE:Lcom/squareup/picasso/MemoryPolicy;

    new-array v1, v4, [Lcom/squareup/picasso/MemoryPolicy;

    sget-object v3, Lcom/squareup/picasso/MemoryPolicy;->NO_STORE:Lcom/squareup/picasso/MemoryPolicy;

    aput-object v3, v1, v5

    .line 399
    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 400
    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    .line 401
    invoke-virtual {p1, v2}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    .line 402
    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$600(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto/16 :goto_1

    .line 333
    :pswitch_3
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$100(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/TextView;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ge v0, v1, :cond_3

    .line 336
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$200(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    mul-int v0, v0, v1

    iget p1, p1, Landroid/os/Message;->arg2:I

    div-int p1, v0, p1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 340
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "min:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",iii:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$300(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",lastI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "seekbar1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 343
    sget v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    if-lt p1, v0, :cond_4

    .line 344
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$500(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 346
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$500(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/SeekBar;

    move-result-object p1

    sget v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_1

    .line 352
    :cond_5
    sput v5, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    .line 354
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$000(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 355
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$000(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    add-int/2addr v1, v4

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->setSelectedPosition(I)V

    .line 358
    :cond_6
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$800(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 359
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getAlbumImage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 360
    invoke-virtual {v0, v3, v3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    .line 361
    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$700(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    sget-object v1, Lcom/squareup/picasso/MemoryPolicy;->NO_CACHE:Lcom/squareup/picasso/MemoryPolicy;

    new-array v3, v4, [Lcom/squareup/picasso/MemoryPolicy;

    sget-object v4, Lcom/squareup/picasso/MemoryPolicy;->NO_STORE:Lcom/squareup/picasso/MemoryPolicy;

    aput-object v4, v3, v5

    .line 362
    invoke-virtual {v0, v1, v3}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    .line 364
    invoke-virtual {v0, v2}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    .line 365
    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$600(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 366
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$900(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 367
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1000(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/customview/MarqueeText;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/customview/MarqueeText;->setText(Ljava/lang/CharSequence;)V

    .line 368
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1100(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1202(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;J)J

    .line 370
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1200(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->formatTimeMin(J)I

    move-result v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$202(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;I)I

    .line 371
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$500(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$200(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 372
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1300(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$100(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getCurrentPositon()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->formatTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 375
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getCurrentPositon()J

    move-result-wide v0

    sget-object v2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_7

    .line 376
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getCurrentPositon()J

    move-result-wide v0

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$200(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)I

    move-result v2

    int-to-long v2, v2

    mul-long v0, v0, v2

    sget-object v2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v2

    div-long/2addr v0, v2

    .line 384
    :cond_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->showPlayOrPause(I)V

    :cond_8
    :goto_1
    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x101
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
