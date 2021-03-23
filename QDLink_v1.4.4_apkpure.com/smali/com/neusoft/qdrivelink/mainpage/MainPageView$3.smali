.class Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;
.super Ljava/lang/Object;
.source "MainPageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mainpage/MainPageView;->viewResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setIconAlpha(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 2

    .line 384
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$300(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const v1, 0x7f0700bb

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 385
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$400(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const v1, 0x7f0700ba

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 386
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$500(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const v1, 0x7f0700bd

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 387
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$600(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const v1, 0x7f0700ac

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewResume run() start MyApplication.resumeFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",MyApplication.carType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/neusoft/qdrivelink/MyApplication;->carType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QDriveConn11"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-boolean v0, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    if-eqz v0, :cond_2

    .line 395
    sget-object v0, Lcom/neusoft/qdrivelink/MyApplication;->carType:Ljava/lang/String;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 396
    sget-object v0, Lcom/neusoft/qdrivelink/MyApplication;->carType:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x1

    sparse-switch v4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v4, "SX11_R2_G"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v4, "SX11_R2_D"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_2
    const-string v4, "SX11RA_10"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v4, "SX11RA_8"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_4
    const-string v4, "MC2"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    const-string v4, "SV91-D4"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_6
    const-string v4, "T19FL_r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_7
    const-string v4, "SK83_r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const v3, 0x7f050086

    const v4, 0x7f0a0032

    const v6, 0x7f0700b5

    const v7, 0x7f070067

    const v8, 0x7f0700b6

    const/16 v9, 0x8

    packed-switch v0, :pswitch_data_0

    .line 450
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$700(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 451
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$800(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 461
    sput-boolean v2, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlagLayout:Z

    goto/16 :goto_2

    .line 431
    :pswitch_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$700(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$800(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 433
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 434
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1200(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0033

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    .line 435
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050087

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    const v3, 0x7f0700bb

    .line 436
    iget-object v4, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f050085

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const v3, 0x7f0700ba

    .line 437
    iget-object v4, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const v3, 0x7f0700bd

    .line 438
    iget-object v4, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    const v3, 0x7f0700ac

    .line 439
    iget-object v4, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 440
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->setIconAlpha(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 441
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v8, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 442
    invoke-virtual {v0, v6, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 443
    invoke-virtual {v0, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 444
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 445
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 446
    sput-boolean v2, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    .line 447
    sput-boolean v5, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlagLayout:Z

    goto/16 :goto_2

    .line 415
    :pswitch_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$700(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 416
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$800(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 417
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 418
    iget-object v9, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v9}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1100(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    .line 419
    iget-object v4, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 420
    invoke-virtual {v0, v6, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 421
    invoke-virtual {v0, v8, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 422
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->setIconAlpha(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 423
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 424
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 425
    sput-boolean v2, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    .line 426
    sput-boolean v5, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlagLayout:Z

    goto :goto_2

    .line 399
    :pswitch_2
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$700(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 400
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$800(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 401
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 402
    iget-object v10, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v10}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$900(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v0, v10, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    .line 403
    iget-object v4, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {v0, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 404
    invoke-virtual {v0, v6, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 405
    invoke-virtual {v0, v8, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 406
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->setIconAlpha(Landroidx/constraintlayout/widget/ConstraintSet;)V

    .line 407
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 408
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 409
    sput-boolean v2, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    .line 410
    sput-boolean v5, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlagLayout:Z

    goto :goto_2

    .line 466
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$700(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 467
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$800(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    sput-boolean v2, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlagLayout:Z

    .line 481
    :cond_2
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewResume run() end MyApplication.resumeFlag:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e22a17a -> :sswitch_7
        -0x4d92e14b -> :sswitch_6
        -0x435fd13e -> :sswitch_5
        0x1295c -> :sswitch_4
        0x339c26ed -> :sswitch_3
        0x3fe8b60a -> :sswitch_2
        0x40a6fe9f -> :sswitch_1
        0x40a6fea2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
