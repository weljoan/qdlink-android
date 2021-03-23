.class public Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;
.super Landroid/widget/LinearLayout;
.source "XRefreshView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$SimpleXRefreshListener;,
        Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;,
        Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$TouchLifeCycle;
    }
.end annotation


# instance fields
.field private OFFSET_RADIO:F

.field private SCROLLBACK_DURATION:I

.field private autoLoadMore:Z

.field private autoRefresh:Z

.field private enablePullUp:Z

.field private enableRecyclerViewPullUp:Z

.field private enableReleaseToLoadMore:Z

.field private isForHorizontalMove:Z

.field private isHeightMatchParent:Z

.field private isIntercepted:Z

.field private isWidthMatchParent:Z

.field private lastRefreshTime:J

.field private mCanMoveFooterWhenDisablePullLoadMore:Z

.field private mCanMoveHeaderWhenDisablePullRefresh:Z

.field private mCenterView:Landroid/view/View;

.field private mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

.field private mEnablePullLoad:Z

.field private mEnablePullRefresh:Z

.field private mEnablePullUpWhenLoadCompleted:Z

.field private mFootHeight:I

.field private mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

.field private mFooterView:Landroid/view/View;

.field private mHasLoadComplete:Z

.field private mHasSendCancelEvent:Z

.field private mHasSendDownEvent:Z

.field private mHeadMoveDistence:I

.field private mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

.field private mHeaderView:Landroid/view/View;

.field private mHeaderViewHeight:I

.field private mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

.field protected mInitScrollY:I

.field private mInitialMotionY:I

.field private mIsIntercept:Z

.field private mIsPinnedContentWhenRefreshing:Z

.field private mLastMoveEvent:Landroid/view/MotionEvent;

.field private mLastX:I

.field private mLastY:I

.field private mLayoutReady:Z

.field private mMoveForHorizontal:Z

.field private mNeedToRefresh:Z

.field private mPinnedTime:I

.field public mPullLoading:Z

.field public mPullRefreshing:Z

.field private mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

.field private mReleaseToLoadMore:Z

.field private mRunnable:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;

.field private mScroller:Landroid/widget/Scroller;

.field private mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

.field private mStopingRefresh:Z

.field private mTempTarget:Landroid/view/View;

.field private final mTouchLifeCycles:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$TouchLifeCycle;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchSlop:I

