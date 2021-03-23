.class Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateUIBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/MainActivity;


# direct methods
.method private constructor <init>(Lcom/neusoft/qdrivelink/MainActivity;)V
    .locals 0

    .line 751
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neusoft/qdrivelink/MainActivity;Lcom/neusoft/qdrivelink/MainActivity$1;)V
    .locals 0

    .line 751
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;-><init>(Lcom/neusoft/qdrivelink/MainActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UpdateUIBroadcastReceiver intent.getAction:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "textwang"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.neusoft.qdrive.updateUI.ACTION"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 757
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object p1

    sget-object p2, Lcom/neusoft/qdrivelink/MainActivity;->cl_parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p2}, Lcom/neusoft/interconnection/ScreenCaptureManager;->exitScreenCapture(Landroid/view/ViewGroup;)V

    .line 758
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    if-eqz p1, :cond_0

    const-string p2, "QDriveConn"

    const-string v0, "notifyChangeLayout baseLayoutView != null start"

    .line 760
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 762
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyChangeLayout baseLayoutView != null end MyApplication:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
