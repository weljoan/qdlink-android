.class Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$1;
.super Ljava/lang/Object;
.source "CustomLoadingDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->setDialogCloseBtnOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$DialogLoadingClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

.field final synthetic val$listener:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$DialogLoadingClickListener;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$DialogLoadingClickListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$1;->val$listener:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$DialogLoadingClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 70
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->dismissDialog()V

    .line 71
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$1;->val$listener:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$DialogLoadingClickListener;

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$DialogLoadingClickListener;->onCloseClickListener()V

    return-void
.end method
