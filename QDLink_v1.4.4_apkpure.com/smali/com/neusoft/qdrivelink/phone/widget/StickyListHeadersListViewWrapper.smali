.class public Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;
.super Landroid/widget/FrameLayout;
.source "StickyListHeadersListViewWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$GestureListener;
    }
.end annotation


# static fields
.field private static final HONEYCOMB_OR__ABOVE:Z

.field private static mBottom:Ljava/lang/reflect/Field;

.field private static mTop:Ljava/lang/reflect/Field;


# instance fields
.field private drawSelectorOnTop:Z

.field private final gestureDetector:Landroid/view/GestureDetector;

.field private header:Landroid/view/View;

.field private headerBottomPosition:I

.field private headerChangedDuringLayout:Z

.field private inLayout:Z

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private onHeaderTouchListener:Landroid/view/View$OnTouchListener;

.field private selector:Landroid/graphics/drawable/Drawable;

.field private selectorBounds:Landroid/graphics/Rect;

.field private showSelector:Z

.field private viewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->HONEYCOMB_OR__ABOVE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 78
    invoke-direct {p0, p1, v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, p1, p2, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 26
    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    const/4 p3, -0x1

    .line 27
    iput p3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerBottomPosition:I

    const/4 p3, 0x0

    .line 31
    iput-boolean p3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->drawSelectorOnTop:Z

    .line 32
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selectorBounds:Landroid/graphics/Rect;

    .line 36
    new-instance p3, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;

    invoke-direct {p3, p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;-><init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)V

    iput-object p3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->onHeaderTouchListener:Landroid/view/View$OnTouchListener;

    .line 59
    new-instance p3, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;

    invoke-direct {p3, p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;-><init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)V

    iput-object p3, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 89
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->isInEditMode()Z

    move-result p3

    if-nez p3, :cond_0

    new-instance p3, Landroid/view/GestureDetector;

    new-instance v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$GestureListener;

    invoke-direct {v0, p0, p2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$GestureListener;-><init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$1;)V

    invoke-direct {p3, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object p2, p3

    :cond_0
    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->gestureDetector:Landroid/view/GestureDetector;

    .line 92
    sget-boolean p2, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->HONEYCOMB_OR__ABOVE:Z

    if-nez p2, :cond_1

    .line 94
    :try_start_0
    const-class p2, Landroid/view/View;

    const-string p3, "mTop"

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    sput-object p2, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->mTop:Ljava/lang/reflect/Field;

    .line 95
    const-class p2, Landroid/view/View;

    const-string p3, "mBottom"

    invoke-virtual {p2, p3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p2

    sput-object p2, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->mBottom:Ljava/lang/reflect/Field;

    .line 96
    sget-object p2, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->mTop:Ljava/lang/reflect/Field;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 97
    sget-object p2, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->mBottom:Ljava/lang/reflect/Field;

    invoke-virtual {p2, p3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 99
    invoke-virtual {p2}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    .line 102
    :cond_1
    :goto_0
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->viewConfig:Landroid/view/ViewConfiguration;

    .line 104
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->showSelector:Z

    return p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/graphics/Rect;
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getRefreshedSelectorBounds()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/view/ViewConfiguration;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->viewConfig:Landroid/view/ViewConfiguration;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/view/GestureDetector;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->gestureDetector:Landroid/view/GestureDetector;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerChangedDuringLayout:Z

    return p0
.end method

.method static synthetic access$402(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerChangedDuringLayout:Z

    return p1
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/view/View;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    return-object p0
.end method

.method private drawSelector(Landroid/graphics/Canvas;)V
    .locals 3

    .line 225
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selector:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getRefreshedSelectorBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 226
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selector:Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 228
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 229
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selector:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    return-void
.end method

.method private getRefreshedSelectorBounds()Landroid/graphics/Rect;
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selectorBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 234
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selectorBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerBottomPosition:I

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 235
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selectorBounds:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 236
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selectorBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerBottomPosition:I

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->showSelector:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->drawSelectorOnTop:Z

    if-nez v0, :cond_0

    .line 216
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->drawSelector(Landroid/graphics/Canvas;)V

    .line 218
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 219
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selector:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->showSelector:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->drawSelectorOnTop:Z

    if-eqz v0, :cond_1

    .line 220
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->drawSelector(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method getHeaderBottomPosition()I
    .locals 1

    .line 206
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerBottomPosition:I

    return v0
.end method

.method getHeaderHeight()I
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 172
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 173
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getMeasuredWidth()I

    move-result v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v0

    :goto_0
    sub-int/2addr v2, v1

    const/high16 v0, 0x40000000    # 2.0f

    .line 176
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 178
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getHeight()I

    move-result v2

    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 180
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    invoke-virtual {p0, v2, v1, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->measureChild(Landroid/view/View;II)V

    .line 181
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method hasHeader()Z
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isHeader(Landroid/view/View;)Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    const/4 v0, 0x1

    .line 139
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->inLayout:Z

    .line 140
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 141
    iget p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerBottomPosition:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->setHeaderBottomPosition(I)V

    const/4 p1, 0x0

    .line 142
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->inLayout:Z

    return-void
.end method

.method removeHeader()Landroid/view/View;
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 147
    iget-boolean v2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->inLayout:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 148
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerChangedDuringLayout:Z

    goto :goto_0

    .line 150
    :cond_0
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->removeView(Landroid/view/View;)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    .line 155
    iput-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    return-object v0
.end method

.method public setDrawSelectorOnTop(Z)V
    .locals 0

    .line 241
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->drawSelectorOnTop:Z

    return-void
.end method

.method setHeader(Landroid/view/View;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    if-nez v0, :cond_3

    .line 115
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    .line 117
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 118
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 119
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v0, 0x30

    .line 123
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 124
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->onHeaderTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 128
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->inLayout:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 129
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerChangedDuringLayout:Z

    goto :goto_0

    .line 131
    :cond_1
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void

    .line 112
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "You must first remove the old header first"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method setHeaderBottomPosition(I)V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 187
    sget-boolean v1, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->HONEYCOMB_OR__ABOVE:Z

    if-eqz v1, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int v1, p1, v1

    int-to-float v1, v1

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    .line 192
    :cond_0
    :try_start_0
    sget-object v1, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->mTop:Ljava/lang/reflect/Field;

    .line 193
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 192
    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 194
    sget-object v0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->mBottom:Ljava/lang/reflect/Field;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->header:Landroid/view/View;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 198
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 202
    :cond_1
    :goto_0
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->headerBottomPosition:I

    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->selector:Landroid/graphics/drawable/Drawable;

    return-void
.end method
