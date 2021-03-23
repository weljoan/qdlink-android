.class Lcom/neusoft/interconnection/MirrorActivity$1;
.super Ljava/lang/Object;
.source "MirrorActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/MirrorActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/MirrorActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "screenCapServiceConnection onServiceConnected"

    .line 94
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 95
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;Lcom/neusoft/interconnection/connectmanager/LinkManager;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz p2, :cond_0

    .line 97
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    check-cast p2, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-static {p1, p2}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    .line 98
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/MirrorActivity;->b(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {p2}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->getMyConnectionManager()Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->initService(Landroid/app/Activity;Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)V

    .line 105
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {p2}, Lcom/neusoft/interconnection/MirrorActivity;->b(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->setScreenCaptureBinder(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)V

    .line 106
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {p2}, Lcom/neusoft/interconnection/MirrorActivity;->c(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/MirrorActivity;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->setMirrorActivity(Lcom/neusoft/interconnection/MirrorActivity;)V

    .line 107
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {p1}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-virtual {p1, p2}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->setLinkManagerCallback(Lcom/neusoft/interconnection/connectmanager/LinkManagerCallback;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "screenCapServiceConnection onServiceDisconnected"

    .line 116
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 117
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$1;->a:Lcom/neusoft/interconnection/MirrorActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    return-void
.end method
