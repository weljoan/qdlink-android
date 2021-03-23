.class Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->checkPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public okOnclick()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->access$002(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;Z)Z

    .line 63
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->access$100(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;)V

    return-void
.end method

.method public onRefusePermission()V
    .locals 3

    .line 69
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 70
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    const v2, 0x7f0d0072

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 71
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmText(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    const v2, 0x7f0d0071

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setCancelText(Ljava/lang/String;)V

    .line 73
    new-instance v1, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1$1;

    invoke-direct {v1, p0, v0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1$1;-><init>(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V

    .line 86
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
