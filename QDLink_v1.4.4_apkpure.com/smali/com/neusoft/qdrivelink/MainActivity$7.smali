.class Lcom/neusoft/qdrivelink/MainActivity$7;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/MainActivity;->showUpgradeDialog(Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/MainActivity;

.field final synthetic val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

.field final synthetic val$upGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/MainActivity;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->val$upGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClickListener()V
    .locals 5

    .line 541
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    .line 542
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getCurrentLinkMode()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 544
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    const-string v1, ""

    const-string v2, "key_save_factory_name"

    invoke-static {v0, v2, v1}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 545
    iget-object v2, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    const-string v3, "key_save_car_type"

    invoke-static {v2, v3, v1}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 547
    iget-object v2, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    const/4 v3, 0x2

    new-instance v4, Lcom/neusoft/qdrivelink/MainActivity$7$1;

    invoke-direct {v4, p0}, Lcom/neusoft/qdrivelink/MainActivity$7$1;-><init>(Lcom/neusoft/qdrivelink/MainActivity$7;)V

    invoke-static {v2, v0, v1, v3, v4}, Lcom/neusoft/qdrivelink/MainActivity;->checkLinkAppDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;)V

    :cond_0
    return-void
.end method

.method public onConfirmClickListener()V
    .locals 3

    .line 534
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    .line 535
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->val$upGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->val$upGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getApk_check()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/MainActivity$7;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->onlyDownLoadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
