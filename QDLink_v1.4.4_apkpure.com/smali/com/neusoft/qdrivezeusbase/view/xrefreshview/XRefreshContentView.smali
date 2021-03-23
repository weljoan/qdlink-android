.class public Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;
.super Ljava/lang/Object;
.source "XRefreshContentView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnTopRefreshTime;
.implements Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnBottomLoadMoreTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;
    }
.end annotation


# static fields
.field private static final RECYCLERVIEW_ADAPTER_WARIN:Ljava/lang/String; = "Recylerview\u7684adapter\u8bf7\u7ee7\u627f BaseRecyclerAdapter,\u5426\u5219\u4e0d\u80fd\u4f7f\u7528\u5c01\u88c5\u7684Recyclerview\u7684\u76f8\u5173\u7279\u6027"


# instance fields
.field private addingFooter:Z

.field private child:Landroid/view/View;

.field private hasIntercepted:Z

.field private isForbidLoadMore:Z

.field private isHideFooterWhenComplete:Z

.field protected layoutManagerType:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

.field private mAbsListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mBottomLoadMoreTime:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnBottomLoadMoreTime;

.field private mContainer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

.field private mFirstVisibleItem:I

.field private mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

.field private mHasLoadComplete:Z

.field private mHideFooter:Z

.field private mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

.field private mIsLoadingMore:Z

.field private mLastVisibleItemPosition:I

.field private mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

.field private mPinnedTime:I

.field private mPreLoadCount:I

.field private mRecyclerApdater:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

.field private mRecyclerViewScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mRefreshAdapter:Z

.field private mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

.field private mSilenceLoadMore:Z

.field private mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

.field private mTopRefreshTime:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnTopRefreshTime;

.field private mTotalItemCount:I

.field private mVisibleItemCount:I

.field private previousTotal:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mVisibleItemCount:I

    .line 39
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->previousTotal:I

    .line 44
    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    .line 48
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHasLoadComplete:Z

    .line 103
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mSilenceLoadMore:Z

    .line 109
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasIntercepted:Z

    const/4 v1, 0x1

    .line 385
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHideFooter:Z

    .line 386
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addingFooter:Z

    .line 475
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRefreshAdapter:Z

    .line 562
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isHideFooterWhenComplete:Z

    .line 723
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isForbidLoadMore:Z

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mSilenceLoadMore:Z

    return p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Z
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isFooterEnable()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mContainer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRecyclerViewScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRecyclerApdater:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    return-object p0
.end method

