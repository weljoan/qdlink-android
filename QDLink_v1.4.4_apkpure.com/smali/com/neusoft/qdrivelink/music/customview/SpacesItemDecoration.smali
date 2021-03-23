.class public Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SpacesItemDecoration.java"


# instance fields
.field private leftRight:I

.field private mColor:I

.field private mEntrust:Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;

.field private topBottom:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 22
    iput p1, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->leftRight:I

    .line 23
    iput p2, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->topBottom:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;-><init>(II)V

    .line 28
    iput p3, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mColor:I

    return-void
.end method

.method private getEntrust(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;
    .locals 3

    .line 51
    instance-of v0, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v0, :cond_0

    .line 52
    new-instance p1, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;

    iget v0, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->leftRight:I

    iget v1, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->topBottom:I

    iget v2, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mColor:I

    invoke-direct {p1, v0, v1, v2}, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;-><init>(III)V

    goto :goto_0

    .line 53
    :cond_0
    instance-of p1, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p1, :cond_1

    .line 54
    new-instance p1, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;

    iget v0, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->leftRight:I

    iget v1, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->topBottom:I

    iget v2, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mColor:I

    invoke-direct {p1, v0, v1, v2}, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;-><init>(III)V

    goto :goto_0

    .line 56
    :cond_1
    new-instance p1, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;

    iget v0, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->leftRight:I

    iget v1, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->topBottom:I

    iget v2, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mColor:I

    invoke-direct {p1, v0, v1, v2}, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;-><init>(III)V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mEntrust:Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;

    if-nez v0, :cond_0

    .line 43
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->getEntrust(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mEntrust:Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mEntrust:Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mEntrust:Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;

    if-nez v0, :cond_0

    .line 34
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->getEntrust(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mEntrust:Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;->mEntrust:Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;

    invoke-virtual {v0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 37
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    return-void
.end method
