.class Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$4;
.super Ljava/lang/Object;
.source "MiScreenCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V
    .locals 0

    .line 790
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$4;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 793
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$4;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->l(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 794
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$4;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->l(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$4;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->k(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->updatePresentationView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
