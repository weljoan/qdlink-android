.class Lcom/neusoft/qdrivelink/mine/setting/SettingView$8;
.super Ljava/lang/Object;
.source "SettingView.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/mine/setting/SettingView;->showCurrentUpgradeDialog(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

.field final synthetic val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)V
    .locals 0

    .line 555
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$8;->this$0:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$8;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClickListener()V
    .locals 0

    return-void
.end method

.method public onConfirmClickListener()V
    .locals 1

    .line 558
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$8;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    return-void
.end method
