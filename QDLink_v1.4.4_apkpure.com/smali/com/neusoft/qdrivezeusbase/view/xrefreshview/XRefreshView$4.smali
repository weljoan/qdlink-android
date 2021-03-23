.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;
.super Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;
.source "XRefreshView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 0

    .line 1031
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1035
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1036
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    move-result-object v0

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    .line 1037
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrY()I

    move-result v2

    sub-int v0, v2, v0

    .line 1040
    iget-object v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {v3, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->moveView(I)V

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1042
    iget-object v4, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v4}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1300(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/View;->getLocationInWindow([I)V

    .line 1043
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "currentY="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";mHolder.mOffsetY="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    move-result-object v2

    iget v2, v2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1044
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    move-result-object v2

    iget v2, v2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1500(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isBottom()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1045
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1502(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;Z)Z

    .line 1046
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->startLoadMore(ZLcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 1048
    :cond_0
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->post(Ljava/lang/Runnable;)Z

    .line 1049
    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->isStopLoadMore:Z

    if-eqz v1, :cond_3

    .line 1050
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;I)V

    goto :goto_0

    .line 1053
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Landroid/widget/Scroller;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1054
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    move-result-object v2

    iget v2, v2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    if-nez v2, :cond_2

    .line 1055
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enablePullUp(Z)V

    .line 1056
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$702(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;Z)Z

    .line 1057
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->isStopLoadMore:Z

    goto :goto_0

    .line 1060
    :cond_2
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    iget-boolean v1, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullLoading:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    iget-boolean v1, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-nez v1, :cond_3

    .line 1061
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    neg-int v2, v0

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getHeight()I

    move-result v3

    invoke-static {v0, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->computeScrollVerticalDuration(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startScroll(II)V

    :cond_3
    :goto_0
    return-void
.end method
