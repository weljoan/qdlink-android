.class Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;
.super Landroid/widget/BaseAdapter;
.source "StickyListHeadersAdapterWrapper.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;


# static fields
.field private static final DIVIDER_POSITION:I = -0x2

.field private static final EXTRA_VIEW_TYPE_COUNT:I = 0x2

.field private static final HEADER_POSITION:I = -0x1

.field static final VIEW_TYPE_DIVIDER_OFFSET:I = 0x1

.field static final VIEW_TYPE_HEADER_OFFSET:I


# instance fields
.field private cachedCount:I

.field private final context:Landroid/content/Context;

.field private datasetObserver:Landroid/database/DataSetObserver;

.field final delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

.field private divider:Landroid/graphics/drawable/Drawable;

.field private dividerCount:I

.field private dividerHeight:I

.field dividerViewType:I

.field private headerCount:I

.field headerViewType:I

.field private headers:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private internalObservable:Landroid/database/DataSetObservable;

.field private positionMapping:Landroid/util/SparseIntArray;

.field private regularObservable:Landroid/database/DataSetObservable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;)V
    .locals 1

    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headers:Ljava/util/WeakHashMap;

    .line 43
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->cachedCount:I

    .line 50
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->internalObservable:Landroid/database/DataSetObservable;

    .line 51
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->regularObservable:Landroid/database/DataSetObservable;

    .line 53
    new-instance v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper$1;-><init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->datasetObserver:Landroid/database/DataSetObserver;

    .line 69
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->context:Landroid/content/Context;

    .line 70
    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    .line 71
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->datasetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p2, p1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;I)I
    .locals 0

    .line 29
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->cachedCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;)Landroid/database/DataSetObservable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->internalObservable:Landroid/database/DataSetObservable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;)Landroid/database/DataSetObservable;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->regularObservable:Landroid/database/DataSetObservable;

    return-object p0
.end method

.method private countHeadersAndUpdatePositionMapping()V
    .locals 10

    .line 136
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_2

    .line 139
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v2, v1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v2

    .line 140
    iget-object v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    const/4 v5, -0x1

    invoke-virtual {v4, v1, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 141
    iget-object v4, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v1}, Landroid/util/SparseIntArray;->put(II)V

    move-wide v3, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    .line 143
    iget-object v7, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v7, v6}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-eqz v9, :cond_0

    .line 146
    iget-object v3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    add-int v4, v6, v1

    add-int/2addr v4, v2

    invoke-virtual {v3, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    move-wide v3, v7

    goto :goto_1

    .line 150
    :cond_0
    iget-object v7, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    add-int v8, v6, v1

    add-int/2addr v8, v2

    const/4 v9, -0x2

    invoke-virtual {v7, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v2, v2, 0x1

    .line 154
    :goto_1
    iget-object v7, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    add-int v8, v6, v1

    add-int/2addr v8, v2

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 157
    :goto_2
    iput v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerCount:I

    .line 158
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerCount:I

    return-void
.end method

.method private makeDivider()Landroid/view/View;
    .locals 4

    .line 260
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 261
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->divider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 262
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerHeight:I

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 264
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getCount()I
    .locals 2

    .line 124
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->cachedCount:I

    if-gez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 126
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->countHeadersAndUpdatePositionMapping()V

    .line 127
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getCount()I

    move-result v0

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerCount:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->cachedCount:I

    .line 129
    :cond_0
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->cachedCount:I

    return v0
.end method

.method getDelegate()Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    return-object v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 276
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    .line 280
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method getHeaderCount()I
    .locals 1

    .line 162
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerCount:I

    return v0
.end method

.method public getHeaderId(I)J
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .line 167
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemViewType(I)I

    move-result v0

    .line 168
    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerViewType:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 172
    :cond_0
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    const-string v0, "wrapper!=null"

    .line 173
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const-string p1, "wrapper=null"

    .line 169
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 179
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemViewType(I)I

    move-result v0

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    if-ne v0, v1, :cond_0

    .line 180
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    .line 181
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0

    .line 183
    :cond_0
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    .line 184
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 213
    iget p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    return p1

    :cond_0
    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    .line 217
    iget p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerViewType:I

    return p1

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 238
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemViewType(I)I

    move-result v0

    .line 239
    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    if-ne v0, v1, :cond_0

    .line 240
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    .line 242
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    .line 241
    invoke-interface {v0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 243
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headers:Ljava/util/WeakHashMap;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 244
    :cond_0
    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerViewType:I

    if-ne v0, v1, :cond_2

    if-nez p2, :cond_1

    .line 247
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->makeDivider()Landroid/view/View;

    move-result-object p2

    :cond_1
    return-object p2

    .line 252
    :cond_2
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    invoke-interface {v0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x0

    iput v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    .line 226
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerViewType:I

    .line 228
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 4

    .line 93
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemViewType(I)I

    move-result v0

    .line 94
    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    .line 96
    :cond_0
    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerViewType:I

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    return v3

    .line 99
    :cond_1
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    .line 100
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->areAllItemsEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;->isEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :cond_3
    :goto_0
    return v2
.end method

.method isHeader(Landroid/view/View;)Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headers:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    check-cast v0, Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->regularObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method registerInternalDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->internalObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    return-void
.end method

.method setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->divider:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method setDividerHeight(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerHeight:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 301
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->delegate:Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method translateAdapterPosition(I)I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result p1

    return p1
.end method

.method translateListViewPosition(I)I
    .locals 2

    .line 197
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemViewType(I)I

    move-result v0

    .line 198
    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->headerViewType:I

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    .line 200
    :cond_0
    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->dividerViewType:I

    if-ne v0, v1, :cond_1

    .line 201
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1

    .line 203
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->positionMapping:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    return p1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->regularObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method

.method unregisterInternalDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->internalObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    return-void
.end method
