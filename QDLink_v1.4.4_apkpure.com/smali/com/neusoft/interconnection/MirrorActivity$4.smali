.class Lcom/neusoft/interconnection/MirrorActivity$4;
.super Ljava/util/TimerTask;
.source "MirrorActivity.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/MirrorActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/MirrorActivity;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$4;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 426
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$4;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {v0}, Lcom/neusoft/interconnection/MirrorActivity;->b(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$4;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {v0}, Lcom/neusoft/interconnection/MirrorActivity;->b(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->getSecondViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$4;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {v0}, Lcom/neusoft/interconnection/MirrorActivity;->e(Lcom/neusoft/interconnection/MirrorActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 428
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$4;->a:Lcom/neusoft/interconnection/MirrorActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;Z)Z

    .line 430
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$4;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {v0}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$4;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {v0}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->requestScreenCaptureSupport(Z)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$4;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {v0}, Lcom/neusoft/interconnection/MirrorActivity;->f(Lcom/neusoft/interconnection/MirrorActivity;)V

    :cond_1
    return-void
.end method
