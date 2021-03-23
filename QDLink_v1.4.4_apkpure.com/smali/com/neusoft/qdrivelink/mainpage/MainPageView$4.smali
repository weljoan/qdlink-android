.class Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;
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

    .line 496
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private setIconAlpha(Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 2

    .line 498
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$300(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const v1, 0x7f0700bb

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 499
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$400(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const v1, 0x7f0700ba

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 500
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$500(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAlpha()F

    move-result v0

    const v1, 0x7f0700bd

    invoke-virtual {p1, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setAlpha(IF)V

    .line 501
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

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
    .locals 6

    .line 506
    sget-boolean v0, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlagLayout:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$700(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$800(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 510
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1300(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a0031

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    const v3, 0x7f070067

    .line 511
    iget-object v4, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f050086

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    .line 512
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->setIconAlpha(Landroidx/constraintlayout/widget/ConstraintSet;)V

    const v3, 0x7f0700b5

    .line 513
    invoke-virtual {v0, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    const v3, 0x7f0700b6

    .line 514
    invoke-virtual {v0, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    .line 515
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-static {v3}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 516
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$1000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 517
    sput-boolean v2, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlagLayout:Z

    .line 520
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$700(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;->this$0:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->access$800(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
