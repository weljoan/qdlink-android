.class Lcom/neusoft/qdrivelink/SplashActivity$1$2;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/SplashActivity$1;->onRefusePermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/SplashActivity$1;

.field final synthetic val$dialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/SplashActivity$1;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/neusoft/qdrivelink/SplashActivity$1$2;->this$1:Lcom/neusoft/qdrivelink/SplashActivity$1;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/SplashActivity$1$2;->val$dialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelClickListener()V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/neusoft/qdrivelink/SplashActivity$1$2;->this$1:Lcom/neusoft/qdrivelink/SplashActivity$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/SplashActivity;->finish()V

    return-void
.end method

.method public onConfirmClickListener()V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/neusoft/qdrivelink/SplashActivity$1$2;->this$1:Lcom/neusoft/qdrivelink/SplashActivity$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/SplashActivity;->access$200(Lcom/neusoft/qdrivelink/SplashActivity;)V

    .line 79
    iget-object v0, p0, Lcom/neusoft/qdrivelink/SplashActivity$1$2;->this$1:Lcom/neusoft/qdrivelink/SplashActivity$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/SplashActivity$1$2;->val$dialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method
