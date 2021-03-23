.class Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;
.super Ljava/lang/Object;
.source "MiScreenCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V
    .locals 0

    .line 767
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 770
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result v0

    sput v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->phoneWidth:I

    .line 771
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result v0

    sput v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->phoneHeight:I

    .line 772
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    new-instance v11, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/display/VirtualDisplay;->getDisplay()Landroid/view/Display;

    move-result-object v3

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    .line 773
    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result v4

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result v5

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    .line 774
    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result v6

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result v7

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    .line 775
    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)I

    move-result v8

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)I

    move-result v9

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)I

    move-result v10

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;-><init>(Landroid/content/Context;Landroid/view/Display;IIIIIII)V

    .line 772
    invoke-static {v0, v11}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;)Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    .line 776
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->l(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    move-result-object v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->k(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->setPresentationView(Landroid/view/ViewGroup;)V

    .line 777
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;->a:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->l(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->show()V

    return-void
.end method
