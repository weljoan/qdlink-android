.class Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$1;
.super Ljava/lang/Object;
.source "MiScreenCapture.java"

# interfaces
.implements Lcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$1;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEglRenderError()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$1;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->resumeScreenCapture()V

    return-void
.end method

.method public onUpdate()V
    .locals 2

    const-string v0, "textwang"

    const-string v1, "mEncoder != null onUpdate() 11111111111111111"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$1;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/media/MediaCodec;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v1, "mEncoder != null startEncode()"

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$1;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->b(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V

    :cond_0
    return-void
.end method
