.class final Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$1;
.super Ljava/lang/Object;
.source "MyImageLoadXUtils.java"

# interfaces
.implements Lorg/xutils/common/Callback$CommonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils;->loadImage(Landroid/widget/ImageView;Ljava/lang/String;IIIZZZLcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$CommonCallback<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$1;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$1;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$1;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;

    invoke-interface {v0, p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;->onError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public onFinished()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$1;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;->onFinished()V

    return-void
.end method

.method public onSuccess(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$1;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadCallBackInter;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$1;->onSuccess(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
