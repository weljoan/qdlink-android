.class final Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;
.super Ljava/lang/Object;
.source "MyImageLoadXUtils.java"

# interfaces
.implements Lorg/xutils/common/Callback$CacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils;->imageLoadFile(Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/xutils/common/Callback$CacheCallback<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCache(Ljava/io/File;)Z
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;->onCache(Ljava/io/File;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic onCache(Ljava/lang/Object;)Z
    .locals 0

    .line 172
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;->onCache(Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;Z)V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;

    invoke-interface {v0, p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;->onError(Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public onFinished()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;

    invoke-interface {v0}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;->onFinished()V

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;->val$callback:Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/ImageLoadFileCallBackInter;->onSuccess(Ljava/io/File;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 172
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyImageLoadXUtils$2;->onSuccess(Ljava/io/File;)V

    return-void
.end method
