.class Lcom/neusoft/qdrivelink/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/MainActivity;->showUpgradeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/MainActivity;

.field final synthetic val$carType:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currVersion:Ljava/lang/String;

.field final synthetic val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$linkCheck:Ljava/lang/String;

.field final synthetic val$linkSize:Ljava/lang/String;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/MainActivity;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 569
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    iput-object p3, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$path:Ljava/lang/String;

    iput-object p6, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$fileName:Ljava/lang/String;

    iput-object p7, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$carType:Ljava/lang/String;

    iput-object p8, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$currVersion:Ljava/lang/String;

    iput-object p9, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$linkSize:Ljava/lang/String;

    iput-object p10, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$linkCheck:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClickListener()V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    return-void
.end method

.method public onConfirmClickListener()V
    .locals 10

    .line 573
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    .line 574
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$url:Ljava/lang/String;

    iget-object v4, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$path:Ljava/lang/String;

    iget-object v5, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$fileName:Ljava/lang/String;

    iget-object v6, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$carType:Ljava/lang/String;

    iget-object v7, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$currVersion:Ljava/lang/String;

    iget-object v8, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$linkSize:Ljava/lang/String;

    iget-object v9, p0, Lcom/neusoft/qdrivelink/MainActivity$8;->val$linkCheck:Ljava/lang/String;

    invoke-static/range {v1 .. v9}, Lcom/neusoft/qdrivelink/MainActivity;->access$1100(Lcom/neusoft/qdrivelink/MainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
