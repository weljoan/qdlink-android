.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;
.super Ljava/lang/Object;
.source "XRefreshContentView.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setScrollViewScrollListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(IIII)V
    .locals 0

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/ScrollView;IZ)V
    .locals 0

    if-nez p2, :cond_1

    if-eqz p3, :cond_1

    .line 130
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$000(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onLoadMore(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result p1

    if-nez p1, :cond_1

    .line 135
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->invokeLoadMore()Z

    :cond_1
    :goto_0
    return-void
.end method
