.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;
.super Ljava/lang/Object;
.source "XScrollView.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$TouchLifeCycle;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->setOnScrollListener(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 3

    .line 85
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$102(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;Z)Z

    .line 95
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->getScrollY()I

    move-result v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$002(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;I)I

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 97
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$500(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)F

    move-result v0

    sub-float/2addr v0, p1

    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_3

    .line 98
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 99
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$502(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;F)F

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {p1, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$102(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;Z)Z

    :cond_3
    :goto_0
    return-void
.end method
