.class Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;
.super Ljava/lang/Object;
.source "SettingView.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mine/setting/SettingView;->showUpgradeDialog(Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

.field final synthetic val$upGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;Landroid/content/Context;)V
    .locals 0

    .line 528
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;->val$upGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    iput-object p4, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClickListener()V
    .locals 1

    .line 539
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    return-void
.end method

.method public onConfirmClickListener()V
    .locals 3

    .line 532
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    .line 533
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;->val$upGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getUrl()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;->val$upGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getApk_check()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;->val$context:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->onlyDownLoadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method
