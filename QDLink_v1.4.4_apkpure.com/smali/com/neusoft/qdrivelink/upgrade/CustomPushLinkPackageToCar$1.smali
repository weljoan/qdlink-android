.class Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;
.super Landroid/os/Handler;
.source "CustomPushLinkPackageToCar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 85
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 87
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$000(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/ProgressBar;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 88
    iget v0, p1, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$100(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 89
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x190

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 91
    iget-object v1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {v1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$000(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/ProgressBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$200(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$000(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$300(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$000(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 99
    :cond_2
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 100
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$1;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->finishByAnim()V

    :cond_3
    return-void
.end method
