.class public Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils;
.super Ljava/lang/Object;
.source "MyImageLoadXUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static imageLoadFile(Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;)V
    .locals 3

    .line 167
    new-instance v0, Lorg/xutils/image/ImageOptions$Builder;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions$Builder;-><init>()V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 168
    invoke-virtual {v0, v1}, Lorg/xutils/image/ImageOptions$Builder;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 169
    invoke-virtual {v0, v1}, Lorg/xutils/image/ImageOptions$Builder;->setUseMemCache(Z)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {v0}, Lorg/xutils/image/ImageOptions$Builder;->build()Lorg/xutils/image/ImageOptions;

    move-result-object v0

    .line 172
    invoke-static {}, Lorg/xutils/x;->image()Lorg/xutils/ImageManager;

    move-result-object v1

    new-instance v2, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;

    invoke-direct {v2, p1}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;-><init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;)V

    invoke-interface {v1, p0, v0, v2}, Lorg/xutils/ImageManager;->loadFile(Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CacheCallback;)Lorg/xutils/common/Callback$Cancelable;

    return-void
.end method

.method public static loadImage(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZLcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V
    .locals 3

    .line 124
    new-instance v0, Lorg/xutils/image/ImageOptions$Builder;

    invoke-direct {v0}, Lorg/xutils/image/ImageOptions$Builder;-><init>()V

    .line 125
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/xutils/image/ImageOptions$Builder;->setSize(II)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object v0

    .line 126
    invoke-virtual {v0, p4}, Lorg/xutils/image/ImageOptions$Builder;->setRadius(I)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p4

    const/4 v0, 0x1

    .line 127
    invoke-virtual {p4, v0}, Lorg/xutils/image/ImageOptions$Builder;->setCrop(Z)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p4

    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 128
    invoke-virtual {p4, v1}, Lorg/xutils/image/ImageOptions$Builder;->setImageScaleType(Landroid/widget/ImageView$ScaleType;)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p4

    .line 129
    invoke-virtual {p4, p2}, Lorg/xutils/image/ImageOptions$Builder;->setLoadingDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p2

    .line 130
    invoke-virtual {p2, p3}, Lorg/xutils/image/ImageOptions$Builder;->setFailureDrawableId(I)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p2

    .line 131
    invoke-virtual {p2, v0}, Lorg/xutils/image/ImageOptions$Builder;->setUseMemCache(Z)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p2

    .line 132
    invoke-virtual {p2, p5}, Lorg/xutils/image/ImageOptions$Builder;->setIgnoreGif(Z)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p2

    .line 133
    invoke-virtual {p2, p6}, Lorg/xutils/image/ImageOptions$Builder;->setCircular(Z)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p2

    .line 134
    invoke-virtual {p2, p7}, Lorg/xutils/image/ImageOptions$Builder;->setSquare(Z)Lorg/xutils/image/ImageOptions$Builder;

    move-result-object p2

    .line 135
    invoke-virtual {p2}, Lorg/xutils/image/ImageOptions$Builder;->build()Lorg/xutils/image/ImageOptions;

    move-result-object p2

    .line 136
    invoke-static {}, Lorg/xutils/x;->image()Lorg/xutils/ImageManager;

    move-result-object p3

    new-instance p4, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$1;

    invoke-direct {p4, p8}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$1;-><init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V

    invoke-interface {p3, p0, p1, p2, p4}, Lorg/xutils/ImageManager;->bind(Landroid/widget/ImageView;Ljava/lang/String;Lorg/xutils/image/ImageOptions;Lorg/xutils/common/Callback$CommonCallback;)V

    return-void
.end method

.method public static loadImageCircular(Landroid/widget/ImageView;Ljava/lang/String;IILcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, p4

    .line 51
    invoke-static/range {v0 .. v8}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZLcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V

    return-void
.end method

.method public static loadImageGif(Landroid/widget/ImageView;Ljava/lang/String;IILcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, p4

    .line 100
    invoke-static/range {v0 .. v8}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZLcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V

    return-void
.end method

.method public static loadImageNormal(Landroid/widget/ImageView;Ljava/lang/String;IILcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, p4

    .line 35
    invoke-static/range {v0 .. v8}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZLcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V

    return-void
.end method

.method public static loadImageRadius(Landroid/widget/ImageView;Ljava/lang/String;IIILcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V
    .locals 9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v8, p5

    .line 84
    invoke-static/range {v0 .. v8}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZLcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V

    return-void
.end method

.method public static loadImageSquare(Landroid/widget/ImageView;Ljava/lang/String;IILcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v8, p4

    .line 67
    invoke-static/range {v0 .. v8}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZLcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V

    return-void
.end method
