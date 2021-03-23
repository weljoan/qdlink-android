.class final Lorg/xutils/image/ImageLoader$FakeImageView;
.super Landroid/widget/ImageView;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/image/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FakeImageView"
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 597
    invoke-static {}, Lorg/xutils/x;->app()Landroid/app/Application;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 607
    iget-object v0, p0, Lorg/xutils/image/ImageLoader$FakeImageView;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 602
    iput-object p1, p0, Lorg/xutils/image/ImageLoader$FakeImageView;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 0

    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
