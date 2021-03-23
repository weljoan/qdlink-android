.class Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$2;
.super Ljava/lang/Object;
.source "ScreenCaptureService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

.field private synthetic b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;)V
    .locals 0

    .line 284
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$2;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$2;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$2;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    iget-object v0, v0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$2;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    iget-object v0, v0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->getSecondDisplay()Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$2;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    iget-object v0, v0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->getSecondDisplay()Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder$2;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->onDispatchTouchEvent(Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;)V

    :cond_0
    return-void
.end method
