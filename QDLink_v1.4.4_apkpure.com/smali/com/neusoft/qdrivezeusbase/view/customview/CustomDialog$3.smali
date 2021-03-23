.class Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$3;
.super Ljava/lang/Object;
.source "CustomDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$3;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 118
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$3;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    .line 119
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$3;->this$0:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->access$000(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;->onConfirmClickListener()V

    return-void
.end method
