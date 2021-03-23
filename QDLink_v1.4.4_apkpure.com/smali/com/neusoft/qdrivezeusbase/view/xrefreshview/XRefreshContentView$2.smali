.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "XRefreshContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setRecyclerViewScrollListener()V
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

    .line 227
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 231
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 232
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$300(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$300(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    :cond_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    .line 239
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$500(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$402(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    .line 242
    :cond_0
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    move-result-object v4

    const/4 v7, 0x0

    move-object v3, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->onRecyclerViewScrolled(Landroidx/recyclerview/widget/RecyclerView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;IIZ)V

    return-void
.end method
