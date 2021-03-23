.class Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;
.super Ljava/util/TimerTask;
.source "EGLRender.java"


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 292
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Thread.currentThread().getId():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "textwang"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->a(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;I)V

    .line 295
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->a(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)V

    .line 296
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->b(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)V

    .line 297
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;->onUpdate()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->d(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->a(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;J)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->b(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;J)V

    .line 301
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->e(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 303
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->stop()V

    .line 305
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 306
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$1;->a:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->c(Lcom/neu/ssp/mirror/screencap/glec/EGLRender;)Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;->onEglRenderError()V

    :cond_1
    return-void
.end method