.field private waitForShowCenterView:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 113
    invoke-direct {p0, p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 117
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mInitScrollY:I

    const/4 v1, -0x1

    .line 43
    iput v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastY:I

    .line 44
    iput v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastX:I

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullRefresh:Z

    .line 46
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    const v2, 0x3fe66666    # 1.8f

    .line 47
    iput v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->OFFSET_RADIO:F

    .line 56
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->autoRefresh:Z

    .line 60
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->autoLoadMore:Z

    .line 66
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isHeightMatchParent:Z

    .line 67
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isWidthMatchParent:Z

    .line 73
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendCancelEvent:Z

    .line 74
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendDownEvent:Z

    .line 76
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mMoveForHorizontal:Z

    .line 77
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isForHorizontalMove:Z

    .line 78
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCanMoveHeaderWhenDisablePullRefresh:Z

    .line 79
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCanMoveFooterWhenDisablePullLoadMore:Z

    .line 81
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mIsIntercept:Z

    const/16 v2, 0x3e8

    .line 87
    iput v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPinnedTime:I

    const/4 v2, 0x0

    .line 88
    iput-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    .line 92
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasLoadComplete:Z

    .line 96
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mIsPinnedContentWhenRefreshing:Z

    .line 97
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enableReleaseToLoadMore:Z

    .line 101
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enableRecyclerViewPullUp:Z

    .line 105
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enablePullUp:Z

    .line 109
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLayoutReady:Z

    .line 110
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mNeedToRefresh:Z

    .line 379
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isIntercepted:Z

    .line 382
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTouchLifeCycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 725
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mReleaseToLoadMore:Z

    .line 726
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullUpWhenLoadCompleted:Z

    .line 847
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    const-wide/16 v2, -0x1

    .line 879
    iput-wide v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->lastRefreshTime:J

    const/16 v2, 0x12c

    .line 997
    iput v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->SCROLLBACK_DURATION:I

    .line 1031
    new-instance v2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$4;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    iput-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRunnable:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;

    .line 1105
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->waitForShowCenterView:I

    .line 118
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setClickable(Z)V

    .line 119
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setLongClickable(Z)V

    .line 120
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-direct {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    .line 121
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    invoke-direct {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    .line 122
    new-instance v0, Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-direct {v0, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mScroller:Landroid/widget/Scroller;

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->initWithContext(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setOrientation(I)V

    return-void
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLayoutReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->autoRefresh:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;ZI)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->endLoadMore(ZI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Landroid/widget/Scroller;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mScroller:Landroid/widget/Scroller;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Landroid/view/View;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enableReleaseToLoadMore:Z

    return p0
.end method

.method static synthetic access$1500(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mReleaseToLoadMore:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mReleaseToLoadMore:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->scrollback(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mNeedToRefresh:Z

    return p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeadMoveDistence:I

    return p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->attachContentView()V

    return-void
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->addFooterView()V

    return-void
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->waitForShowCenterView:I

    return p0
.end method

.method static synthetic access$602(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;I)I
    .locals 0

    .line 34
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->waitForShowCenterView:I

    return p1
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    return p0
.end method

.method static synthetic access$702(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    return p1
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->resetHeaderHeight()V

    return-void
.end method

.method static synthetic access$902(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;J)J
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->lastRefreshTime:J

    return-wide p1
.end method

.method private addCenterViewLayoutParams()V
    .locals 2

    .line 1087
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCenterView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1090
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    .line 1091
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 1092
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 1093
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCenterView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private addFooterView()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    .line 280
    :cond_0
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->dealAddFooterView()V

    return-void
.end method

.method private addHeaderView()V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 237
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->dealAddHeaderView()V

    return-void
.end method

.method private attachContentView()V
    .locals 3

    .line 268
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setContentView(Landroid/view/View;)V

    .line 269
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->autoLoadMore:Z

    if-eqz v1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setContainer(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    .line 270
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isHeightMatchParent:Z

    iget-boolean v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isWidthMatchParent:Z

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setContentViewLayoutParams(ZZ)V

    .line 271
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setHolder(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;)V

    .line 272
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setParent(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    .line 273
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setScrollListener()V

    return-void
.end method

.method private canReleaseToLoadMore()Z
    .locals 1

    .line 729
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enableReleaseToLoadMore:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isLoading()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private checkPullLoadEnable()V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-nez v0, :cond_0

    return-void

    .line 653
    :cond_0
    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 654
    invoke-interface {v0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    goto :goto_0

    .line 656
    :cond_1
    iput-boolean v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullLoading:Z

    const/4 v1, 0x1

    .line 657
    invoke-interface {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    .line 658
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateRefreshing()V

    :goto_0
    return-void
.end method

.method private checkPullRefreshEnable()V
    .locals 2

    .line 639
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    if-nez v0, :cond_0

    return-void

    .line 642
    :cond_0
    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullRefresh:Z

    if-nez v1, :cond_1

    .line 643
    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->hide()V

    goto :goto_0

    .line 645
    :cond_1
    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->show()V

    :goto_0
    return-void
.end method

.method private dealAddFooterView()V
    .locals 2

    .line 253
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 257
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->addView(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 259
    :catch_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "XRefreshView is allowed to have one and only one child"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 262
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    check-cast v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    .line 263
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->checkPullLoadEnable()V

    :cond_1
    return-void
.end method

.method private dealAddHeaderView()V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 244
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 245
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->addView(Landroid/view/View;I)V

    .line 246
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    check-cast v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    .line 247
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setRefreshTime()V

    .line 248
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->checkPullRefreshEnable()V

    :cond_0
    return-void
.end method

.method private endLoadMore(ZI)V
    .locals 3

    const/4 v0, 0x0

    .line 1009
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullLoading:Z

    .line 1010
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRunnable:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;->isStopLoadMore:Z

    .line 1011
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v1, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    neg-int v1, v1

    invoke-virtual {p0, v1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startScroll(II)V

    .line 1013
    iget-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasLoadComplete:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 1014
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    :cond_0
    return-void
.end method

.method private getFooterHeight()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_0

    .line 301
    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->getFooterHeight()I

    move-result v0

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFootHeight:I

    :cond_0
    return-void
.end method

.method private getHeaderHeight()V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    if-eqz v0, :cond_0

    .line 295
    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->getHeaderHeight()I

    move-result v0

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderViewHeight:I

    :cond_0
    return-void
.end method

.method private hideUselessFooter()V
    .locals 2

    .line 374
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 375
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private initWithContext(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 194
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lcom/neusoft/qdrivezeusbase/R$styleable;->XRefreshView:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 197
    :try_start_0
    sget p2, Lcom/neusoft/qdrivezeusbase/R$styleable;->XRefreshView_isHeightMatchParent:I

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isHeightMatchParent:Z

    .line 199
    sget p2, Lcom/neusoft/qdrivezeusbase/R$styleable;->XRefreshView_isHeightMatchParent:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isWidthMatchParent:Z

    .line 201
    sget p2, Lcom/neusoft/qdrivezeusbase/R$styleable;->XRefreshView_autoRefresh:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->autoRefresh:Z

    .line 203
    sget p2, Lcom/neusoft/qdrivezeusbase/R$styleable;->XRefreshView_autoLoadMore:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->autoLoadMore:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    .line 206
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 208
    :goto_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2

    .line 211
    :cond_0
    :goto_2
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->addHeaderView()V

    .line 212
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 232
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTouchSlop:I

    return-void
.end method

.method private releaseToLoadMore(Z)V
    .locals 1

    .line 733
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mReleaseToLoadMore:Z

    .line 734
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mReleaseToLoadMore:Z

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->releaseToLoadMore(Z)V

    return-void
.end method

.method private resetHeaderHeight()V
    .locals 3

    .line 815
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    int-to-float v0, v0

    .line 817
    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderViewHeight:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    return-void

    .line 821
    :cond_1
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-eqz v0, :cond_2

    .line 822
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderViewHeight:I

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v1, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    sub-int/2addr v0, v1

    .line 823
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->computeScrollVerticalDuration(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startScroll(II)V

    goto :goto_0

    .line 825
    :cond_2
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    rsub-int/lit8 v0, v0, 0x0

    .line 826
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->computeScrollVerticalDuration(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startScroll(II)V

    .line 828
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetHeaderHeight offsetY="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method

.method private scrollback(I)V
    .locals 2

    .line 953
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 954
    instance-of v1, v0, Landroid/widget/AbsListView;

    if-eqz v1, :cond_0

    .line 955
    check-cast v0, Landroid/widget/AbsListView;

    const/4 v1, 0x0

    .line 956
    invoke-virtual {v0, p1, v1}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method

.method private sendCancelEvent()V
    .locals 9

    .line 555
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendCancelEvent:Z

    if-nez v0, :cond_0

    const-string v0, "sendCancelEvent"

    .line 556
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 557
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setRefreshTime()V

    const/4 v0, 0x1

    .line 558
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendCancelEvent:Z

    const/4 v0, 0x0

    .line 559
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendDownEvent:Z

    .line 560
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 562
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 563
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    .line 564
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    const/4 v5, 0x3

    .line 565
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    .line 566
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    .line 561
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 567
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method private sendDownEvent()V
    .locals 9

    .line 587
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendDownEvent:Z

    if-nez v0, :cond_1

    const-string v0, "sendDownEvent"

    .line 588
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 589
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendCancelEvent:Z

    const/4 v1, 0x1

    .line 590
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendDownEvent:Z

    .line 591
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isIntercepted:Z

    .line 592
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastMoveEvent:Landroid/view/MotionEvent;

    if-nez v0, :cond_0

    return-void

    .line 595
    :cond_0
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v1

    .line 596
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    const/4 v5, 0x0

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    .line 597
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v8

    .line 595
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 598
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z

    :cond_1
    return-void
.end method

.method private setRefreshTime()V
    .locals 5

    .line 903
    iget-wide v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->lastRefreshTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 906
    :cond_0
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    invoke-interface {v2, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->setRefreshTime(J)V

    return-void
.end method

.method private startLoadMore()V
    .locals 2

    .line 663
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullLoading:Z

    if-nez v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateRefreshing()V

    const/4 v0, 0x1

    .line 665
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullLoading:Z

    .line 666
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 667
    invoke-interface {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onLoadMore(Z)V

    :cond_0
    return-void
.end method

.method private stopLoadMore(ZI)V
    .locals 3

    .line 927
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 928
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullLoading:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 929
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    .line 930
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-ne v0, v1, :cond_0

    .line 931
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateComplete()V

    goto :goto_0

    .line 933
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateFinish(Z)V

    .line 935
    :goto_0
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPinnedTime:I

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_1

    .line 936
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$3;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;ZI)V

    iget p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPinnedTime:I

    int-to-long v1, p2

    invoke-virtual {p0, v0, v1, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 944
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->endLoadMore(ZI)V

    .line 949
    :cond_2
    :goto_1
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {p2, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->stopLoading(Z)V

    return-void
.end method

.method private swapContentView(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 1141
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->removeViewAt(I)V

    .line 1142
    invoke-virtual {p0, p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->addView(Landroid/view/View;I)V

    .line 1143
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setContentView(Landroid/view/View;)V

    .line 1144
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->scrollToTop()V

    return-void
.end method

.method private updateFooterHeight(I)V
    .locals 3

    .line 738
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 739
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isCenterViewShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 741
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 742
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    goto :goto_1

    .line 745
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object v2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_LOADING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-eq v0, v2, :cond_3

    .line 746
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateRefreshing()V

    .line 747
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_LOADING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    goto :goto_1

    .line 750
    :cond_1
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->canReleaseToLoadMore()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 751
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->releaseToLoadMore(Z)V

    .line 754
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enableRecyclerViewPullUp:Z

    if-eqz v0, :cond_8

    .line 755
    :cond_4
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullUpWhenLoadCompleted:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result v0

    if-nez v0, :cond_8

    .line 756
    :cond_5
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->hasLoadCompleted()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 757
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->show(Z)V

    .line 762
    :cond_6
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCanMoveFooterWhenDisablePullLoadMore:Z

    if-eqz v0, :cond_8

    .line 763
    :cond_7
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->moveView(I)V

    :cond_8
    return-void
.end method

.method private varargs updateHeaderHeight(II[I)V
    .locals 1

    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 680
    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 682
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->onStateRefreshing()V

    .line 683
    aget p1, p3, p1

    invoke-virtual {p0, p2, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startScroll(II)V

    goto :goto_1

    .line 685
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->isOverHeader(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 686
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget p1, p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    neg-int p2, p1

    .line 688
    :cond_2
    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullRefresh:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCanMoveHeaderWhenDisablePullRefresh:Z

    if-eqz p1, :cond_4

    .line 689
    :cond_3
    invoke-virtual {p0, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->moveView(I)V

    .line 691
    :cond_4
    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullRefresh:Z

    if-eqz p1, :cond_6

    iget-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-nez p1, :cond_6

    .line 692
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget p1, p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    iget p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderViewHeight:I

    if-le p1, p2, :cond_5

    .line 693
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object p2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_READY:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-eq p1, p2, :cond_6

    .line 694
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->onStateReady()V

    .line 695
    sget-object p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_READY:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    goto :goto_1

    .line 698
    :cond_5
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    sget-object p2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    if-eq p1, p2, :cond_6

    .line 699
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    invoke-interface {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->onStateNormal()V

    .line 700
    sget-object p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    :cond_6
    :goto_1
    return-void
.end method

.method private updateTouchAction(Landroid/view/MotionEvent;)V
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTouchLifeCycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$TouchLifeCycle;

    if-eqz v1, :cond_0

    .line 406
    invoke-interface {v1, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$TouchLifeCycle;->onTouch(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public addTouchLifeCycle(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$TouchLifeCycle;)V
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTouchLifeCycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disallowInterceptTouchEvent(Z)V
    .locals 0

    .line 551
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mIsIntercept:Z

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 413
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 416
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->updateTouchAction(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_1a

    const/4 v2, 0x1

    if-eq v0, v2, :cond_15

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_15

    goto/16 :goto_3

    .line 426
    :cond_0
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastMoveEvent:Landroid/view/MotionEvent;

    .line 427
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mIsIntercept:Z

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 431
    :cond_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isCenterViewShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 432
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 434
    :cond_2
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullLoading:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mIsPinnedContentWhenRefreshing:Z

    if-eqz v0, :cond_4

    .line 435
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->sendCancelEvent()V

    return v2

    .line 438
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    .line 439
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    .line 440
    iget v4, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastY:I

    sub-int v4, v0, v4

    .line 441
    iget v5, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastX:I

    sub-int v5, v3, v5

    .line 442
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastY:I

    .line 443
    iput v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastX:I

    .line 445
    iget-boolean v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isIntercepted:Z

    if-nez v3, :cond_6

    .line 446
    iget v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mInitialMotionY:I

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v6, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTouchSlop:I

    if-lt v3, v6, :cond_5

    .line 447
    iput-boolean v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isIntercepted:Z

    goto :goto_0

    .line 449
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 452
    :cond_6
    :goto_0
    iget-boolean v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isForHorizontalMove:Z

    if-eqz v3, :cond_7

    iget-boolean v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mMoveForHorizontal:Z

    if-nez v3, :cond_7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v6, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTouchSlop:I

    if-le v3, v6, :cond_7

    .line 453
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v3, v5, :cond_7

    .line 454
    iget-object v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v3, v3, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    if-nez v3, :cond_7

    .line 455
    iput-boolean v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mMoveForHorizontal:Z

    .line 458
    :cond_7
    iget-boolean v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mMoveForHorizontal:Z

    if-eqz v2, :cond_8

    .line 459
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 461
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isTop="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isTop()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ";isBottom="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isBottom()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    if-lez v4, :cond_9

    .line 462
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v2, v2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    iget v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeadMoveDistence:I

    if-le v2, v3, :cond_a

    :cond_9
    if-gez v4, :cond_13

    :cond_a
    int-to-float v2, v4

    .line 463
    iget v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->OFFSET_RADIO:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    .line 467
    iget-boolean v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullLoading:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mReleaseToLoadMore:Z

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isTop()Z

    move-result v3

    if-eqz v3, :cond_d

    if-lez v2, :cond_b

    iget-object v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    .line 468
    invoke-virtual {v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->hasFooterPullUp()Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_b
    if-gez v2, :cond_d

    iget-object v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    .line 469
    invoke-virtual {v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->hasHeaderPullDown()Z

    move-result v3

    if-eqz v3, :cond_d

    :cond_c
    iget-boolean v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullRefresh:Z

    if-eqz v3, :cond_d

    .line 470
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->sendCancelEvent()V

    new-array v1, v1, [I

    .line 471
    invoke-direct {p0, v0, v2, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->updateHeaderHeight(II[I)V

    goto/16 :goto_3

    .line 472
    :cond_d
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_f

    if-ltz v2, :cond_e

    if-lez v2, :cond_f

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    .line 473
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->hasFooterPullUp()Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    if-eqz v0, :cond_f

    .line 475
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->sendCancelEvent()V

    .line 476
    invoke-direct {p0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->updateFooterHeight(I)V

    goto/16 :goto_3

    :cond_f
    if-eqz v2, :cond_1b

    .line 477
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isTop()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->hasHeaderPullDown()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_10
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    .line 478
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isBottom()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->hasFooterPullUp()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 479
    :cond_11
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mReleaseToLoadMore:Z

    if-eqz v0, :cond_12

    .line 480
    invoke-direct {p0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->releaseToLoadMore(Z)V

    .line 482
    :cond_12
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_1b

    .line 483
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->sendDownEvent()V

    goto/16 :goto_3

    .line 465
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 428
    :cond_14
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 492
    :cond_15
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->hasHeaderPullDown()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 493
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullRefresh:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    iget v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderViewHeight:I

    if-le v0, v3, :cond_16

    .line 494
    iput-boolean v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    .line 495
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->onStateRefreshing()V

    .line 496
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_REFRESHING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    .line 497
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    if-eqz v0, :cond_16

    .line 498
    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onRefresh()V

    .line 499
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    invoke-interface {v0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onRefresh(Z)V

    .line 502
    :cond_16
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->resetHeaderHeight()V

    goto :goto_2

    .line 503
    :cond_17
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->hasFooterPullUp()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 504
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    if-nez v0, :cond_19

    .line 505
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isCenterViewShowing()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasLoadComplete:Z

    if-nez v0, :cond_18

    .line 506
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->invokeLoadMore()Z

    goto :goto_2

    .line 508
    :cond_18
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    rsub-int/lit8 v0, v0, 0x0

    .line 509
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getHeight()I

    move-result v2

    invoke-static {v0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->computeScrollVerticalDuration(II)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startScroll(II)V

    :cond_19
    :goto_2
    const/4 v0, -0x1

    .line 513
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastY:I

    .line 514
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastX:I

    .line 515
    iput v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mInitialMotionY:I

    .line 516
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isIntercepted:Z

    .line 517
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mMoveForHorizontal:Z

    goto :goto_3

    .line 419
    :cond_1a
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendCancelEvent:Z

    .line 420
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasSendDownEvent:Z

    .line 421
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastY:I

    .line 422
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastX:I

    .line 423
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLastY:I

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mInitialMotionY:I

    .line 520
    :cond_1b
    :goto_3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEventSupper(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 603
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public enableCenterView(Z)V
    .locals 2

    .line 1108
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLayoutReady:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1109
    :goto_0
    iput v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->waitForShowCenterView:I

    return-void

    .line 1112
    :cond_1
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 1114
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCenterView:Landroid/view/View;

    if-eqz p1, :cond_4

    if-eq v0, p1, :cond_4

    .line 1115
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 1116
    instance-of p1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz p1, :cond_2

    .line 1117
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTempTarget:Landroid/view/View;

    .line 1119
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCenterView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->swapContentView(Landroid/view/View;)V

    goto :goto_1

    .line 1122
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTempTarget:Landroid/view/View;

    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCenterView:Landroid/view/View;

    if-ne v0, v1, :cond_4

    .line 1123
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->swapContentView(Landroid/view/View;)V

    :cond_4
    :goto_1
    return-void
.end method

.method protected enablePullUp(Z)V
    .locals 0

    .line 968
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enablePullUp:Z

    return-void
.end method

.method public enablePullUpWhenLoadCompleted(Z)V
    .locals 0

    .line 1182
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullUpWhenLoadCompleted:Z

    return-void
.end method

.method public enableRecyclerViewPullUp(Z)V
    .locals 0

    .line 1189
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enableRecyclerViewPullUp:Z

    return-void
.end method

.method public enableReleaseToLoadMore(Z)V
    .locals 0

    .line 1173
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enableReleaseToLoadMore:Z

    return-void
.end method

.method public getCenterView()Landroid/view/View;
    .locals 1

    .line 1137
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCenterView:Landroid/view/View;

    return-object v0
.end method

.method public getContentView()Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;
    .locals 1

    .line 524
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    return-object v0
.end method

.method public getLastRefreshTime()J
    .locals 2

    .line 896
    iget-wide v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->lastRefreshTime:J

    return-wide v0
.end method

.method public getPullLoadEnable()Z
    .locals 1

    .line 621
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    return v0
.end method

.method public getPullRefreshEnable()Z
    .locals 1

    .line 625
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullRefresh:Z

    return v0
.end method

.method public hasLoadCompleted()Z
    .locals 1

    .line 994
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasLoadComplete:Z

    return v0
.end method

.method public invokeLoadMore()Z
    .locals 2

    .line 528
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isCenterViewShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasLoadComplete:Z

    if-nez v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFootHeight:I

    sub-int/2addr v1, v0

    if-eqz v1, :cond_0

    .line 531
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getHeight()I

    move-result v0

    invoke-static {v1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->computeScrollVerticalDuration(II)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startScroll(II)V

    .line 533
    :cond_0
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startLoadMore()V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public isCenterViewShowing()Z
    .locals 4

    .line 1129
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCenterView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildCount()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    .line 1130
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1131
    iget-object v3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCenterView:Landroid/view/View;

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    return v1
.end method

.method public isStopLoadMore()Z
    .locals 1

    .line 1028
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRunnable:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;

    iget-boolean v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;->isStopLoadMore:Z

    return v0
.end method

.method public moveView(I)V
    .locals 4

    .line 832
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->move(I)V

    .line 833
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 834
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->offsetTopAndBottom(I)V

    .line 835
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 836
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 838
    :cond_0
    invoke-static {p0}, Landroidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 839
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isTop()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-eqz v0, :cond_2

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 840
    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v2, v2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    int-to-double v2, v2

    mul-double v2, v2, v0

    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderViewHeight:I

    int-to-double v0, v0

    div-double/2addr v2, v0

    .line 842
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v1, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    invoke-interface {v0, v2, v3, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onHeaderMove(DI)V

    .line 843
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v1, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    invoke-interface {v0, v2, v3, v1, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->onHeaderMove(DII)V

    :cond_2
    return-void
.end method

.method public needAddFooterView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public notifyLayoutManagerChanged()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setScrollListener()V

    .line 188
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->notifyDatasetChanged()V

    return-void
.end method

.method public notifyLoadMore()V
    .locals 1

    .line 540
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startLoadMore()V

    goto :goto_0

    .line 543
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->notifyRecyclerViewLoadMore()V

    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5

    .line 336
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayout mHolder.mOffsetY="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget p2, p2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildCount()I

    move-result p1

    .line 338
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPaddingTop()I

    move-result p2

    iget-object p3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget p3, p3, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    add-int/2addr p2, p3

    const/4 p3, 0x0

    const/4 p4, 0x0

    :goto_0
    if-ge p3, p1, :cond_4

    .line 341
    invoke-virtual {p0, p3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    .line 342
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 343
    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 344
    iget v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 345
    iget v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 346
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 347
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPaddingLeft()I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr p2, v1

    .line 349
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 350
    invoke-virtual {p5}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v4, 0x8

    if-eq v1, v4, :cond_3

    if-nez p3, :cond_0

    .line 352
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p4

    iget v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderViewHeight:I

    sub-int/2addr p4, v1

    sub-int v1, p2, v1

    add-int/2addr v0, v3

    add-int/2addr p2, p4

    .line 353
    invoke-virtual {p5, v3, v1, v0, p2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    .line 356
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v1, p4

    add-int v4, v1, p2

    add-int/2addr v0, v3

    .line 358
    invoke-virtual {p5, v3, p2, v0, v4}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v1, v2

    add-int/2addr p2, v1

    goto :goto_1

    .line 361
    :cond_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 362
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p2

    add-int/2addr v0, v3

    .line 363
    invoke-virtual {p5, v3, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 364
    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result p5

    add-int/2addr p2, p5

    goto :goto_1

    .line 366
    :cond_2
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->hideUselessFooter()V

    :cond_3
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method protected onMeasure(II)V
    .locals 12

    .line 307
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 308
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 309
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildCount()I

    move-result v1

    .line 311
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPaddingLeft()I

    move-result v2

    .line 312
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPaddingRight()I

    move-result v3

    .line 313
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPaddingTop()I

    move-result v4

    .line 314
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getPaddingBottom()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v1, :cond_0

    .line 316
    invoke-virtual {p0, v6}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 317
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout$LayoutParams;

    .line 318
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    sub-int v9, p1, v9

    iget v10, v8, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v9, v10

    sub-int/2addr v9, v2

    sub-int/2addr v9, v3

    const/high16 v10, 0x40000000    # 2.0f

    invoke-static {v9, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    add-int v10, v4, v5

    .line 321
    iget v11, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v10, v11

    iget v11, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v10, v11

    iget v11, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getChildMeasureSpec(III)I

    move-result v10

    .line 323
    invoke-virtual {v7, v9, v10}, Landroid/view/View;->measure(II)V

    .line 324
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    iget v7, v8, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v7, v8, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 326
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setMeasuredDimension(II)V

    .line 327
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->hideUselessFooter()V

    .line 328
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getHeaderHeight()V

    .line 329
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getFooterHeight()V

    return-void
.end method

.method public removeTouchLifeCycle(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$TouchLifeCycle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTouchLifeCycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 399
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mTouchLifeCycles:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public removeViewTreeObserver(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 2

    .line 286
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 289
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method

.method protected resetLayout()V
    .locals 3

    const/4 v0, 0x0

    .line 961
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enablePullUp(Z)V

    .line 962
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    if-nez v0, :cond_0

    .line 963
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    neg-int v0, v0

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v1, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->computeScrollVerticalDuration(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startScroll(II)V

    :cond_0
    return-void
.end method

.method public restoreLastRefreshTime(J)V
    .locals 0

    .line 887
    iput-wide p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->lastRefreshTime:J

    return-void
.end method

.method public setAutoLoadMore(Z)V
    .locals 2

    .line 784
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->autoLoadMore:Z

    .line 785
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 786
    :goto_0
    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setContainer(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    :cond_1
    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 789
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setPullLoadEnable(Z)V

    :cond_2
    return-void
.end method

.method public setAutoRefresh(Z)V
    .locals 0

    .line 775
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->autoRefresh:Z

    return-void
.end method

.method public setCenterView(I)V
    .locals 3

    .line 1098
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "layout"

    .line 1099
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setCenterView(Landroid/view/View;)V

    return-void

    .line 1100
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is a illegal layoutid , please check your layout id first !"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCenterView(Landroid/view/View;)V
    .locals 0

    .line 1081
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->removeViewFromParent(Landroid/view/View;)V

    .line 1082
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCenterView:Landroid/view/View;

    .line 1083
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->addCenterViewLayoutParams()V

    return-void
.end method

.method public setCustomFooterView(Landroid/view/View;)V
    .locals 1

    .line 1257
    instance-of v0, p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_1

    .line 1258
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1259
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->removeView(Landroid/view/View;)V

    .line 1261
    :cond_0
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterView:Landroid/view/View;

    .line 1262
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->dealAddFooterView()V

    return-void

    .line 1264
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "footerView must be implementes IFooterCallBack!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCustomHeaderView(Landroid/view/View;)V
    .locals 1

    .line 1240
    instance-of v0, p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    if-eqz v0, :cond_1

    .line 1241
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1242
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->removeView(Landroid/view/View;)V

    .line 1244
    :cond_0
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    .line 1245
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->dealAddHeaderView()V

    return-void

    .line 1247
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "headerView must be implementes IHeaderCallBack!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setDampingRatio(F)V
    .locals 0

    .line 1202
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->OFFSET_RADIO:F

    return-void
.end method

.method public setFooterBackGroundColor(I)V
    .locals 1

    .line 1345
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setFooterCallBack(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;)V
    .locals 0

    .line 1193
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    return-void
.end method

.method public setHeadMoveLargestDistence(I)V
    .locals 1

    if-gtz p1, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 579
    div-int/lit8 p1, p1, 0x3

    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeadMoveDistence:I

    goto :goto_0

    .line 581
    :cond_0
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeadMoveDistence:I

    .line 583
    :goto_0
    iget p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeadMoveDistence:I

    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderViewHeight:I

    if-gt p1, v0, :cond_1

    add-int/lit8 p1, v0, 0x1

    :cond_1
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeadMoveDistence:I

    return-void
.end method

.method public setHeaderBackgroundColor(I)V
    .locals 1

    .line 1337
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public setHideFooterWhenComplete(Z)V
    .locals 1

    .line 1222
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setHideFooterWhenComplete(Z)V

    return-void
.end method

.method public setLoadComplete(Z)V
    .locals 2

    .line 977
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHasLoadComplete:Z

    .line 978
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 980
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    goto :goto_0

    .line 982
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    :goto_0
    const/4 v0, 0x1

    .line 984
    iget v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->SCROLLBACK_DURATION:I

    invoke-direct {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->stopLoadMore(ZI)V

    if-nez p1, :cond_1

    .line 985
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mFooterCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;

    if-eqz v0, :cond_1

    .line 986
    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;->onStateRefreshing()V

    .line 990
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setLoadComplete(Z)V

    return-void
.end method

.method public setMoveFootWhenDisablePullLoadMore(Z)V
    .locals 0

    .line 722
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCanMoveFooterWhenDisablePullLoadMore:Z

    return-void
.end method

.method public setMoveForHorizontal(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isForHorizontalMove:Z

    return-void
.end method

.method public setMoveHeadWhenDisablePullRefresh(Z)V
    .locals 0

    .line 713
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mCanMoveHeaderWhenDisablePullRefresh:Z

    return-void
.end method

.method public setOnAbsListViewScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    .line 1074
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setOnAbsListViewScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public setOnBottomLoadMoreTime(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnBottomLoadMoreTime;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setOnBottomLoadMoreTime(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnBottomLoadMoreTime;)V

    return-void
.end method

.method public setOnRecyclerViewScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .locals 1

    .line 1152
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setOnRecyclerViewScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public setOnTopRefreshTime(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnTopRefreshTime;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setOnTopRefreshTime(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/listener/OnTopRefreshTime;)V

    return-void
.end method

.method public setPinnedContent(Z)V
    .locals 0

    .line 1231
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mIsPinnedContentWhenRefreshing:Z

    return-void
.end method

.method public setPinnedTime(I)V
    .locals 1

    .line 1212
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPinnedTime:I

    .line 1213
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setPinnedTime(I)V

    return-void
.end method

.method public setPreLoadCount(I)V
    .locals 1

    .line 1161
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setPreLoadCount(I)V

    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 1

    .line 612
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullLoad:Z

    .line 613
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->needAddFooterView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->checkPullLoadEnable()V

    goto :goto_0

    .line 616
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setEnablePullLoad(Z)V

    :goto_0
    return-void
.end method

.method public setPullRefreshEnable(Z)V
    .locals 0

    .line 634
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullRefresh:Z

    .line 635
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->checkPullRefreshEnable()V

    return-void
.end method

.method public setScrollBackDuration(I)V
    .locals 0

    .line 1005
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->SCROLLBACK_DURATION:I

    return-void
.end method

.method public setSilenceLoadMore()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setSilenceLoadMore(Z)V

    const/4 v0, 0x0

    .line 166
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setPullLoadEnable(Z)V

    return-void
.end method

.method public setSilenceLoadMore(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 176
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setSilenceLoadMore(Z)V

    .line 177
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setPullLoadEnable(Z)V

    goto :goto_0

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setSilenceLoadMore(Z)V

    :goto_0
    return-void
.end method

.method public setXRefreshViewListener(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;)V
    .locals 1

    .line 1165
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    .line 1166
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->setXRefreshViewListener(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;)V

    return-void
.end method

.method public startRefresh()V
    .locals 4

    .line 794
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mEnablePullRefresh:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v0, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->isLoading()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 797
    :cond_0
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mLayoutReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 798
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mNeedToRefresh:Z

    .line 799
    iget v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderViewHeight:I

    new-array v3, v1, [I

    aput v0, v3, v0

    invoke-direct {p0, v0, v2, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->updateHeaderHeight(II[I)V

    .line 800
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    .line 801
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    if-eqz v1, :cond_1

    .line 802
    invoke-interface {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onRefresh()V

    .line 803
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRefreshViewListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;

    invoke-interface {v1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$XRefreshViewListener;->onRefresh(Z)V

    .line 805
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mContentView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->scrollToTop()V

    goto :goto_0

    .line 807
    :cond_2
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mNeedToRefresh:Z

    :cond_3
    :goto_0
    return-void
.end method

.method public startScroll(II)V
    .locals 6

    .line 1023
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mScroller:Landroid/widget/Scroller;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHolder:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;

    iget v2, v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    const/4 v1, 0x0

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1024
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mRunnable:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/ScrollRunner;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopLoadMore()V
    .locals 1

    const/4 v0, 0x1

    .line 913
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->stopLoadMore(Z)V

    return-void
.end method

.method public stopLoadMore(Z)V
    .locals 1

    .line 922
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_FINISHED:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    .line 923
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->SCROLLBACK_DURATION:I

    invoke-direct {p0, p1, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->stopLoadMore(ZI)V

    return-void
.end method

.method public stopRefresh()V
    .locals 1

    const/4 v0, 0x1

    .line 853
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->stopRefresh(Z)V

    return-void
.end method

.method public stopRefresh(Z)V
    .locals 2

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRefresh mPullRefreshing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 861
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 862
    iput-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mStopingRefresh:Z

    .line 863
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mHeaderCallBack:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;->onStateFinish(Z)V

    .line 864
    sget-object p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mState:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    .line 865
    new-instance p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$2;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$2;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPinnedTime:I

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
