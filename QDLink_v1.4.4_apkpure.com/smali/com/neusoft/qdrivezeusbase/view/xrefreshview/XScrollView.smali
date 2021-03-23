.class public Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;
.super Landroid/widget/ScrollView;
.source "XScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;
    }
.end annotation


# instance fields
.field private inTouch:Z

.field private lastT:I

.field private lastY:F

.field private mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

.field private mRunnable:Ljava/lang/Runnable;

.field private mScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

.field private mTouchSlop:I

.field private onScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 21
    invoke-direct {p0, p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->inTouch:Z

    .line 15
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->lastT:I

    .line 62
    new-instance p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)V

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->inTouch:Z

    .line 15
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->lastT:I

    .line 62
    new-instance p1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)V

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mRunnable:Ljava/lang/Runnable;

    .line 26
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mTouchSlop:I

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->lastT:I

    return p0
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;I)I
    .locals 0

    .line 9
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->lastT:I

    return p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Z
    .locals 0

    .line 9
    iget-boolean p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->inTouch:Z

    return p0
.end method

.method static synthetic access$102(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->inTouch:Z

    return p1
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Z
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->isBottom()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->onScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)F
    .locals 0

    .line 9
    iget p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->lastY:F

    return p0
.end method

.method static synthetic access$502(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;F)F
    .locals 0

    .line 9
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->lastY:F

    return p1
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)I
    .locals 0

    .line 9
    iget p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mTouchSlop:I

    return p0
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Ljava/lang/Runnable;
    .locals 0

    .line 9
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method private isBottom()Z
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->getScrollY()I

    move-result v0

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->computeVerticalScrollRange()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 3

    .line 31
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 32
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->onScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->inTouch:Z

    if-eqz v1, :cond_1

    if-eq p2, p4, :cond_3

    .line 38
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->isBottom()Z

    move-result v1

    const/4 v2, 0x1

    invoke-interface {v0, p0, v2, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;->onScrollStateChanged(Landroid/widget/ScrollView;IZ)V

    .line 39
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    if-eqz v0, :cond_3

    .line 40
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->isBottom()Z

    move-result v1

    invoke-interface {v0, p0, v2, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;->onScrollStateChanged(Landroid/widget/ScrollView;IZ)V

    goto :goto_0

    :cond_1
    if-eq p2, p4, :cond_3

    .line 46
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->isBottom()Z

    move-result v1

    const/4 v2, 0x2

    invoke-interface {v0, p0, v2, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;->onScrollStateChanged(Landroid/widget/ScrollView;IZ)V

    .line 47
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    if-eqz v0, :cond_2

    .line 48
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->isBottom()Z

    move-result v1

    invoke-interface {v0, p0, v2, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;->onScrollStateChanged(Landroid/widget/ScrollView;IZ)V

    .line 51
    :cond_2
    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->lastT:I

    .line 52
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 53
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x14

    invoke-virtual {p0, v0, v1, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->onScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;->onScroll(IIII)V

    .line 57
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    if-eqz v0, :cond_4

    .line 58
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;->onScroll(IIII)V

    :cond_4
    return-void
.end method

.method protected setOnScrollListener(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    .line 81
    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->onScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    .line 82
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mParent:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    new-instance p2, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$2;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)V

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->addTouchLifeCycle(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$TouchLifeCycle;)V

    return-void
.end method

.method public setOnScrollListener(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;)V
    .locals 0

    .line 113
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->mScrollListener:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    return-void
.end method
