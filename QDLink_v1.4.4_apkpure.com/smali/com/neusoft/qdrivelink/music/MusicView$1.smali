.class Lcom/neusoft/qdrivelink/music/MusicView$1;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/MusicView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/MusicView;

.field final synthetic val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/MusicView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 294
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 297
    iget v2, v1, Landroid/os/Message;->what:I

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v5, :cond_f

    const/4 v6, 0x2

    if-eq v2, v6, :cond_d

    const/16 v3, 0x10

    if-eq v2, v3, :cond_a

    const/16 v3, 0x12

    if-eq v2, v3, :cond_7

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    .line 449
    :pswitch_0
    iget v1, v1, Landroid/os/Message;->arg2:I

    if-eqz v1, :cond_1

    if-eq v1, v5, :cond_0

    goto/16 :goto_0

    .line 456
    :cond_0
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2100(Lcom/neusoft/qdrivelink/music/MusicView;)V

    goto/16 :goto_0

    .line 452
    :cond_1
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2000(Lcom/neusoft/qdrivelink/music/MusicView;)V

    goto/16 :goto_0

    .line 443
    :pswitch_1
    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1900(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 444
    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1900(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v2

    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v1}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    goto/16 :goto_0

    .line 423
    :pswitch_2
    iget v1, v1, Landroid/os/Message;->arg1:I

    const/4 v2, -0x1

    if-eqz v1, :cond_4

    if-eq v1, v5, :cond_3

    if-eq v1, v6, :cond_2

    goto/16 :goto_0

    .line 435
    :cond_2
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1900(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 436
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1900(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    goto/16 :goto_0

    .line 430
    :cond_3
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1900(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 431
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1900(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v1

    sget-object v2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v2

    add-int/2addr v2, v5

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    goto/16 :goto_0

    .line 425
    :cond_4
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1900(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 426
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1900(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    goto/16 :goto_0

    .line 411
    :pswitch_3
    iget v1, v1, Landroid/os/Message;->arg1:I

    const v2, 0x7f0d003a

    if-nez v1, :cond_6

    .line 412
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1400(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 413
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1400(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1, v2, v6}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playSearchMusic(Lcom/neusoft/qdrivelink/music/bean/AudioItem;I)V

    .line 414
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    new-instance v2, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1500(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v5, v2, v5}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1600(Lcom/neusoft/qdrivelink/music/MusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    goto/16 :goto_0

    .line 416
    :cond_5
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1700(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/music/MusicView;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :cond_6
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1800(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/music/MusicView;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 475
    :cond_7
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2200(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2300(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 477
    :try_start_0
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2400(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/util/Random;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 479
    iget-object v5, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    iget-object v2, v2, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    aget-object v6, v2, v1

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2500(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v7

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2600(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v8

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2700(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v9

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2800(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/neusoft/qdrivelink/music/MusicView;->requestSearchMusic(Ljava/lang/String;IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 481
    :catch_0
    iget-object v11, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v11}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2500(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v13

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2600(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v14

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2700(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v15

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2800(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v16

    const-string v12, "\u6000\u65e7\u7ecf\u5178"

    invoke-virtual/range {v11 .. v16}, Lcom/neusoft/qdrivelink/music/MusicView;->requestSearchMusic(Ljava/lang/String;IIII)V

    goto/16 :goto_0

    .line 483
    :cond_8
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2300(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 485
    iget-object v5, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v5}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2300(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/lang/String;

    move-result-object v6

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2500(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v7

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2600(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v8

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2700(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v9

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2800(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v10

    invoke-virtual/range {v5 .. v10}, Lcom/neusoft/qdrivelink/music/MusicView;->requestSearchMusic(Ljava/lang/String;IIII)V

    goto/16 :goto_0

    .line 488
    :cond_9
    iget-object v11, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v11}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2200(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/lang/String;

    move-result-object v12

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2500(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v13

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2600(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v14

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2700(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v15

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2800(Lcom/neusoft/qdrivelink/music/MusicView;)I

    move-result v16

    invoke-virtual/range {v11 .. v16}, Lcom/neusoft/qdrivelink/music/MusicView;->requestSearchMusic(Ljava/lang/String;IIII)V

    goto/16 :goto_0

    .line 462
    :cond_a
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_c

    if-eq v1, v5, :cond_b

    goto/16 :goto_0

    .line 469
    :cond_b
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2100(Lcom/neusoft/qdrivelink/music/MusicView;)V

    goto/16 :goto_0

    .line 465
    :cond_c
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2000(Lcom/neusoft/qdrivelink/music/MusicView;)V

    goto/16 :goto_0

    .line 349
    :cond_d
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_e

    .line 350
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1000(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 351
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1100(Lcom/neusoft/qdrivelink/music/MusicView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 352
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    iget-object v2, v2, Lcom/neusoft/qdrivelink/music/MusicView;->audioItems:Ljava/util/List;

    const-string v3, "localautoalbum"

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playLocalMusic(Ljava/util/List;ILjava/lang/String;I)V

    .line 353
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    new-instance v2, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1200(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;-><init>(Landroid/content/Context;)V

    invoke-static {v1, v5, v2, v5}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1300(Lcom/neusoft/qdrivelink/music/MusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    goto/16 :goto_0

    .line 405
    :cond_e
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1000(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 406
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$1100(Lcom/neusoft/qdrivelink/music/MusicView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 300
    :cond_f
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_10

    .line 301
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$000(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 302
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$100(Lcom/neusoft/qdrivelink/music/MusicView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 305
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    new-instance v2, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$300(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;

    move-result-object v3

    iget-object v5, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v5}, Lcom/neusoft/qdrivelink/music/MusicView;->access$400(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v3, v5}, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v1, v2}, Lcom/neusoft/qdrivelink/music/MusicView;->access$202(Lcom/neusoft/qdrivelink/music/MusicView;Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    .line 306
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$100(Lcom/neusoft/qdrivelink/music/MusicView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/MusicView;->access$200(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 309
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->val$gridLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v2, Lcom/neusoft/qdrivelink/music/MusicView$1$1;

    invoke-direct {v2, v0}, Lcom/neusoft/qdrivelink/music/MusicView$1$1;-><init>(Lcom/neusoft/qdrivelink/music/MusicView$1;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 321
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$200(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    move-result-object v1

    new-instance v2, Lcom/neusoft/qdrivelink/music/MusicView$1$2;

    invoke-direct {v2, v0}, Lcom/neusoft/qdrivelink/music/MusicView$1$2;-><init>(Lcom/neusoft/qdrivelink/music/MusicView$1;)V

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->setOnItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V

    .line 332
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$200(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    move-result-object v1

    new-instance v2, Lcom/neusoft/qdrivelink/music/MusicView$1$3;

    invoke-direct {v2, v0}, Lcom/neusoft/qdrivelink/music/MusicView$1$3;-><init>(Lcom/neusoft/qdrivelink/music/MusicView$1;)V

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->setOnItemQQMusicClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V

    goto :goto_0

    .line 342
    :cond_10
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$000(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 343
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$100(Lcom/neusoft/qdrivelink/music/MusicView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_11
    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
