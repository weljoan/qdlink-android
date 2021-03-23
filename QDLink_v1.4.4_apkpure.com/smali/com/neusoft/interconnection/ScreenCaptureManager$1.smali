.class Lcom/neusoft/interconnection/ScreenCaptureManager$1;
.super Ljava/lang/Object;
.source "ScreenCaptureManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/ScreenCaptureManager;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/ScreenCaptureManager;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;->a:Lcom/neusoft/interconnection/ScreenCaptureManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    if-eqz p2, :cond_1

    .line 364
    iget-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;->a:Lcom/neusoft/interconnection/ScreenCaptureManager;

    check-cast p2, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-static {p1, p2}, Lcom/neusoft/interconnection/ScreenCaptureManager;->a(Lcom/neusoft/interconnection/ScreenCaptureManager;Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    .line 365
    iget-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;->a:Lcom/neusoft/interconnection/ScreenCaptureManager;

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->b(Lcom/neusoft/interconnection/ScreenCaptureManager;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;->a:Lcom/neusoft/interconnection/ScreenCaptureManager;

    invoke-static {p2}, Lcom/neusoft/interconnection/ScreenCaptureManager;->a(Lcom/neusoft/interconnection/ScreenCaptureManager;)Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setMainClassName(Ljava/lang/Class;)V

    .line 367
    iget-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;->a:Lcom/neusoft/interconnection/ScreenCaptureManager;

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->b(Lcom/neusoft/interconnection/ScreenCaptureManager;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;->a:Lcom/neusoft/interconnection/ScreenCaptureManager;

    invoke-static {p2}, Lcom/neusoft/interconnection/ScreenCaptureManager;->c(Lcom/neusoft/interconnection/ScreenCaptureManager;)Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setPresentationView(Landroid/view/ViewGroup;)V

    .line 371
    iget-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;->a:Lcom/neusoft/interconnection/ScreenCaptureManager;

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->b(Lcom/neusoft/interconnection/ScreenCaptureManager;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->isLink()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 372
    iget-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;->a:Lcom/neusoft/interconnection/ScreenCaptureManager;

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->b(Lcom/neusoft/interconnection/ScreenCaptureManager;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object p1

    const p2, 0xf0011

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->resetPresentationTypeMirror(I)V

    :cond_0
    const-string p1, "bind success onServiceConnected()"

    .line 374
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 357
    iget-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;->a:Lcom/neusoft/interconnection/ScreenCaptureManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->a(Lcom/neusoft/interconnection/ScreenCaptureManager;Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const-string p1, "bind fail onServiceDisconnected()"

    .line 358
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method