.method static synthetic access$402(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRecyclerApdater:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->getRecyclerApdater(Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->resetLayout()V

    return-void
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHasLoadComplete:Z

    return p0
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Z)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addFooterView(Z)V

    return-void
.end method

.method static synthetic access$902(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addingFooter:Z

    return p1
.end method

.method private addFooterView(Z)V
    .locals 3

    .line 610
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-nez v1, :cond_1

    .line 611
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_0

    .line 612
    invoke-interface {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    :cond_0
    return-void

    .line 616
    :cond_1
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 617
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->getRecyclerViewAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 618
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 620
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addingFooter:Z

    .line 621
    new-instance p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;

    invoke-direct {p1, p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$5;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Landroidx/recyclerview/widget/RecyclerView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;)V

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 637
    :cond_2
    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->removeFooterView()V

    :cond_3
    :goto_0
    return-void
.end method

.method private dealRecyclerViewNotFullScreen()V
    .locals 2

    .line 665
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 666
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->onRecyclerViewTop()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->isRecyclerViewFullscreen(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isFooterEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateReady()V

    .line 668
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->callWhenNotAutoLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    .line 669
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    :cond_0
    return-void
.end method

.method private doAutoLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 277
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isOnRecyclerViewBottom()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHideFooter:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 278
    invoke-virtual {p0, v0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->startLoadMore(ZLcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 280
    :cond_0
    sget-object p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setState(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;)V

    :goto_0
    return-void
.end method

.method private doNormalLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 292
    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isOnRecyclerViewBottom()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHideFooter:Z

    if-eqz p1, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 294
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->doReadyState()V

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->loadCompleted()V

    goto :goto_0

    .line 299
    :cond_1
    sget-object p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setState(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;)V

    :goto_0
    return-void
.end method

.method private doReadyState()V
    .locals 2

    .line 358
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_READY:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addingFooter:Z

    if-nez v0, :cond_0

    .line 359
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateReady()V

    .line 360
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_READY:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setState(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;)V

    :cond_0
    return-void
.end method

.method private doRecyclerViewloadComplete(Z)V
    .locals 7

    .line 406
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isFooterEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 407
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    move-object v2, v0

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 409
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHideFooter:Z

    .line 410
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateFinish(Z)V

    .line 411
    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->isRecyclerViewFullscreen(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 412
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$3;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 419
    :cond_1
    iget p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    .line 420
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 421
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->getRecyclerViewInfo(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 423
    invoke-direct {p0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->getRecyclerViewAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    .line 425
    invoke-virtual/range {v1 .. v6}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->onRecyclerViewScrolled(Landroidx/recyclerview/widget/RecyclerView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;IIZ)V

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_4

    .line 429
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz p1, :cond_4

    .line 430
    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->isRecyclerViewFullscreen(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 431
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateReady()V

    .line 432
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-interface {p1, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->callWhenNotAutoLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    .line 433
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->isShowing()Z

    move-result p1

    if-nez p1, :cond_4

    .line 434
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    goto :goto_0

    .line 437
    :cond_3
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->doReadyState()V

    :cond_4
    :goto_0
    return-void
.end method

.method private doSilenceLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 268
    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isOnRecyclerViewBottom()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result p1

    if-nez p1, :cond_0

    .line 269
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    if-eqz p1, :cond_0

    const/4 p2, 0x1

    .line 270
    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    .line 271
    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onLoadMore(Z)V

    :cond_0
    return-void
.end method

.method private findMax([I)I
    .locals 4

    .line 866
    array-length v0, p1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private findMin([I)I
    .locals 5

    .line 875
    array-length v0, p1

    const v1, 0x7fffffff

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p1, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    if-ge v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private getRecyclerApdater(Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;
    .locals 3

    .line 201
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    if-eqz v0, :cond_1

    .line 202
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    .line 203
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 204
    instance-of v1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 205
    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 206
    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/XSpanSizeLookup;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v2

    invoke-direct {v1, v0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/XSpanSizeLookup;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;I)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPullLoadEnable()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->insideEnableFooter(Z)V

    .line 209
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {p0, v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->initFooterCallBack(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getRecyclerViewAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;
    .locals 1

    if-eqz p1, :cond_1

    .line 445
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p1

    .line 446
    instance-of v0, p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    if-eqz v0, :cond_0

    .line 447
    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    return-object p1

    :cond_0
    const-string p1, "Recylerview\u7684adapter\u8bf7\u7ee7\u627f BaseRecyclerAdapter,\u5426\u5219\u4e0d\u80fd\u4f7f\u7528\u5c01\u88c5\u7684Recyclerview\u7684\u76f8\u5173\u7279\u6027"

    .line 449
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->w(Ljava/lang/String;)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private isFooterEnable()Z
    .locals 2

    .line 285
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPullLoadEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isOnRecyclerViewBottom()Z
    .locals 3

    .line 478
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mPreLoadCount:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mLastVisibleItemPosition:I

    if-gt v0, v2, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private onRecyclerViewTop()Z
    .locals 1

    .line 379
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isFooterEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private refreshAdapter(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    return-void
.end method

.method private resetLayout()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->resetLayout()V

    :cond_0
    return-void
.end method

.method private setRecyclerViewScrollListener()V
    .locals 2

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->layoutManagerType:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    .line 218
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 219
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 220
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    instance-of v1, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    if-eqz v1, :cond_0

    .line 221
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->getRecyclerApdater(Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRecyclerApdater:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    goto :goto_0

    :cond_0
    const-string v1, "Recylerview\u7684adapter\u8bf7\u7ee7\u627f BaseRecyclerAdapter,\u5426\u5219\u4e0d\u80fd\u4f7f\u7528\u5c01\u88c5\u7684Recyclerview\u7684\u76f8\u5173\u7279\u6027"

    .line 223
    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->w(Ljava/lang/String;)V

    .line 226
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 227
    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$2;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$2;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)V

    iput-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 245
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mOnScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private setScrollViewScrollListener()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    instance-of v1, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    if-eqz v1, :cond_0

    .line 125
    check-cast v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    .line 126
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    new-instance v2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)V

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->setOnScrollListener(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;)V

    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "please use XScrollView instead of ScrollView!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setState(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;)V
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-eq v0, v1, :cond_0

    .line 597
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    :cond_0
    return-void
.end method


# virtual methods
.method public canChildPullDown()Z
    .locals 5

    .line 797
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 798
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView;

    .line 799
    invoke-virtual {p0, v0, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 800
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 801
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    if-gtz v0, :cond_1

    .line 802
    invoke-virtual {v1, v4}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 803
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    return v2

    .line 805
    :cond_2
    invoke-virtual {p0, v0, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method

.method public canChildPullUp()Z
    .locals 5

    .line 810
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    .line 811
    move-object v1, v0

    check-cast v1, Landroid/widget/AbsListView;

    .line 812
    invoke-virtual {p0, v0, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 813
    invoke-virtual {v1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    sub-int/2addr v1, v3

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    return v2

    .line 814
    :cond_2
    instance-of v1, v0, Landroid/webkit/WebView;

    if-eqz v1, :cond_5

    .line 815
    check-cast v0, Landroid/webkit/WebView;

    .line 816
    instance-of v1, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/view/XWebView;

    if-eqz v1, :cond_3

    .line 817
    check-cast v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/view/XWebView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/view/XWebView;->isBottom()Z

    move-result v0

    xor-int/2addr v0, v3

    return v0

    .line 819
    :cond_3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v4

    mul-float v1, v1, v4

    .line 820
    invoke-virtual {v0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    add-int/2addr v4, v0

    int-to-float v0, v4

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2

    .line 823
    :cond_5
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_9

    .line 824
    check-cast v0, Landroid/widget/ScrollView;

    .line 825
    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 827
    iget-object v4, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    invoke-virtual {p0, v4, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->canScrollVertically(Landroid/view/View;I)Z

    move-result v4

    if-nez v4, :cond_6

    .line 828
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getHeight()I

    move-result v0

    sub-int/2addr v1, v0

    if-ge v4, v1, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    return v2

    :cond_8
    return v3

    .line 831
    :cond_9
    invoke-virtual {p0, v0, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->canScrollVertically(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public canScrollVertically(Landroid/view/View;I)Z
    .locals 0

    .line 844
    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->canScrollVertically(Landroid/view/View;I)Z

    move-result p1

    return p1
.end method

.method public ensureFooterShowWhenScrolling()V
    .locals 2

    .line 486
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isFooterEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    :cond_0
    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    return-object v0
.end method

.method public getRecyclerViewInfo(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 508
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->layoutManagerType:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    if-nez v0, :cond_3

    .line 509
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 510
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->layoutManagerType:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    goto :goto_0

    .line 511
    :cond_0
    instance-of v0, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz v0, :cond_1

    .line 512
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->layoutManagerType:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    goto :goto_0

    .line 513
    :cond_1
    instance-of v0, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz v0, :cond_2

    .line 514
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->layoutManagerType:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    goto :goto_0

    .line 516
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Unsupported LayoutManager used. Valid ones are LinearLayoutManager, GridLayoutManager and StaggeredGridLayoutManager"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 520
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getItemCount()I

    move-result v0

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    .line 521
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$6;->$SwitchMap$com$neusoft$qdrivezeusbase$view$xrefreshview$XRefreshContentView$LAYOUT_MANAGER_TYPE:[I

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->layoutManagerType:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_6

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    goto :goto_1

    .line 530
    :cond_4
    check-cast p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 532
    invoke-virtual {p1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v0

    new-array v0, v0, [I

    .line 534
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findLastVisibleItemPositions([I)[I

    .line 535
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->findMax([I)I

    move-result v1

    iput v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mLastVisibleItemPosition:I

    .line 538
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->findFirstVisibleItemPositions([I)[I

    .line 539
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->findMin([I)I

    move-result p1

    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFirstVisibleItem:I

    goto :goto_1

    .line 523
    :cond_5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mVisibleItemCount:I

    .line 524
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mLastVisibleItemPosition:I

    .line 526
    :cond_6
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v0

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mLastVisibleItemPosition:I

    .line 527
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p1

    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFirstVisibleItem:I

    :goto_1
    return-void
.end method

.method public getState()Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;
    .locals 1

    .line 602
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    return-object v0
.end method

.method public getTotalItemCount()I
    .locals 1

    .line 774
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    return v0
.end method

.method public hasChildOnBottom()Z
    .locals 1

    .line 782
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->canChildPullUp()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasChildOnTop()Z
    .locals 1

    .line 778
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->canChildPullDown()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hasLoadCompleted()Z
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHasLoadComplete:Z

    return v0
.end method

.method public initFooterCallBack(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 1

    .line 249
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mSilenceLoadMore:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    .line 251
    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->getCustomLoadMoreView()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 255
    :cond_0
    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    .line 256
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz p1, :cond_1

    .line 257
    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateReady()V

    .line 258
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->callWhenNotAutoLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    if-eqz p2, :cond_1

    .line 259
    invoke-virtual {p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPullLoadEnable()Z

    move-result p1

    if-nez p1, :cond_1

    .line 260
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    :cond_1
    return-void
.end method

.method public isBottom()Z
    .locals 1

    .line 699
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mBottomLoadMoreTime:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnBottomLoadMoreTime;

    if-eqz v0, :cond_0

    .line 700
    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnBottomLoadMoreTime;->isBottom()Z

    move-result v0

    return v0

    .line 702
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasChildOnBottom()Z

    move-result v0

    return v0
.end method

.method public isLoading()Z
    .locals 1

    .line 786
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mSilenceLoadMore:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 789
    :cond_0
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    return v0
.end method

.method public isRecyclerView()Z
    .locals 3

    .line 852
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mSilenceLoadMore:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 854
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    if-eqz v0, :cond_2

    instance-of v2, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_2

    .line 855
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 856
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method public isTop()Z
    .locals 1

    .line 692
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTopRefreshTime:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnTopRefreshTime;

    if-eqz v0, :cond_0

    .line 693
    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnTopRefreshTime;->isTop()Z

    move-result v0

    return v0

    .line 695
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasChildOnTop()Z

    move-result v0

    return v0
.end method

.method public loadCompleted()V
    .locals 4

    .line 569
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enablePullUp(Z)V

    .line 570
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-eq v0, v1, :cond_1

    .line 571
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateComplete()V

    .line 572
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setState(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;)V

    .line 573
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mPinnedTime:I

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_0

    const/16 v0, 0x3e8

    :cond_0
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mPinnedTime:I

    .line 574
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isHideFooterWhenComplete:Z

    if-eqz v0, :cond_1

    .line 575
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$4;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$4;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)V

    iget v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mPinnedTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public notifyDatasetChanged()V
    .locals 1

    .line 365
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isRecyclerView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->getRecyclerViewAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 368
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public notifyRecyclerViewLoadMore()V
    .locals 2

    .line 321
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-nez v0, :cond_2

    .line 322
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 323
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 324
    invoke-interface {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onLoadMore(Z)V

    :cond_0
    const/4 v0, 0x1

    .line 326
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    .line 327
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->previousTotal:I

    .line 328
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateRefreshing()V

    .line 329
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_LOADING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setState(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;)V

    goto :goto_0

    .line 331
    :cond_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->loadCompleted()V

    :cond_2
    :goto_0
    return-void
.end method

.method public offsetTopAndBottom(I)V
    .locals 1

    .line 848
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method

.method public onRecyclerViewScrolled(Landroidx/recyclerview/widget/RecyclerView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;IIZ)V
    .locals 2

    .line 151
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRecyclerViewScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 152
    invoke-virtual {v0, p1, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 154
    :cond_0
    iget-object p3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-nez p3, :cond_1

    iget-boolean p3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mSilenceLoadMore:Z

    if-eqz p3, :cond_2

    :cond_1
    if-nez p2, :cond_3

    :cond_2
    return-void

    .line 157
    :cond_3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    .line 158
    invoke-virtual {p0, p3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->getRecyclerViewInfo(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 159
    invoke-direct {p0, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->refreshAdapter(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "test pre onScrolled mIsLoadingMore="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->onRecyclerViewTop()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 162
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->isRecyclerViewFullscreen(Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 165
    :cond_4
    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHideFooter:Z

    if-eqz p1, :cond_5

    .line 166
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateReady()V

    .line 167
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->callWhenNotAutoLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    if-nez p4, :cond_7

    if-nez p5, :cond_7

    return-void

    .line 175
    :cond_7
    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mSilenceLoadMore:Z

    if-eqz p1, :cond_8

    .line 176
    invoke-direct {p0, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->doSilenceLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    .line 178
    :cond_8
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isOnRecyclerViewBottom()Z

    move-result p1

    const/4 p4, 0x1

    if-nez p1, :cond_9

    .line 179
    iput-boolean p4, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHideFooter:Z

    .line 181
    :cond_9
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPullLoadEnable()Z

    move-result p1

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasIntercepted:Z

    if-nez p1, :cond_a

    const/4 p1, 0x0

    .line 182
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addFooterView(Z)V

    .line 183
    iput-boolean p4, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasIntercepted:Z

    .line 185
    :cond_a
    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasIntercepted:Z

    if-eqz p1, :cond_b

    return-void

    .line 188
    :cond_b
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->ensureFooterShowWhenScrolling()V

    .line 189
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mContainer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz p1, :cond_c

    .line 190
    invoke-direct {p0, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->doAutoLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_1

    :cond_c
    if-nez p1, :cond_d

    .line 192
    invoke-direct {p0, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->doNormalLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    :cond_d
    :goto_1
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 767
    iput p4, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    .line 768
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mAbsListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 769
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 4

    .line 728
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isStopLoadMore()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 729
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isForbidLoadMore:Z

    .line 731
    :cond_0
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isForbidLoadMore:Z

    if-eqz v0, :cond_2

    .line 732
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isStopLoadMore()Z

    move-result p1

    if-nez p1, :cond_1

    if-nez p2, :cond_1

    const/4 p1, 0x0

    .line 733
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isForbidLoadMore:Z

    :cond_1
    return-void

    .line 738
    :cond_2
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mSilenceLoadMore:Z

    if-eqz v0, :cond_3

    .line 739
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-nez v0, :cond_5

    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v2

    iget v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mPreLoadCount:I

    add-int/2addr v2, v3

    if-gt v0, v2, :cond_5

    .line 740
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onLoadMore(Z)V

    .line 741
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    goto :goto_0

    .line 743
    :cond_3
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mContainer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result v0

    if-nez v0, :cond_5

    if-nez p2, :cond_5

    .line 745
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mPreLoadCount:I

    if-nez v0, :cond_4

    .line 746
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 747
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-nez v0, :cond_5

    .line 748
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mContainer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->invokeLoadMore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    goto :goto_0

    .line 752
    :cond_4
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mPreLoadCount:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_5

    .line 753
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-nez v0, :cond_5

    .line 754
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mContainer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->invokeLoadMore()Z

    move-result v0

    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    .line 759
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mAbsListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_6

    .line 760
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_6
    return-void
.end method

.method public releaseToLoadMore(Z)V
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 341
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_RELEASE_TO_LOADMORE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-eq p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addingFooter:Z

    if-nez p1, :cond_3

    .line 342
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onReleaseToLoadMore()V

    .line 343
    sget-object p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_RELEASE_TO_LOADMORE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setState(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;)V

    goto :goto_0

    .line 346
    :cond_1
    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHideFooter:Z

    if-eqz p1, :cond_2

    .line 347
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->doReadyState()V

    goto :goto_0

    .line 349
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_READY:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-eq p1, v0, :cond_3

    .line 350
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateFinish(Z)V

    .line 351
    sget-object p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_READY:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setState(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public scrollToTop()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 94
    check-cast v0, Landroid/widget/AbsListView;

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setSelection(I)V

    goto :goto_0

    .line 96
    :cond_0
    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    .line 97
    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 98
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 99
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setContainer(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mContainer:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 71
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    const/4 v0, 0x2

    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setOverScrollMode(I)V

    return-void
.end method

.method public setContentViewLayoutParams(ZZ)V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    .line 61
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_0
    if-eqz p2, :cond_1

    .line 64
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 67
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setEnablePullLoad(Z)V
    .locals 1

    .line 649
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addFooterView(Z)V

    const/4 v0, 0x0

    .line 650
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasIntercepted:Z

    .line 651
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-eqz p1, :cond_0

    .line 654
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->dealRecyclerViewNotFullScreen()V

    .line 656
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isRecyclerView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 657
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->getRecyclerViewAdapter(Landroidx/recyclerview/widget/RecyclerView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 659
    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->insideEnableFooter(Z)V

    :cond_1
    return-void
.end method

.method protected setHideFooterWhenComplete(Z)V
    .locals 0

    .line 565
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isHideFooterWhenComplete:Z

    return-void
.end method

.method public setHolder(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    return-void
.end method

.method public setLoadComplete(Z)V
    .locals 1

    .line 389
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHasLoadComplete:Z

    if-nez p1, :cond_0

    .line 391
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    :cond_0
    const/4 v0, 0x0

    .line 393
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    .line 394
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasIntercepted:Z

    if-nez p1, :cond_1

    .line 396
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isHideFooterWhenComplete:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPullLoadEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 397
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addFooterView(Z)V

    .line 399
    :cond_1
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->resetLayout()V

    .line 400
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isRecyclerView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 401
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->doRecyclerViewloadComplete(Z)V

    :cond_2
    return-void
.end method

.method public setOnAbsListViewScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 680
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mAbsListViewScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setOnBottomLoadMoreTime(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnBottomLoadMoreTime;)V
    .locals 0

    .line 720
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mBottomLoadMoreTime:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnBottomLoadMoreTime;

    return-void
.end method

.method public setOnRecyclerViewScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 0

    .line 684
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRecyclerViewScrollListener:Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method public setOnTopRefreshTime(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnTopRefreshTime;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTopRefreshTime:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnTopRefreshTime;

    return-void
.end method

.method public setParent(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    return-void
.end method

.method public setPinnedTime(I)V
    .locals 0

    .line 676
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mPinnedTime:I

    return-void
.end method

.method public setPreLoadCount(I)V
    .locals 0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 559
    :cond_0
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mPreLoadCount:I

    return-void
.end method

.method public setScrollListener()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 113
    check-cast v0, Landroid/widget/AbsListView;

    .line 114
    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    goto :goto_0

    .line 115
    :cond_0
    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_1

    .line 116
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setScrollViewScrollListener()V

    goto :goto_0

    .line 118
    :cond_1
    instance-of v0, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    .line 119
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setRecyclerViewScrollListener()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setSilenceLoadMore(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mSilenceLoadMore:Z

    return-void
.end method

.method public setXRefreshViewListener(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    return-void
.end method

.method public startLoadMore(ZLcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 0

    .line 304
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isFooterEnable()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-nez p2, :cond_0

    goto :goto_0

    .line 307
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x1

    .line 308
    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    .line 309
    iget p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mTotalItemCount:I

    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->previousTotal:I

    .line 310
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateRefreshing()V

    .line 311
    sget-object p2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_LOADING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-direct {p0, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setState(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;)V

    .line 312
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    if-eqz p2, :cond_2

    .line 313
    invoke-interface {p2, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onLoadMore(Z)V

    goto :goto_0

    .line 316
    :cond_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->loadCompleted()V

    :cond_2
    :goto_0
    return-void
.end method

.method public stopLoading(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 456
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mIsLoadingMore:Z

    .line 458
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v1, :cond_1

    .line 459
    invoke-interface {v1, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateFinish(Z)V

    if-eqz p1, :cond_1

    .line 461
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isRecyclerView()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 462
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->child:Landroid/view/View;

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 463
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    if-nez v1, :cond_0

    return-void

    .line 465
    :cond_0
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addFooterView(Z)V

    .line 466
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->resetLayout()V

    const/4 v0, 0x1

    .line 467
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->addFooterView(Z)V

    .line 471
    :cond_1
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mHideFooter:Z

    .line 472
    sget-object p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_FINISHED:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    return-void
.end method
