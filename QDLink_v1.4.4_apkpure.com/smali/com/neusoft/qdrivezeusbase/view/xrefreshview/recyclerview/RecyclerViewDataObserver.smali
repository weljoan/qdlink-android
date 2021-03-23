.class public Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "RecyclerViewDataObserver.java"


# instance fields
.field private hasData:Z

.field private mAdapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

.field private mAttached:Z

.field private xRefreshView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->hasData:Z

    return-void
.end method

.method private enableEmptyView(Z)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->xRefreshView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enableCenterView(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public attach()V
    .locals 1

    const/4 v0, 0x1

    .line 77
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->mAttached:Z

    return-void
.end method

.method public hasAttached()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->mAttached:Z

    return v0
.end method

.method public onChanged()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->mAdapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 38
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->hasData:Z

    if-eqz v0, :cond_2

    .line 39
    invoke-direct {p0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->enableEmptyView(Z)V

    .line 40
    iput-boolean v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->hasData:Z

    goto :goto_0

    .line 43
    :cond_1
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->hasData:Z

    if-nez v0, :cond_2

    .line 44
    invoke-direct {p0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->enableEmptyView(Z)V

    .line 45
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->hasData:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 57
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 0

    .line 62
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 72
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->onChanged()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->onChanged()V

    return-void
.end method

.method public setData(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->mAdapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    .line 22
    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->xRefreshView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    return-void
.end method
