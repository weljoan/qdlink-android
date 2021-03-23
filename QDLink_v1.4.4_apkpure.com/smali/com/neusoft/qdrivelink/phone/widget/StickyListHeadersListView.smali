.class public Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;
.super Landroid/widget/ListView;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field private adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

.field private areHeadersSticky:Z

.field private clipToPaddingHasBeenSet:Z

.field private clippingToPadding:Z

.field private currentHeaderId:Ljava/lang/Long;

.field private dataChanged:Z

.field private dataSetChangedObserver:Landroid/database/DataSetObserver;

.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerHeight:I

.field private drawSelectorOnTop:Z

.field private drawingListUnderStickyHeader:Z

.field private footerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

.field private headerPosition:I

.field private mFirstVisiblePositon:I

.field private mLastVisiblePostion:I

.field private mVisibleCount:I

.field private multiChoiceModeListenerDelegate:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private multiChoiceModeListenerWrapper:Landroid/widget/AbsListView$MultiChoiceModeListener;

.field private offsetToSetWhenAdapterIsReady:I

.field private onHeaderClickListener:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$OnHeaderClickListener;

.field private onItemLongClickListenerDelegate:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private onItemLongClickListenerWrapper:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private positionToSetWhenAdapterIsReady:I

.field private scrollListener:Landroid/widget/AbsListView$OnScrollListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010074

    .line 104
    invoke-direct {p0, p1, p2, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 109
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->areHeadersSticky:Z

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->currentHeaderId:Ljava/lang/Long;

    .line 58
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->drawingListUnderStickyHeader:Z

    const/4 v2, 0x0

    .line 59
    iput-boolean v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dataChanged:Z

    .line 63
    iput v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->positionToSetWhenAdapterIsReady:I

    .line 64
    iput v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->offsetToSetWhenAdapterIsReady:I

    .line 66
    iput v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mFirstVisiblePositon:I

    .line 67
    iput v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mLastVisiblePostion:I

    .line 68
    iput v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mVisibleCount:I

    .line 70
    new-instance v3, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$1;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$1;-><init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)V

    iput-object v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dataSetChangedObserver:Landroid/database/DataSetObserver;

    .line 84
    new-instance v3, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$2;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$2;-><init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)V

    iput-object v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->onItemLongClickListenerWrapper:Landroid/widget/AdapterView$OnItemLongClickListener;

    .line 110
    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 113
    invoke-super {p0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 114
    invoke-super {p0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 115
    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setVerticalFadingEdgeEnabled(Z)V

    new-array v0, v0, [I

    const v1, 0x10100fc

    aput v1, v0, v2

    .line 119
    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 121
    invoke-virtual {p1, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->drawSelectorOnTop:Z

    .line 122
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 124
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_0

    .line 125
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setMultiChoiceModeListenerWrapper()V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;Z)Z
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dataChanged:Z

    return p1
.end method

.method static synthetic access$102(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->currentHeaderId:Ljava/lang/Long;

    return-object p1
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AdapterView$OnItemLongClickListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->onItemLongClickListenerDelegate:Landroid/widget/AdapterView$OnItemLongClickListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    return-object p0
.end method

.method static synthetic access$501(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)I
    .locals 0

    .line 38
    invoke-super {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result p0

    return p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;I)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->scrollChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->multiChoiceModeListenerDelegate:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-object p0
.end method

.method private getFixedFirstVisibleItem(I)I
    .locals 3

    .line 498
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 502
    :goto_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 503
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    if-ltz v2, :cond_1

    add-int/2addr p1, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 511
    :cond_2
    :goto_1
    iget-boolean v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clippingToPadding:Z

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingTop()I

    move-result v1

    if-lez v1, :cond_3

    .line 512
    invoke-super {p0, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    if-lez v0, :cond_3

    if-lez p1, :cond_3

    add-int/lit8 p1, p1, -0x1

    :cond_3
    return p1
.end method

.method private isCalledFromSuper()Z
    .locals 3

    .line 680
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x5

    aget-object v0, v0, v1

    .line 681
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.widget.AbsListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 682
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.widget.ListView"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 683
    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.widget.FastScroller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

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
    return v0
.end method

.method private scrollChanged(I)V
    .locals 13

    .line 346
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v0, :cond_1a

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    if-nez v1, :cond_0

    goto/16 :goto_a

    .line 350
    :cond_0
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getCount()I

    move-result v0

    if-eqz v0, :cond_19

    .line 351
    iget-boolean v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->areHeadersSticky:Z

    if-nez v1, :cond_1

    goto/16 :goto_9

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v1

    .line 357
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getFixedFirstVisibleItem(I)I

    move-result p1

    sub-int/2addr p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz p1, :cond_16

    const/4 v4, 0x1

    sub-int/2addr v0, v4

    if-le p1, v0, :cond_2

    goto/16 :goto_8

    .line 372
    :cond_2
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getHeaderId(I)J

    move-result-wide v5

    .line 373
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->currentHeaderId:Ljava/lang/Long;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v0, v7, v5

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 374
    :cond_4
    :goto_0
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->headerPosition:I

    .line 375
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    iget v7, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->headerPosition:I

    iget-object v8, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    .line 376
    invoke-virtual {v8}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->removeHeader()Landroid/view/View;

    move-result-object v8

    iget-object v9, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    .line 375
    invoke-virtual {v0, v7, v8, v9}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 377
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v7, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v7, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setHeader(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 381
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->currentHeaderId:Ljava/lang/Long;

    .line 383
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getChildCount()I

    move-result v5

    if-lez v5, :cond_15

    const v6, 0x7fffffff

    move-object v6, v2

    const/4 v2, 0x0

    const/4 v7, 0x0

    const v8, 0x7fffffff

    :goto_2
    if-ge v2, v5, :cond_c

    .line 391
    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 392
    iget-object v10, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->footerViews:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    .line 393
    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    const/4 v10, 0x1

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    .line 396
    :goto_3
    iget-boolean v11, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clippingToPadding:Z

    if-eqz v11, :cond_6

    .line 397
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    goto :goto_4

    .line 399
    :cond_6
    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v11

    :goto_4
    if-gez v11, :cond_7

    goto :goto_5

    :cond_7
    if-eqz v6, :cond_a

    if-nez v7, :cond_8

    .line 406
    iget-object v12, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    .line 408
    invoke-virtual {v12, v6}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->isHeader(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_a

    :cond_8
    if-nez v10, :cond_9

    iget-object v12, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    .line 409
    invoke-virtual {v12, v9}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->isHeader(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_b

    :cond_9
    if-ge v11, v8, :cond_b

    :cond_a
    move-object v6, v9

    move v7, v10

    move v8, v11

    :cond_b
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 416
    :cond_c
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getHeaderHeight()I

    move-result v2

    if-eqz v6, :cond_11

    if-nez v7, :cond_d

    .line 418
    iget-object v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    .line 419
    invoke-virtual {v4, v6}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->isHeader(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_11

    :cond_d
    if-ne p1, v1, :cond_e

    .line 422
    invoke-virtual {p0, v3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    if-lez p1, :cond_e

    iget-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clippingToPadding:Z

    if-nez p1, :cond_e

    goto :goto_7

    .line 425
    :cond_e
    iget-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clippingToPadding:Z

    if-eqz p1, :cond_10

    .line 426
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result p1

    .line 427
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v2

    .line 426
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 428
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingTop()I

    move-result v1

    if-ge p1, v1, :cond_f

    .line 429
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingTop()I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_6

    :cond_f
    move v3, p1

    goto :goto_7

    .line 432
    :cond_10
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-gez p1, :cond_f

    goto :goto_6

    .line 440
    :cond_11
    iget-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clippingToPadding:Z

    if-eqz p1, :cond_12

    .line 441
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingTop()I

    move-result p1

    add-int v3, v2, p1

    goto :goto_7

    :cond_12
    :goto_6
    move v3, v2

    .line 444
    :goto_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getHeaderBottomPosition()I

    move-result p1

    if-ne p1, v3, :cond_13

    if-eqz v0, :cond_14

    .line 446
    :cond_13
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {p1, v3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setHeaderBottomPosition(I)V

    .line 448
    :cond_14
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->updateHeaderVisibilities()V

    :cond_15
    return-void

    .line 361
    :cond_16
    :goto_8
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->currentHeaderId:Ljava/lang/Long;

    if-nez p1, :cond_17

    iget-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dataChanged:Z

    if-eqz p1, :cond_18

    .line 362
    :cond_17
    iput-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->currentHeaderId:Ljava/lang/Long;

    .line 363
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->removeHeader()Landroid/view/View;

    .line 364
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 365
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->invalidate()V

    .line 366
    iput-boolean v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dataChanged:Z

    :cond_18
    return-void

    .line 352
    :cond_19
    :goto_9
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->removeHeader()Landroid/view/View;

    :cond_1a
    :goto_a
    return-void
.end method

.method private setMultiChoiceModeListenerWrapper()V
    .locals 1

    .line 558
    new-instance v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;-><init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->multiChoiceModeListenerWrapper:Landroid/widget/AbsListView$MultiChoiceModeListener;

    return-void
.end method

.method private updateHeaderVisibilities()V
    .locals 7

    .line 479
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clippingToPadding:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 480
    :goto_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getChildCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    .line 482
    invoke-virtual {p0, v3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 483
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v5, v4}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->isHeader(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 484
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v5

    if-ge v5, v0, :cond_1

    .line 485
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    .line 486
    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 489
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_2

    .line 490
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public NextSection()V
    .locals 5

    .line 848
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sectionPosMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sectionPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 849
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sectionPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const v1, 0x7fffffff

    .line 851
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 852
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 853
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 854
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "val---next"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "nextIndex--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "mFirstVisiblePositon"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mFirstVisiblePositon:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 855
    iget v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mLastVisiblePostion:I

    if-le v2, v3, :cond_0

    if-ge v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 859
    :cond_1
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setSelection(I)V

    :cond_2
    return-void
.end method

.method public PageDown()V
    .locals 2

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pagedown mLsat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mLastVisiblePostion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 825
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mLastVisiblePostion:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setSelection(I)V

    return-void
.end method

.method public PageUp()V
    .locals 2

    .line 819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pageup mLsat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mFirstVisiblePositon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 820
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mFirstVisiblePositon:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mLastVisiblePostion:I

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setSelection(I)V

    return-void
.end method

.method public PreSection()V
    .locals 5

    .line 832
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sectionPosMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sectionPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 833
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->sectionPosMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 835
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 836
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 837
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 838
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "val---pre"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "preIndex--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 839
    iget v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mFirstVisiblePositon:I

    if-ge v2, v3, :cond_0

    if-le v2, v1, :cond_0

    move v1, v2

    goto :goto_0

    .line 843
    :cond_1
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setSelection(I)V

    :cond_2
    return-void
.end method

.method public addFooterView(Landroid/view/View;)V
    .locals 1

    .line 462
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 463
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->footerViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->footerViews:Ljava/util/ArrayList;

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->footerViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 305
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 306
    new-instance v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$3;-><init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)V

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->post(Ljava/lang/Runnable;)Z

    .line 314
    :cond_0
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->drawingListUnderStickyHeader:Z

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getHeaderBottomPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 316
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 315
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 318
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getAreHeadersSticky()Z
    .locals 1

    .line 240
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->areHeadersSticky:Z

    return v0
.end method

.method public getCheckedItemPosition()I
    .locals 2

    .line 786
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v0

    .line 787
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 788
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateAdapterPosition(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public getCheckedItemPositions()Landroid/util/SparseBooleanArray;
    .locals 5

    .line 795
    invoke-super {p0}, Landroid/widget/ListView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    .line 796
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 797
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    const/4 v2, 0x0

    .line 798
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 799
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result v3

    .line 800
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 801
    invoke-virtual {v1, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    return-object v0
.end method

.method protected getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;
    .locals 4

    .line 670
    invoke-super {p0}, Landroid/widget/ListView;->getContextMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 671
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    iget v2, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result v1

    iput v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 672
    iget v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    return-object v0
.end method

.method public getFirstVisiblePosition()I
    .locals 2

    .line 770
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-super {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateAdapterPosition(I)I

    move-result v0

    return v0

    .line 773
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getItemAtPosition(I)Ljava/lang/Object;
    .locals 1

    .line 650
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    invoke-super {p0, p1}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 653
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    .line 654
    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public getItemIdAtPosition(I)J
    .locals 2

    .line 660
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 661
    invoke-super {p0, p1}, Landroid/widget/ListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    return-wide v0

    .line 663
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v0, :cond_2

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    .line 664
    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v0

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public getLastVisiblePosition()I
    .locals 2

    .line 778
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-super {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateAdapterPosition(I)I

    move-result v0

    return v0

    .line 781
    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    return v0
.end method

.method public getWrappedAdapter()Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getDelegate()Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDrawingListUnderStickyHeader()Z
    .locals 1

    .line 544
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->drawingListUnderStickyHeader:Z

    return v0
.end method

.method public isItemChecked(I)Z
    .locals 1

    .line 701
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateAdapterPosition(I)I

    move-result p1

    .line 704
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result p1

    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .line 132
    invoke-super {p0}, Landroid/widget/ListView;->onAttachedToWindow()V

    .line 133
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    if-nez v0, :cond_1

    .line 134
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 135
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 136
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 138
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    .line 139
    invoke-virtual {p0, v3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setVisibility(I)V

    .line 141
    new-instance v4, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    .line 142
    iget-object v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 143
    iget-object v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    iget-boolean v5, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->drawSelectorOnTop:Z

    invoke-virtual {v4, v5}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setDrawSelectorOnTop(Z)V

    .line 144
    iget-object v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v4, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setVisibility(I)V

    .line 146
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 147
    iget-boolean v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clippingToPadding:Z

    if-eqz v4, :cond_0

    .line 148
    iget-object v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingTop()I

    move-result v5

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v4, v3, v5, v3, v6}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setPadding(IIII)V

    .line 149
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getPaddingRight()I

    move-result v5

    invoke-virtual {p0, v4, v3, v5, v3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setPadding(IIII)V

    .line 152
    :cond_0
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 155
    invoke-virtual {p0, v3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v3, p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->addView(Landroid/view/View;)V

    .line 158
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    .line 159
    invoke-super {p0, v3}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 161
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v3, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 162
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8

    .line 535
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->isHeader(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->onHeaderClickListener:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v1, :cond_0

    .line 537
    iget v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->headerPosition:I

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->currentHeaderId:Ljava/lang/Long;

    .line 538
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    .line 537
    invoke-interface/range {v1 .. v7}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;Landroid/view/View;IJZ)V

    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 332
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mFirstVisiblePositon:I

    .line 333
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->mLastVisiblePostion:I

    .line 335
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    .line 339
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x8

    if-lt p1, p3, :cond_1

    .line 340
    invoke-direct {p0, p2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->scrollChanged(I)V

    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    .line 523
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    .line 524
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 8

    .line 607
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    .line 608
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v2

    .line 609
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    sub-int v4, p2, v2

    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemViewType(I)I

    move-result v3

    .line 611
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    iget v5, v5, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-ne v3, v5, :cond_1

    .line 612
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->onHeaderClickListener:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v0, v4}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result v3

    .line 615
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->onHeaderClickListener:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$OnHeaderClickListener;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    invoke-interface/range {v0 .. v6}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;Landroid/view/View;IJZ)V

    return v7

    :cond_0
    return v6

    .line 620
    :cond_1
    iget-object v5, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    iget v5, v5, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerViewType:I

    if-ne v3, v5, :cond_2

    return v6

    :cond_2
    if-eqz v1, :cond_5

    .line 624
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getCount()I

    move-result v3

    if-lt p2, v3, :cond_3

    .line 625
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getHeaderCount()I

    move-result v2

    sub-int v0, p2, v2

    :goto_0
    move v3, v0

    goto :goto_1

    :cond_3
    if-lt p2, v2, :cond_4

    .line 627
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v0, v4}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_4
    move v3, p2

    :goto_1
    move-object v0, v1

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p3

    .line 631
    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return v7

    :cond_5
    return v6
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 2

    .line 471
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 473
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->footerViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return v0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .line 37
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    .line 250
    :cond_0
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clipToPaddingHasBeenSet:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clippingToPadding:Z

    :cond_1
    if-eqz p1, :cond_3

    .line 253
    instance-of v0, p1, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    if-eqz v0, :cond_2

    goto :goto_0

    .line 254
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Adapter must implement StickyListHeadersAdapter"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 259
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dataSetChangedObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->unregisterInternalDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 260
    iput-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    :cond_4
    if-eqz p1, :cond_6

    .line 264
    instance-of v0, p1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_5

    .line 265
    new-instance v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersSectionIndexerAdapterWrapper;

    .line 266
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast p1, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-direct {v0, v2, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersSectionIndexerAdapterWrapper;-><init>(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    goto :goto_1

    .line 268
    :cond_5
    new-instance v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    .line 269
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast p1, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-direct {v0, v2, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;-><init>(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    .line 271
    :goto_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 272
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    iget v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dividerHeight:I

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->setDividerHeight(I)V

    .line 273
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dataSetChangedObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->registerInternalDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 275
    iget p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->positionToSetWhenAdapterIsReady:I

    iget v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->offsetToSetWhenAdapterIsReady:I

    invoke-virtual {p0, p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setSelectionFromTop(II)V

    .line 278
    :cond_6
    iput-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->currentHeaderId:Ljava/lang/Long;

    .line 279
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    if-eqz p1, :cond_7

    .line 280
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->removeHeader()Landroid/view/View;

    .line 282
    :cond_7
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 283
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->invalidate()V

    .line 285
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->areHeadersSticky:Z

    if-eq v0, p1, :cond_1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 232
    invoke-super {p0, v0}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->requestLayout()V

    .line 235
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->areHeadersSticky:Z

    :cond_1
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 172
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 0

    .line 323
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 324
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clippingToPadding:Z

    const/4 p1, 0x1

    .line 325
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->clipToPaddingHasBeenSet:Z

    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 200
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->divider:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 209
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->requestLayout()V

    .line 210
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->invalidate()V

    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1

    .line 216
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->dividerHeight:I

    .line 217
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->setDividerHeight(I)V

    .line 219
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->requestLayout()V

    .line 220
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 1

    .line 178
    invoke-super {p0, p1}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 179
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->drawSelectorOnTop:Z

    .line 180
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    if-eqz p1, :cond_0

    .line 181
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->drawSelectorOnTop:Z

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setDrawSelectorOnTop(Z)V

    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 0

    .line 549
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->drawingListUnderStickyHeader:Z

    return-void
.end method

.method public setItemChecked(IZ)V
    .locals 2

    .line 688
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v0

    if-nez v0, :cond_0

    .line 689
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateAdapterPosition(I)I

    move-result p1

    .line 692
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemViewType(I)I

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    iget v1, v1, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerViewType:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    iget v1, v1, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    if-eq v0, v1, :cond_1

    .line 695
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1
    return-void
.end method

.method public setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->multiChoiceModeListenerDelegate:Landroid/widget/AbsListView$MultiChoiceModeListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 812
    invoke-super {p0, p1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    goto :goto_0

    .line 814
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->multiChoiceModeListenerWrapper:Landroid/widget/AbsListView$MultiChoiceModeListener;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    :goto_0
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$OnHeaderClickListener;)V
    .locals 0

    .line 530
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->onHeaderClickListener:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$OnHeaderClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
    .locals 0

    .line 640
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->onItemLongClickListenerDelegate:Landroid/widget/AdapterView$OnItemLongClickListener;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 642
    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_0

    .line 644
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->onItemLongClickListenerWrapper:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-super {p0, p1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    :goto_0
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->scrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    const/4 v0, 0x0

    .line 730
    invoke-virtual {p0, p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setSelection2(I)V
    .locals 1

    const/16 v0, 0x64

    .line 726
    invoke-virtual {p0, p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setSelectionFromTop(II)V
    .locals 1

    .line 709
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v0

    if-nez v0, :cond_2

    .line 710
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-nez v0, :cond_0

    .line 711
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->positionToSetWhenAdapterIsReady:I

    .line 712
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->offsetToSetWhenAdapterIsReady:I

    return-void

    .line 715
    :cond_0
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->areHeadersSticky:Z

    if-eqz v0, :cond_1

    .line 716
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 717
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 720
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateAdapterPosition(I)I

    move-result p1

    .line 722
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 454
    invoke-super {p0, p1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 455
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 456
    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setSelector(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setVerticalFadingEdgeEnabled(Z)V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->areHeadersSticky:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 192
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    goto :goto_0

    .line 194
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVerticalFadingEdgeEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setVisibility(I)V

    .line 293
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setVisibility(I)V

    return-void
.end method

.method public smoothScrollToPosition(I)V
    .locals 1

    const/4 v0, 0x0

    .line 735
    invoke-virtual {p0, p1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->smoothScrollToPositionFromTop(II)V

    return-void
.end method

.method public smoothScrollToPosition(II)V
    .locals 0

    const/4 p2, 0x0

    .line 741
    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->smoothScrollToPositionFromTop(II)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(II)V
    .locals 1

    const/16 v0, 0x1f4

    .line 746
    invoke-virtual {p0, p1, p2, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method

.method public smoothScrollToPositionFromTop(III)V
    .locals 1

    .line 752
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->isCalledFromSuper()Z

    move-result v0

    if-nez v0, :cond_2

    .line 753
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    if-nez v0, :cond_0

    .line 754
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->positionToSetWhenAdapterIsReady:I

    .line 755
    iput p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->offsetToSetWhenAdapterIsReady:I

    return-void

    .line 758
    :cond_0
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->areHeadersSticky:Z

    if-eqz v0, :cond_1

    .line 759
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->hasHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->frame:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getHeaderHeight()I

    move-result v0

    add-int/2addr p2, v0

    .line 763
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->adapter:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateAdapterPosition(I)I

    move-result p1

    .line 765
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ListView;->smoothScrollToPositionFromTop(III)V

    return-void
.end method
