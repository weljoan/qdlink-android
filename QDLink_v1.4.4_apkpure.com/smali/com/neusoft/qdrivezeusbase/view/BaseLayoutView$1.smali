.class final Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView$1;
.super Ljava/lang/Object;
.source "BaseLayoutView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToast(Landroid/content/Context;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->access$000()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x708

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->cancelToast()V

    return-void
.end method
