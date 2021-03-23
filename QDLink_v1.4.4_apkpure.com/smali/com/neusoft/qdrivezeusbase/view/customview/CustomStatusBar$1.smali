.class Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar$1;
.super Landroid/content/BroadcastReceiver;
.source "CustomStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->initBattery()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const/4 p1, -0x1

    const-string v0, "level"

    .line 72
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "scale"

    .line 73
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-ltz v0, :cond_0

    if-lez p1, :cond_0

    .line 75
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;

    mul-int/lit8 v0, v0, 0x64

    div-int/2addr v0, p1

    invoke-static {p2, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->access$002(Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;I)I

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->access$100(Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 78
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->access$100(Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;

    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->access$000(Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->setProgress(I)V

    :cond_1
    return-void
.end method
