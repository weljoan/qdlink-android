.class Lcom/neusoft/interconnection/MirrorActivity$2;
.super Ljava/util/TimerTask;
.source "MirrorActivity.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/MirrorActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/MirrorActivity;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$2;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 157
    sget-boolean v0, Lcom/neusoft/interconnection/utils/ConnConstant;->mainIsCreate:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$2;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {v0}, Lcom/neusoft/interconnection/MirrorActivity;->b(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "startScreenCaptureIntent myBinder != null"

    .line 159
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$2;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {v0}, Lcom/neusoft/interconnection/MirrorActivity;->b(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->startScreenCaptureIntent()V

    goto :goto_0

    :cond_0
    const-string v0, "startScreenCaptureIntent myBinder == null"

    .line 162
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity$2;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-static {v0}, Lcom/neusoft/interconnection/MirrorActivity;->d(Lcom/neusoft/interconnection/MirrorActivity;)V

    :cond_1
    return-void
.end method
