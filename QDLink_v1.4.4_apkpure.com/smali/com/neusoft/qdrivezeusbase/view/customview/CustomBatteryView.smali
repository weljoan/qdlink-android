.class public Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;
.super Landroid/view/View;
.source "CustomBatteryView.java"


# instance fields
.field private backgroundColorId:I

.field private current:I

.field private mBmp:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mPaint:Landroid/graphics/Paint;

.field private myLock:Ljava/util/concurrent/locks/Lock;

.field private final total:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 25
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->total:I

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->current:I

    .line 27
    sget v0, Lcom/neusoft/qdrivezeusbase/R$color;->color_battery_white:I

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->backgroundColorId:I

    .line 28
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->myLock:Ljava/util/concurrent/locks/Lock;

    .line 40
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->initPaint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x64

    .line 25
    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->total:I

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->current:I

    .line 27
    sget p2, Lcom/neusoft/qdrivezeusbase/R$color;->color_battery_white:I

    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->backgroundColorId:I

    .line 28
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->myLock:Ljava/util/concurrent/locks/Lock;

    .line 47
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mContext:Landroid/content/Context;

    .line 48
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->initPaint()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x64

    .line 25
    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->total:I

    const/4 p2, 0x0

    .line 26
    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->current:I

    .line 27
    sget p2, Lcom/neusoft/qdrivezeusbase/R$color;->color_battery_white:I

    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->backgroundColorId:I

    .line 28
    new-instance p2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->myLock:Ljava/util/concurrent/locks/Lock;

    .line 53
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->initPaint()V

    return-void
.end method

.method private initPaint()V
    .locals 2

    .line 61
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mPaint:Landroid/graphics/Paint;

    .line 62
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/neusoft/qdrivezeusbase/R$mipmap;->battery_white_image:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mBmp:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->myLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 78
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 79
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mBmp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 80
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->backgroundColorId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 81
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 82
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0xc

    iget v3, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->current:I

    mul-int v2, v2, v3

    div-int/lit8 v2, v2, 0x64

    iget-object v3, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x5

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 83
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 87
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->myLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->myLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 67
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 68
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 69
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 71
    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->setMeasuredDimension(II)V

    return-void
.end method

.method public setProgress(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    const/16 v0, 0x64

    if-le p1, v0, :cond_1

    const/16 p1, 0x64

    .line 34
    :cond_1
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->current:I

    .line 35
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->invalidate()V

    return-void
.end method

.method public setStyleBlack()V
    .locals 2

    .line 92
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/neusoft/qdrivezeusbase/R$mipmap;->battery_black_image:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->mBmp:Landroid/graphics/Bitmap;

    .line 93
    sget v0, Lcom/neusoft/qdrivezeusbase/R$color;->color_battery_black:I

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->backgroundColorId:I

    return-void
.end method
