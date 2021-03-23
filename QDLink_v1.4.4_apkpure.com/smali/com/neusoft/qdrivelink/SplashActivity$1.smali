.class Lcom/neusoft/qdrivelink/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/SplashActivity;->checkPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/SplashActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/SplashActivity;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public okOnclick()V
    .locals 6

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/SplashActivity;->access$000(Lcom/neusoft/qdrivelink/SplashActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    .line 55
    iget-object v0, p0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/SplashActivity;->access$100(Lcom/neusoft/qdrivelink/SplashActivity;)V

    goto :goto_0

    .line 57
    :cond_0
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    .line 58
    new-instance v5, Lcom/neusoft/qdrivelink/SplashActivity$1$1;

    invoke-direct {v5, p0}, Lcom/neusoft/qdrivelink/SplashActivity$1$1;-><init>(Lcom/neusoft/qdrivelink/SplashActivity$1;)V

    sub-long/2addr v2, v0

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public onRefusePermission()V
    .locals 3

    .line 70
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 71
    iget-object v1, p0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    const v2, 0x7f0d0072

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    const v2, 0x7f0d0073

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmText(Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    const v2, 0x7f0d0071

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/SplashActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setCancelText(Ljava/lang/String;)V

    .line 74
    new-instance v1, Lcom/neusoft/qdrivelink/SplashActivity$1$2;

    invoke-direct {v1, p0, v0}, Lcom/neusoft/qdrivelink/SplashActivity$1$2;-><init>(Lcom/neusoft/qdrivelink/SplashActivity$1;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V

    .line 87
    iget-object v1, p0, Lcom/neusoft/qdrivelink/SplashActivity$1;->this$0:Lcom/neusoft/qdrivelink/SplashActivity;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method
