.class public Lcom/neusoft/qdrivelink/music/customview/GridEntrust;
.super Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;
.source "GridEntrust.java"


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecorationEntrust;-><init>(III)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    .line 115
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p4

    check-cast p4, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 116
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;

    .line 117
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 118
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p3

    .line 120
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 122
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p2

    if-nez p2, :cond_0

    .line 123
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 125
    :cond_0
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 127
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p2

    if-ne p2, p3, :cond_1

    .line 128
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 129
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    sub-int p2, p3, p2

    int-to-float p2, p2

    int-to-float p4, p3

    div-float/2addr p2, p4

    iget v0, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 132
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

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

    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {p4}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object p4

    invoke-virtual {p4, p2, p3}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result p2

    if-nez p2, :cond_3

    .line 136
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 138
    :cond_3
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 140
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanSize()I

    move-result p2

    if-ne p2, p3, :cond_4

    .line 141
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 142
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 144
    :cond_4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/GridLayoutManager$LayoutParams;->getSpanIndex()I

    move-result p2

    sub-int p2, p3, p2

    int-to-float p2, p2

    int-to-float p4, p3

    div-float/2addr p2, p4

    iget v0, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

    int-to-float v0, v0

    mul-float p2, p2, v0

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 145
    iget p2, p0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

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

    :goto_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 22
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 23
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v4

    .line 25
    iget-object v5, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getChildCount()I

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_8

    .line 29
    :cond_0
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v5

    .line 31
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v6

    .line 32
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getOrientation()I

    move-result v7

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-ne v7, v10, :cond_6

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_c

    .line 34
    invoke-virtual {v2, v7}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 36
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v12

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    int-to-float v13, v5

    mul-float v12, v12, v13

    add-int/lit8 v13, v5, 0x1

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    add-float/2addr v12, v13

    iget v13, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    int-to-float v13, v13

    sub-float/2addr v12, v13

    div-float/2addr v12, v8

    .line 38
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v13

    add-int/2addr v13, v10

    iget v14, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

    sub-int/2addr v13, v14

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    .line 40
    invoke-virtual {v2, v11}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v14

    .line 42
    invoke-virtual {v4, v14}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v15

    .line 44
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v9

    invoke-virtual {v4, v14, v9}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v9

    .line 46
    invoke-virtual {v3}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v8

    invoke-virtual {v8, v14, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    goto :goto_1

    :cond_1
    const/4 v8, 0x0

    :goto_1
    if-nez v8, :cond_2

    if-nez v9, :cond_2

    .line 49
    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v14

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v16

    invoke-virtual {v3, v11}, Landroidx/recyclerview/widget/GridLayoutManager;->getLeftDecorationWidth(Landroid/view/View;)I

    move-result v17

    sub-int v10, v16, v17

    move-object/from16 v16, v4

    .line 51
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v13

    float-to-int v4, v4

    move-object/from16 v17, v3

    iget v3, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

    sub-int/2addr v4, v3

    .line 52
    iget v3, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

    add-int/2addr v3, v4

    .line 53
    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v14, v4, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 54
    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_2
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    :goto_2
    add-int/2addr v9, v15

    if-ne v9, v5, :cond_3

    const/4 v2, 0x1

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    if-nez v2, :cond_5

    .line 60
    invoke-virtual {v11}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v12

    float-to-int v2, v2

    .line 61
    iget v3, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    add-int/2addr v3, v2

    .line 62
    invoke-virtual {v11}, Landroid/view/View;->getTop()I

    move-result v4

    if-nez v8, :cond_4

    int-to-float v4, v4

    sub-float/2addr v4, v13

    float-to-int v4, v4

    .line 66
    :cond_4
    invoke-virtual {v11}, Landroid/view/View;->getBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v13

    float-to-int v8, v8

    .line 67
    iget-object v9, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v9, v2, v4, v3, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 68
    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v2, p2

    move-object/from16 v4, v16

    move-object/from16 v3, v17

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v17, v3

    move-object/from16 v16, v4

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v6, :cond_c

    move-object/from16 v3, p2

    .line 73
    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    move-object/from16 v7, v17

    .line 75
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v8

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iget v10, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    sub-int/2addr v8, v10

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    .line 76
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getBottomDecorationHeight(Landroid/view/View;)I

    move-result v11

    add-int/2addr v10, v11

    int-to-float v10, v10

    int-to-float v11, v5

    mul-float v10, v10, v11

    add-int/lit8 v11, v5, 0x1

    int-to-float v11, v11

    div-float/2addr v10, v11

    iget v11, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->topBottom:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    .line 79
    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v12

    move-object/from16 v13, v16

    .line 81
    invoke-virtual {v13, v12}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanSize(I)I

    move-result v14

    .line 83
    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v15

    invoke-virtual {v13, v12, v15}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanIndex(II)I

    move-result v15

    .line 85
    invoke-virtual {v7}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanSizeLookup()Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    move-result-object v9

    invoke-virtual {v9, v12, v5}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;->getSpanGroupIndex(II)I

    move-result v9

    if-nez v9, :cond_7

    const/4 v9, 0x1

    goto :goto_5

    :cond_7
    const/4 v9, 0x0

    :goto_5
    if-nez v9, :cond_8

    if-nez v15, :cond_8

    .line 88
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v12, v8

    float-to-int v12, v12

    iget v11, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    sub-int/2addr v12, v11

    .line 89
    iget v11, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    add-int/2addr v11, v12

    .line 90
    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getRightDecorationWidth(Landroid/view/View;)I

    move-result v3

    .line 91
    invoke-virtual/range {p2 .. p2}, Landroidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v16

    invoke-virtual {v7, v4}, Landroidx/recyclerview/widget/GridLayoutManager;->getTopDecorationHeight(Landroid/view/View;)I

    move-result v17

    move/from16 v18, v6

    sub-int v6, v16, v17

    move-object/from16 v17, v7

    .line 92
    iget-object v7, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v12, v3, v11, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    iget-object v3, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_6

    :cond_8
    move/from16 v18, v6

    move-object/from16 v17, v7

    :goto_6
    add-int/2addr v15, v14

    if-ne v15, v5, :cond_9

    const/4 v3, 0x1

    goto :goto_7

    :cond_9
    const/4 v3, 0x0

    :goto_7
    if-nez v3, :cond_b

    .line 99
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v3

    if-nez v9, :cond_a

    int-to-float v3, v3

    sub-float/2addr v3, v8

    float-to-int v3, v3

    .line 103
    :cond_a
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v6, v10

    float-to-int v6, v6

    .line 104
    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v4, v8

    float-to-int v4, v4

    .line 105
    iget v7, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->leftRight:I

    add-int/2addr v7, v4

    .line 106
    iget-object v8, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 107
    iget-object v3, v0, Lcom/neusoft/qdrivelink/music/customview/GridEntrust;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_b
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v16, v13

    move/from16 v6, v18

    goto/16 :goto_4

    :cond_c
    :goto_8
    return-void
.end method
