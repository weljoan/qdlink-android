.class public Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;
.super Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;
.source "StaggeredGridEntrust.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;-><init>(III)V

    return-void
.end method


# virtual methods
.method getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 128
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    .line 129
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;

    .line 130
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 131
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result p3

    .line 132
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 134
    :goto_0
    invoke-virtual {p4}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result p4

    if-ne p4, v2, :cond_3

    .line 135
    invoke-virtual {p0, p2, p3, v1}, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->getSpanGroupIndex(III)I

    move-result p2

    if-nez p2, :cond_1

    .line 136
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 138
    :cond_1
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 140
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 141
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 142
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 144
    :cond_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    sub-int p2, p3, p2

    int-to-float p2, p2

    int-to-float p4, p3

    div-float/2addr p2, p4

    iget v0, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->leftRight:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 145
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->leftRight:I

    int-to-float p2, p2

    add-int/2addr p3, v2

    int-to-float p3, p3

    mul-float p2, p2, p3

    div-float/2addr p2, p4

    iget p3, p1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p0, p2, p3, v1}, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->getSpanGroupIndex(III)I

    move-result p2

    if-nez p2, :cond_4

    .line 149
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 151
    :cond_4
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 153
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->isFullSpan()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 154
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 155
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 157
    :cond_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    sub-int p2, p3, p2

    int-to-float p2, p2

    int-to-float p4, p3

    div-float/2addr p2, p4

    iget v0, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->topBottom:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 158
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/StaggeredGridEntrust;->topBottom:I

    int-to-float p2, p2

    add-int/2addr p3, v2

    int-to-float p3, p3

    mul-float p2, p2, p3

    div-float/2addr p2, p4

    iget p3, p1, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_1
    return-void
.end method

.method public getSpanGroupIndex(III)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    add-int/2addr v2, p3

    if-ne v2, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    if-le v2, p2, :cond_1

    add-int/lit8 v3, v3, 0x1

    move v2, p3

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v2, p3

    if-le v2, p2, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    return v3
.end method

.method onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    return-void
.end method
