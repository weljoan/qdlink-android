.class public Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;
.super Landroid/os/Binder;
.source "ScreenCaptureService.java"


# instance fields
.field final synthetic a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;


# direct methods
.method public constructor <init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public calcWidthAndHeight(II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0, p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object p1

    return-object p1
.end method

.method public changeDisplayToArOrFa(Z)V
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 355
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->changeDisplayToArOrFa(Z)V

    :cond_0
    return-void
.end method

.method public getPresentationView(Landroid/view/ViewGroup;)V
    .locals 3

    .line 405
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 406
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const-string v1, "viewGroup1 != null"

    .line 408
    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 413
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getPresentationView MiConstUtil.VALUE_APP_PORTAIT_OR_LANDSCAPE:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;->VALUE_APP_PORTAIT_OR_LANDSCAPE:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 414
    sget v1, Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;->VALUE_APP_PORTAIT_OR_LANDSCAPE:I

    if-nez v1, :cond_1

    .line 416
    sget v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->phoneHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 417
    sget v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->phoneWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 420
    :cond_1
    sget v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->phoneWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 421
    sget v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->phoneHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 423
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phoneWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->phoneWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",phoneHeight:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->phoneHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 424
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 427
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    .line 428
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_2
    const-string p1, "secondViewGroup == null"

    .line 430
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getScreenHeight()I
    .locals 2

    .line 392
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->isLink()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->j(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)I

    move-result v0

    const v1, 0xf0011

    if-ne v0, v1, :cond_0

    .line 393
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getTempScreenShort()I

    move-result v0

    return v0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 398
    :cond_1
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 2

    .line 382
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->isLink()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->j(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)I

    move-result v0

    const v1, 0xf0011

    if-ne v0, v1, :cond_0

    .line 383
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getTempScreenLong()I

    move-result v0

    return v0

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 388
    :cond_1
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result v0

    return v0
.end method

.method public getSecondViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .line 440
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public h264SupportCheck()Z
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->k(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Z

    move-result v0

    return v0
.end method

.method public initService(Landroid/app/Activity;Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    .line 117
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    .line 118
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Z)Z

    return-void
.end method

.method public isLink()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 301
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->screenCaptureDestroy()V

    .line 304
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->l(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    .line 305
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->m(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 307
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 308
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onTouchApplication(Landroid/view/MotionEvent;)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$1;

    invoke-direct {v1, p0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$1;-><init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;Landroid/view/MotionEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchApplicationMoreFinger(Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;)V
    .locals 2

    .line 284
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$2;

    invoke-direct {v1, p0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$2;-><init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public prepareMediaProjection(ILandroid/content/Intent;)V
    .locals 2

    const-string v0, "prepareMediaProjection "

    .line 142
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    .line 145
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "mMediaProjection is setted "

    .line 146
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/media/projection/MediaProjectionManager;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;

    .line 149
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 150
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/media/projection/MediaProjection;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setMediaProjection(Landroid/media/projection/MediaProjection;)V

    .line 152
    :cond_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    :cond_1
    return-void
.end method

.method public reSendSps()V
    .locals 0

    .line 260
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->resetSpsFlag()V

    return-void
.end method

.method public resetDataTranslateChannel(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    .line 178
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setDataWriteChannel(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)V

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    return-void
.end method

.method public resetPresentationTypeMirror(I)V
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->j(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 236
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;I)I

    .line 237
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->h(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 238
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object p1

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->j(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setPresentationType(I)V

    .line 240
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->resumeScreenCapture()V

    :cond_0
    return-void
.end method

.method public setMainClassName(Ljava/lang/Class;)V
    .locals 0

    .line 366
    sput-object p1, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->main_activity_name:Ljava/lang/Class;

    .line 367
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    return-void
.end method

.method public setMiDevice(Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V

    return-void
.end method

.method public setMirrorActionImpl(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;

    return-void
.end method

.method public setPresentationView(II)V
    .locals 0

    return-void
.end method

.method public setPresentationView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 319
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->resetSecondViewGroup(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setStateListener(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;

    .line 132
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    return-void
.end method

.method public startMirror(Ljava/lang/String;I)V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startMirror protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",linkMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 208
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->restartRecordScreen()V

    goto :goto_0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0, p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Ljava/lang/String;I)V

    .line 215
    :goto_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Z)Z

    return-void
.end method

.method public startScreenCaptureIntent()V
    .locals 3

    .line 161
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    .line 162
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/media/projection/MediaProjectionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/projection/MediaProjectionManager;->createScreenCaptureIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "wwwqq"

    if-eqz v0, :cond_0

    const-string v2, "captureIntent != null"

    .line 164
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v2, "captureIntent == null"

    .line 166
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    const/16 v2, 0x7b

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public stopMirror()V
    .locals 2

    const-string v0, "stopMirror"

    .line 222
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 223
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->h(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->i(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    .line 225
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Z)Z

    :cond_0
    return-void
.end method

.method public updatePresentationView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;

    .line 341
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->updateH264VirtualDisplay(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
