.class public Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;
.super Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;
.source "LinearEntrust.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 2

    .line 68
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 70
    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 72
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v1

    if-ne p2, p3, :cond_0

    .line 73
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 75
    :cond_0
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 76
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 77
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-virtual {p4}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result p3

    sub-int/2addr p3, v1

    if-ne p2, p3, :cond_2

    .line 81
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 83
    :cond_2
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 84
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 85
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 8

    .line 24
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p3

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 26
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 33
    :cond_0
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 34
    invoke-virtual {p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_2

    .line 36
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 37
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 39
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->topBottom:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 41
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v5

    .line 42
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v6

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v6, v7

    .line 43
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v1, v4

    float-to-int v1, v1

    .line 44
    iget v4, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->topBottom:I

    add-int/2addr v4, v1

    .line 45
    iget-object v7, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v5, v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 46
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    add-int/lit8 v1, v0, -0x1

    if-ge v2, v1, :cond_2

    .line 50
    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 53
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v4

    add-int/2addr v4, v3

    iget v5, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->leftRight:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    .line 55
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    float-to-int v4, v5

    .line 56
    iget v5, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->leftRight:I

    add-int/2addr v5, v4

    .line 57
    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v6

    .line 58
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v7

    invoke-virtual {p3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v7, v1

    .line 59
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4, v6, v5, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 60
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/customview/LinearEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method
