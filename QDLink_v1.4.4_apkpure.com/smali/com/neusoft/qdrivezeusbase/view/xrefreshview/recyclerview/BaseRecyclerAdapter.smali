.class public abstract Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "BaseRecyclerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter$VIEW_TYPES;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VH:",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "TVH;>;"
    }
.end annotation


# instance fields
.field protected customHeaderView:Landroid/view/View;

.field protected customLoadMoreView:Landroid/view/View;

.field private isFooterEnable:Z

.field private mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

.field private final observer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;

.field private removeFooter:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    .line 27
    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customHeaderView:Landroid/view/View;

    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isFooterEnable:Z

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->removeFooter:Z

    .line 131
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;

    invoke-direct {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->observer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;

    return-void
.end method

.method private showFooter(Landroid/view/View;Z)V
    .locals 1

    .line 46
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isFooterEnable:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    instance-of v0, p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_2

    .line 47
    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz p2, :cond_0

    .line 49
    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    goto :goto_0

    .line 53
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getAdapterItemCount()I

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->isShowing()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 54
    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getAdapterItemCount()I

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->isShowing()Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p2, 0x1

    .line 56
    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addFooterView()V
    .locals 2

    const-string v0, "test addFooterView"

    .line 65
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 66
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->removeFooter:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->notifyItemInserted(I)V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->removeFooter:Z

    .line 69
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->showFooter(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public clear(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;)V"
        }
    .end annotation

    .line 297
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getStart()I

    move-result v0

    .line 298
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 299
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 300
    invoke-virtual {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->notifyItemRangeRemoved(II)V

    return-void
.end method

.method public abstract getAdapterItemCount()I
.end method

.method public getAdapterItemViewType(I)I
    .locals 0

    const/4 p1, -0x4

    return p1
.end method

.method public getCustomLoadMoreView()Landroid/view/View;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    return-object v0
.end method

.method public final getItemCount()I
    .locals 2

    .line 234
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getAdapterItemCount()I

    move-result v0

    .line 235
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getStart()I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->removeFooter:Z

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    return v0
.end method

.method public final getItemViewType(I)I
    .locals 1

    .line 203
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 205
    :cond_0
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isFooter(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, -0x1

    return p1

    .line 208
    :cond_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getStart()I

    move-result v0

    if-lez v0, :cond_2

    add-int/lit8 p1, p1, -0x1

    .line 209
    :cond_2
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getAdapterItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getStart()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method public abstract getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")TVH;"
        }
    .end annotation
.end method

.method public insert(Ljava/util/List;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;I)V"
        }
    .end annotation

    .line 275
    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 276
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getStart()I

    move-result p1

    add-int/2addr p3, p1

    invoke-virtual {p0, p3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->notifyItemInserted(I)V

    return-void
.end method

.method public insideEnableFooter(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isFooterEnable:Z

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    .line 94
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getAdapterItemCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFooter(I)Z
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getStart()I

    move-result v0

    .line 190
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getAdapterItemCount()I

    move-result v1

    add-int/2addr v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isFooterShowing()Z
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->removeFooter:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isHeader(I)Z
    .locals 1

    .line 194
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getStart()I

    move-result v0

    if-lez v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 137
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 138
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    instance-of v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    .line 141
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->observer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->hasAttached()Z

    move-result p1

    if-nez p1, :cond_0

    .line 142
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->observer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {p1, p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->setData(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    .line 143
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->observer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;->attach()V

    .line 144
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->observer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/RecyclerViewDataObserver;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    :cond_0
    return-void
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;I)V"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getStart()I

    move-result v0

    .line 115
    invoke-virtual {p0, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isHeader(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isFooter(I)Z

    move-result v1

    if-nez v1, :cond_0

    sub-int/2addr p2, v0

    const/4 v0, 0x1

    .line 116
    invoke-virtual {p0, p1, p2, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IZ)V

    :cond_0
    return-void
.end method

.method public abstract onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IZ)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;IZ)V"
        }
    .end annotation
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "I)TVH;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->showFooter(Landroid/view/View;Z)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 34
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 35
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    .line 38
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customHeaderView:Landroid/view/View;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 39
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customHeaderView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, p1, p2, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public abstract onCreateViewHolder(Landroid/view/ViewGroup;IZ)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "IZ)TVH;"
        }
    .end annotation
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVH;)V"
        }
    .end annotation

    .line 122
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 123
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v0

    .line 124
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 125
    instance-of v1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    if-eqz v1, :cond_2

    .line 126
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 127
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isFooter(I)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isHeader(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->setFullSpan(Z)V

    :cond_2
    return-void
.end method

.method public remove(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;I)V"
        }
    .end annotation

    .line 286
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getStart()I

    move-result p1

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->notifyItemRemoved(I)V

    :cond_0
    return-void
.end method

.method public removeFooterView()V
    .locals 2

    const-string v0, "test removeFooterView"

    .line 78
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 79
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->removeFooter:Z

    if-nez v0, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->notifyItemRemoved(I)V

    .line 81
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->removeFooter:Z

    :cond_0
    return-void
.end method

.method public setCustomLoadMoreView(Landroid/view/View;)V
    .locals 1

    .line 155
    instance-of v0, p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_1

    .line 156
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    .line 157
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 158
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContentView()Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContentView()Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {p1, p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->initFooterCallBack(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    .line 161
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customLoadMoreView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->showFooter(Landroid/view/View;Z)V

    .line 162
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->notifyDataSetChanged()V

    return-void

    .line 164
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "footerView must be implementes IFooterCallBack!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setHeaderView(ILandroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 3

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 177
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "layout"

    .line 179
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 183
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customHeaderView:Landroid/view/View;

    .line 184
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->notifyDataSetChanged()V

    .line 185
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customHeaderView:Landroid/view/View;

    return-object p1

    .line 180
    :cond_1
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a illegal layoutid , please check your layout id first !"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setHeaderView(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 170
    :cond_0
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 171
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->customHeaderView:Landroid/view/View;

    .line 172
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public swapPositions(Ljava/util/List;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;II)V"
        }
    .end annotation

    .line 258
    invoke-static {p1, p2, p3}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    return-void
.end method
