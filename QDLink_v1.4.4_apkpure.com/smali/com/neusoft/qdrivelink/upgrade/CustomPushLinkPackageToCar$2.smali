.class Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;
.super Ljava/lang/Object;
.source "CustomPushLinkPackageToCar.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 104
    iput-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 107
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0xbb8

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 121
    :pswitch_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$400(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$400(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1, v3}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$302(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;Z)Z

    .line 123
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$500(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 124
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$000(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 125
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$800(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0d0025

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 126
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$800(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/TextView;

    move-result-object p1

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 110
    :pswitch_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$400(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Ljava/lang/Thread;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$400(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 111
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1, v3}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$202(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;Z)Z

    .line 112
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$500(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 114
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$000(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 115
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$600(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 116
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$700(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar$2;->this$0:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->access$800(Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;)Landroid/widget/TextView;

    move-result-object p1

    const v0, 0x7f0d0024

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x21201
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
