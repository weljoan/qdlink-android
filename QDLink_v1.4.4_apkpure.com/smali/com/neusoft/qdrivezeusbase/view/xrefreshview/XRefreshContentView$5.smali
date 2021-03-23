.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;
.super Ljava/lang/Object;
.source "XRefreshContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addFooterView(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

.field final synthetic val$adapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

.field final synthetic val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Landroidx/recyclerview/widget/RecyclerView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;)V
    .locals 0

    .line 621
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iput-object p3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;->val$adapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;->val$adapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getCustomLoadMoreView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 627
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$902(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Z)Z

    .line 628
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$1000(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 629
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;->val$adapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->addFooterView()V

    goto :goto_0

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;->val$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
