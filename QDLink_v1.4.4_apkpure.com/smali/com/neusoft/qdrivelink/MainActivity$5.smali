.class Lcom/neusoft/qdrivelink/MainActivity$5;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/MainActivity;->resetMainView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/MainActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/MainActivity;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity$5;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/neusoft/qdrivelink/MainActivity$5;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/MainActivity;->access$600(Lcom/neusoft/qdrivelink/MainActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1f40

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity$5;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/MainActivity;->access$700(Lcom/neusoft/qdrivelink/MainActivity;)V

    .line 291
    new-instance v0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$5;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;-><init>(Landroid/content/Context;)V

    .line 292
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    const v2, 0x7f070069

    .line 293
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 294
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    .line 295
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 296
    iput v2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 299
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getCurrentLinkMode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 300
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$5;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {v1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->updatePresentationView(Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 302
    :cond_1
    iget-object v2, p0, Lcom/neusoft/qdrivelink/MainActivity$5;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/MainActivity;->access$800(Lcom/neusoft/qdrivelink/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 303
    iget-object v2, p0, Lcom/neusoft/qdrivelink/MainActivity$5;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/MainActivity;->access$900(Lcom/neusoft/qdrivelink/MainActivity;)Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 304
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$5;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {v1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->setPresentationView(Landroid/view/ViewGroup;)V

    .line 306
    :goto_0
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->viewResume()V

    const-string v1, "wwwq"

    const-string v2, "MainActivity resetMainView() run"

    .line 308
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity$5;->this$0:Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {v1, v0}, Lcom/neusoft/qdrivelink/MainActivity;->access$1000(Lcom/neusoft/qdrivelink/MainActivity;Landroid/view/View;)V

    return-void
.end method
