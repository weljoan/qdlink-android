.class Lcom/neusoft/interconnection/MirrorActivity$3;
.super Ljava/lang/Object;
.source "MirrorActivity.java"

# interfaces
.implements Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/MirrorActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/MirrorActivity;)V
    .locals 0

    .line 328
    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity$3;->a:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    const-string v0, "screenCapture setState,onDestroy()"

    .line 331
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onPrepareMirror()V
    .locals 1

    const-string v0, "screenCapture setState,onPrepareMirror()"

    .line 336
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method
