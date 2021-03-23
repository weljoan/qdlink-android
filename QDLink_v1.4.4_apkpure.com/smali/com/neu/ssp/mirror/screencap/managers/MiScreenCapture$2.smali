.class Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;
.super Ljava/lang/Object;
.source "MiScreenCapture.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V
    .locals 0

    .line 651
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 657
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->c(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 672
    :cond_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    const/16 v2, 0x10e

    invoke-static {p1, v2}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;I)I

    goto :goto_1

    .line 668
    :cond_1
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    const/16 v0, 0xb4

    invoke-static {p1, v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;I)I

    goto :goto_0

    .line 664
    :cond_2
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    const/16 v2, 0x5a

    invoke-static {p1, v2}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;I)I

    goto :goto_1

    .line 660
    :cond_3
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {p1, v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;I)I

    goto :goto_0

    .line 678
    :goto_1
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)I

    move-result p1

    if-eq p1, v0, :cond_4

    if-nez v0, :cond_4

    .line 681
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {p1, v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->b(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;I)I

    return-void

    .line 683
    :cond_4
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)I

    move-result p1

    if-eq p1, v0, :cond_5

    .line 685
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {p1, v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->b(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;I)I

    :cond_5
    return-void
.end method
