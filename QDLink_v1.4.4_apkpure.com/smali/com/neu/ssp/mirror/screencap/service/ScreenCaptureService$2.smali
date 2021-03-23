.class Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$2;
.super Ljava/lang/Object;
.source "ScreenCaptureService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$2;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 756
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$2;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->p(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;->onStartMirror()V

    return-void
.end method
