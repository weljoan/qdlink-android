.class Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$1;
.super Ljava/lang/Object;
.source "ScreenCaptureService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    .locals 0

    .line 537
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$1;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$1;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$1;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->stopScreenCapture()V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$1;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->p(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;->onStopMirror()V

    return-void
.end method
