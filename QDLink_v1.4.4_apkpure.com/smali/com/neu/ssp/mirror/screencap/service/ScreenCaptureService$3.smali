.class Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$3;
.super Landroid/content/BroadcastReceiver;
.source "ScreenCaptureService.java"


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$3;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    const-string p1, "Activity onReceive"

    .line 776
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_ON"

    .line 779
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p1, "Activity screen on"

    .line 780
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 793
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Activity screen off"

    .line 794
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 795
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$3;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->q(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 796
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$3;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->q(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object p1

    const p2, 0xf0011

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->resetPresentationTypeMirror(I)V

    :cond_1
    return-void
.end method
