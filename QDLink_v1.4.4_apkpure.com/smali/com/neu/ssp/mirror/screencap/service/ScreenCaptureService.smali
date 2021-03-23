.class public Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;
.super Landroid/app/Service;
.source "ScreenCaptureService.java"


# instance fields
.field private a:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

.field private b:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;

.field private c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

.field private d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

.field private e:Landroid/media/projection/MediaProjection;

.field private f:Landroid/media/projection/MediaProjectionManager;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;

.field private i:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

.field private j:Z

.field private k:Landroid/view/ViewGroup;

.field private l:I

.field private m:Z

.field private n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    const/4 v1, 0x0

    .line 91
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->j:Z

    const v2, 0xf0011

    .line 95
    iput v2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->l:I

    .line 97
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->m:Z

    .line 99
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->l:I

    return p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Landroid/media/projection/MediaProjection;)Landroid/media/projection/MediaProjection;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    return-object p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Landroid/view/ViewGroup;)Landroid/view/ViewGroup;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->k:Landroid/view/ViewGroup;

    return-object p1
.end method

.method private a(II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;
    .locals 9

    .line 810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "calcScreenFromCar IN width "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 811
    new-instance v0, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 812
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 813
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    if-nez v0, :cond_0

    const-string p1, "Can not get window manager! system error!"

    .line 815
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    .line 818
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 819
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneDensityDpi(I)V

    .line 821
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 822
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 823
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 834
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ",screenSize.x:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",screenSize.y:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",MiConstUtil.VALUE_APP_PORTAIT_OR_LANDSCAPE:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;->VALUE_APP_PORTAIT_OR_LANDSCAPE:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 838
    sget-object v0, Lcom/neusoft/interconnection/utils/LinkConfig;->CurrentLink:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x2829c1b8

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v5, :cond_3

    const v5, 0x712dd353

    if-eq v4, v5, :cond_2

    const v5, 0x78cd64aa

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "DTLink"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const-string v4, "QDriveLink"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "BEIJINGLink"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_0
    if-eqz v3, :cond_6

    if-eq v3, v8, :cond_6

    if-eq v3, v7, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/16 v6, 0x438

    const/16 v0, 0x780

    goto :goto_2

    .line 841
    :cond_6
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-le v0, v3, :cond_7

    iget v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_7
    iget v0, v2, Landroid/graphics/Point;->x:I

    :goto_1
    move v6, v0

    .line 842
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-le v0, v3, :cond_8

    iget v0, v2, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_8
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 853
    :goto_2
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_9

    iget v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_9
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 854
    :goto_3
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_a

    iget v2, v2, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_a
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 856
    :goto_4
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v4, v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneWidth1(I)V

    .line 857
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v4, v3}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneHeight1(I)V

    .line 859
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v4, v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneWidth(I)V

    .line 860
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v4, v6}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneHeight(I)V

    .line 862
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calcScreenFromCar Phone width "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    if-le p1, p2, :cond_b

    move v0, p1

    goto :goto_5

    :cond_b
    move v0, p2

    :goto_5
    if-le p1, p2, :cond_c

    move p1, p2

    .line 866
    :cond_c
    rem-int/lit8 p2, v0, 0x2

    if-eqz p2, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 869
    :cond_d
    rem-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_e

    add-int/lit8 p1, p1, 0x1

    .line 872
    :cond_e
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2, v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setCarWidth(I)V

    .line 873
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2, p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setCarHeight(I)V

    .line 875
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "calcScreenFromCar Car width "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    int-to-float p2, v0

    int-to-float v4, p1

    div-float v5, p2, v4

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v5, v2

    if-lez v3, :cond_f

    mul-float v4, v4, v2

    float-to-int v0, v4

    goto :goto_6

    :cond_f
    div-float/2addr p2, v2

    float-to-int p1, p2

    .line 898
    :goto_6
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2, v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setCarCalcWidth(I)V

    .line 899
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2, p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setCarCalcHeight(I)V

    .line 900
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "calcScreenFromCar Calc Car width "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 904
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpl-float p1, v5, p1

    if-lez p1, :cond_11

    .line 905
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result p2

    if-le p1, p2, :cond_10

    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p1

    goto :goto_7

    :cond_10
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result p1

    :goto_7
    int-to-float p2, p1

    mul-float p2, p2, v5

    float-to-int p2, p2

    goto :goto_9

    .line 909
    :cond_11
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result p2

    if-le p1, p2, :cond_12

    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p1

    goto :goto_8

    :cond_12
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result p1

    :goto_8
    move p2, p1

    int-to-float p1, p2

    div-float/2addr p1, v5

    float-to-int p1, p1

    .line 912
    :goto_9
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setTempScreenLong(I)V

    .line 913
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setTempScreenShort(I)V

    .line 915
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "calcScreenFromCar tempScreen width "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " tempScreen height "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 916
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    return-object p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;
    .locals 9

    .line 4810
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "calcScreenFromCar IN width "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4811
    new-instance v0, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 4812
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v2, "window"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 4813
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    if-nez v0, :cond_0

    const-string p0, "Can not get window manager! system error!"

    .line 4815
    invoke-static {p0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    .line 4818
    :cond_0
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 4819
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v3, v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneDensityDpi(I)V

    .line 4821
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 4822
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 4823
    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 4834
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, ",screenSize.x:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",screenSize.y:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",MiConstUtil.VALUE_APP_PORTAIT_OR_LANDSCAPE:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;->VALUE_APP_PORTAIT_OR_LANDSCAPE:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 4838
    sget-object v0, Lcom/neusoft/interconnection/utils/LinkConfig;->CurrentLink:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x2829c1b8

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v4, v5, :cond_3

    const v5, 0x712dd353

    if-eq v4, v5, :cond_2

    const v5, 0x78cd64aa

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "DTLink"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    goto :goto_0

    :cond_2
    const-string v4, "QDriveLink"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_3
    const-string v4, "BEIJINGLink"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    :cond_4
    :goto_0
    if-eqz v3, :cond_6

    if-eq v3, v8, :cond_6

    if-eq v3, v7, :cond_5

    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/16 v6, 0x438

    const/16 v0, 0x780

    goto :goto_2

    .line 4841
    :cond_6
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-le v0, v3, :cond_7

    iget v0, v2, Landroid/graphics/Point;->y:I

    goto :goto_1

    :cond_7
    iget v0, v2, Landroid/graphics/Point;->x:I

    :goto_1
    move v6, v0

    .line 4842
    iget v0, v2, Landroid/graphics/Point;->x:I

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-le v0, v3, :cond_8

    iget v0, v2, Landroid/graphics/Point;->x:I

    goto :goto_2

    :cond_8
    iget v0, v2, Landroid/graphics/Point;->y:I

    .line 4853
    :goto_2
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_9

    iget v3, v2, Landroid/graphics/Point;->y:I

    goto :goto_3

    :cond_9
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 4854
    :goto_3
    iget v4, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    if-le v4, v5, :cond_a

    iget v2, v2, Landroid/graphics/Point;->x:I

    goto :goto_4

    :cond_a
    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 4856
    :goto_4
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v4, v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneWidth1(I)V

    .line 4857
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v4, v3}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneHeight1(I)V

    .line 4859
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v4, v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneWidth(I)V

    .line 4860
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v4, v6}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setPhoneHeight(I)V

    .line 4862
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "calcScreenFromCar Phone width "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    if-le p1, p2, :cond_b

    move v0, p1

    goto :goto_5

    :cond_b
    move v0, p2

    :goto_5
    if-le p1, p2, :cond_c

    move p1, p2

    .line 4866
    :cond_c
    rem-int/lit8 p2, v0, 0x2

    if-eqz p2, :cond_d

    add-int/lit8 v0, v0, 0x1

    .line 4869
    :cond_d
    rem-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_e

    add-int/lit8 p1, p1, 0x1

    .line 4872
    :cond_e
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2, v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setCarWidth(I)V

    .line 4873
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2, p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setCarHeight(I)V

    .line 4875
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v4, "calcScreenFromCar Car width "

    invoke-direct {p2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    int-to-float p2, v0

    int-to-float v4, p1

    div-float v5, p2, v4

    int-to-float v2, v2

    int-to-float v3, v3

    div-float/2addr v2, v3

    cmpl-float v3, v5, v2

    if-lez v3, :cond_f

    mul-float v4, v4, v2

    float-to-int v0, v4

    goto :goto_6

    :cond_f
    div-float/2addr p2, v2

    float-to-int p1, p2

    .line 4898
    :goto_6
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2, v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setCarCalcWidth(I)V

    .line 4899
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2, p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setCarCalcHeight(I)V

    .line 4900
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "calcScreenFromCar Calc Car width "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4904
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    cmpl-float p1, v5, p1

    if-lez p1, :cond_11

    .line 4905
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result p2

    if-le p1, p2, :cond_10

    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p1

    goto :goto_7

    :cond_10
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result p1

    :goto_7
    int-to-float p2, p1

    mul-float p2, p2, v5

    float-to-int p2, p2

    goto :goto_9

    .line 4909
    :cond_11
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result p2

    if-le p1, p2, :cond_12

    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p1

    goto :goto_8

    :cond_12
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result p1

    :goto_8
    move p2, p1

    int-to-float p1, p2

    div-float/2addr p1, v5

    float-to-int p1, p1

    .line 4912
    :goto_9
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setTempScreenLong(I)V

    .line 4913
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->setTempScreenShort(I)V

    .line 4915
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "calcScreenFromCar tempScreen width "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " tempScreen height "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4916
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    return-object p0
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->h:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;

    return-object p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;

    return-object p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a()V
    .locals 6

    .line 486
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 487
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    .line 489
    invoke-static {p0, v2, v1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string v2, "is running......"

    .line 493
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 498
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "notification_id"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    .line 499
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 502
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    const-string v1, "notification"

    .line 503
    invoke-virtual {p0, v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 504
    new-instance v3, Landroid/app/NotificationChannel;

    const/4 v4, 0x2

    const-string v5, "notification_name"

    invoke-direct {v3, v2, v5, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 505
    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 508
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    .line 509
    iput v1, v0, Landroid/app/Notification;->defaults:I

    .line 510
    sget v1, Lcom/neusoft/interconnection/utils/LinkConfig;->notificationId:I

    invoke-virtual {p0, v1, v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method private a(Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V
    .locals 9

    .line 581
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getWidth()I

    move-result v0

    .line 582
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getHeight()I

    move-result v1

    .line 583
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameRate()I

    move-result v2

    .line 584
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getBitrate()I

    move-result v3

    .line 585
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameInterval()I

    move-result v4

    .line 586
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getiFrameBit()I

    move-result v5

    .line 587
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getiScreenCapType()I

    move-result v6

    .line 588
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getDPI()I

    move-result p1

    .line 589
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Car_DPI====="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 590
    new-instance v7, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-direct {v7}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;-><init>()V

    if-eqz v0, :cond_1

    .line 593
    rem-int/lit8 v8, v0, 0x2

    if-eqz v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 596
    :cond_0
    invoke-virtual {v7, v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setWidth(I)V

    :cond_1
    if-eqz v1, :cond_3

    .line 600
    rem-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 603
    :cond_2
    invoke-virtual {v7, v1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setHeight(I)V

    :cond_3
    if-eqz v3, :cond_4

    .line 607
    invoke-virtual {v7, v3}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setBitrate(I)V

    :cond_4
    if-eqz v2, :cond_5

    .line 611
    invoke-virtual {v7, v2}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setFrameRate(I)V

    :cond_5
    if-eqz v4, :cond_6

    .line 615
    invoke-virtual {v7, v4}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setFrameInterval(I)V

    :cond_6
    if-lez v5, :cond_7

    .line 619
    invoke-virtual {v7, v5}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setiFrameBit(I)V

    :cond_7
    if-lez v6, :cond_8

    .line 623
    invoke-virtual {v7, v6}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setiScreenCapType(I)V

    :cond_8
    if-lez p1, :cond_9

    .line 626
    invoke-virtual {v7, p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setDPI(I)V

    .line 629
    :cond_9
    iput-object v7, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V
    .locals 9

    .line 2581
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getWidth()I

    move-result v0

    .line 2582
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getHeight()I

    move-result v1

    .line 2583
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameRate()I

    move-result v2

    .line 2584
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getBitrate()I

    move-result v3

    .line 2585
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameInterval()I

    move-result v4

    .line 2586
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getiFrameBit()I

    move-result v5

    .line 2587
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getiScreenCapType()I

    move-result v6

    .line 2588
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getDPI()I

    move-result p1

    .line 2589
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Car_DPI====="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 2590
    new-instance v7, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-direct {v7}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;-><init>()V

    if-eqz v0, :cond_1

    .line 2593
    rem-int/lit8 v8, v0, 0x2

    if-eqz v8, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 2596
    :cond_0
    invoke-virtual {v7, v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setWidth(I)V

    :cond_1
    if-eqz v1, :cond_3

    .line 2600
    rem-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, 0x1

    .line 2603
    :cond_2
    invoke-virtual {v7, v1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setHeight(I)V

    :cond_3
    if-eqz v3, :cond_4

    .line 2607
    invoke-virtual {v7, v3}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setBitrate(I)V

    :cond_4
    if-eqz v2, :cond_5

    .line 2611
    invoke-virtual {v7, v2}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setFrameRate(I)V

    :cond_5
    if-eqz v4, :cond_6

    .line 2615
    invoke-virtual {v7, v4}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setFrameInterval(I)V

    :cond_6
    if-lez v5, :cond_7

    .line 2619
    invoke-virtual {v7, v5}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setiFrameBit(I)V

    :cond_7
    if-lez v6, :cond_8

    .line 2623
    invoke-virtual {v7, v6}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setiScreenCapType(I)V

    :cond_8
    if-lez p1, :cond_9

    .line 2626
    invoke-virtual {v7, p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setDPI(I)V

    .line 2629
    :cond_9
    iput-object v7, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Ljava/lang/String;I)V
    .locals 12

    const-string v0, "startScreenCapture"

    .line 3555
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 3686
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    if-nez v0, :cond_0

    .line 3687
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The screen capture param is null! protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",linkMode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "initScreenCapture"

    .line 3690
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 3691
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getBitrate()I

    move-result v2

    .line 3692
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getDPI()I

    move-result v3

    .line 3693
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameRate()I

    move-result v4

    .line 3694
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameInterval()I

    move-result v6

    .line 3695
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getiScreenCapType()I

    move-result v7

    .line 3697
    new-instance v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    iget v8, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->l:I

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    .line 3705
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/Context;

    iget-object v10, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->k:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;-><init>(IIILandroid/media/projection/MediaProjection;IIILandroid/content/Context;Landroid/view/ViewGroup;Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    .line 3708
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    if-eqz v0, :cond_1

    .line 3709
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setProtocolType(Ljava/lang/String;)V

    .line 3710
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setLinkMode(I)V

    .line 3557
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setDataWriteChannel(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)V

    .line 3558
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->start()V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 12

    const-string v0, "startScreenCapture"

    .line 555
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1686
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    if-nez v0, :cond_0

    .line 1687
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The screen capture param is null! protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",linkMode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "initScreenCapture"

    .line 1690
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1691
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getBitrate()I

    move-result v2

    .line 1692
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getDPI()I

    move-result v3

    .line 1693
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameRate()I

    move-result v4

    .line 1694
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameInterval()I

    move-result v6

    .line 1695
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getiScreenCapType()I

    move-result v7

    .line 1697
    new-instance v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    iget v8, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->l:I

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    .line 1705
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/Context;

    iget-object v10, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->k:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;-><init>(IIILandroid/media/projection/MediaProjection;IIILandroid/content/Context;Landroid/view/ViewGroup;Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    .line 1708
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    if-eqz v0, :cond_1

    .line 1709
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setProtocolType(Ljava/lang/String;)V

    .line 1710
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setLinkMode(I)V

    .line 557
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setDataWriteChannel(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)V

    .line 558
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->start()V

    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->m:Z

    return p0
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 46
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->m:Z

    return p1
.end method

.method private b()V
    .locals 2

    .line 527
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f:Landroid/media/projection/MediaProjectionManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 528
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const-string v1, "media_projection"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/projection/MediaProjectionManager;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f:Landroid/media/projection/MediaProjectionManager;

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g()V

    return-void
.end method

.method private b(Ljava/lang/String;I)V
    .locals 12

    .line 686
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    if-nez v0, :cond_0

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The screen capture param is null! protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",linkMode:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "initScreenCapture"

    .line 690
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 691
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getBitrate()I

    move-result v2

    .line 692
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getDPI()I

    move-result v3

    .line 693
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameRate()I

    move-result v4

    .line 694
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getFrameInterval()I

    move-result v6

    .line 695
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->getiScreenCapType()I

    move-result v7

    .line 697
    new-instance v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    iget v8, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->l:I

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    .line 705
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Landroid/content/Context;

    iget-object v10, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->k:Landroid/view/ViewGroup;

    iget-object v11, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;-><init>(IIILandroid/media/projection/MediaProjection;IIILandroid/content/Context;Landroid/view/ViewGroup;Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    .line 708
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    if-eqz v0, :cond_1

    .line 709
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setProtocolType(Ljava/lang/String;)V

    .line 710
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setLinkMode(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->j:Z

    return p1
.end method

.method private c()V
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 537
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$1;

    invoke-direct {v1, p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$1;-><init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b()V

    return-void
.end method

.method static synthetic d(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/media/projection/MediaProjection;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    return-object p0
.end method

.method private d()V
    .locals 1

    const-string v0, "stopScreenCapture"

    .line 565
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 566
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->stopScreenCapture()V

    .line 568
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->releaseHandler()V

    .line 569
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->releaseVirtualDisplay()V

    .line 570
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->interrupt()V

    const/4 v0, 0x0

    .line 571
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/media/projection/MediaProjectionManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f:Landroid/media/projection/MediaProjectionManager;

    return-object p0
.end method

.method private static e()Z
    .locals 5

    const-string v0, "video/avc"

    const/16 v1, 0x320

    const/16 v2, 0x1e0

    .line 640
    :try_start_0
    invoke-static {v0, v1, v2}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "color-format"

    const v3, 0x7f000789

    .line 641
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "bitrate"

    const v3, 0x16e360

    .line 642
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "frame-rate"

    const/16 v3, 0x18

    .line 643
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 644
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v3, :cond_0

    const-string v2, "intra-refresh-period"

    const-string v3, "intra-refresh"

    .line 645
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_1

    const-string v2, "profile"

    .line 648
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "level"

    const/16 v3, 0x200

    .line 649
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_1
    const-string v2, "bitrate-mode"

    const/4 v3, 0x2

    .line 651
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "complexity"

    .line 652
    invoke-virtual {v1, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "i-frame-interval"

    .line 653
    invoke-virtual {v1, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 654
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    const/4 v2, 0x0

    .line 655
    invoke-virtual {v0, v1, v2, v2, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    .line 657
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    return-object p0
.end method

.method private f()V
    .locals 2

    const/4 v0, 0x0

    .line 667
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f:Landroid/media/projection/MediaProjectionManager;

    .line 668
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    if-eqz v1, :cond_0

    .line 669
    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V

    .line 671
    :cond_0
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    .line 672
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    .line 674
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->h:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;

    if-eqz v1, :cond_1

    .line 675
    invoke-interface {v1}, Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;->onDestroy()V

    .line 678
    :cond_1
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    .line 679
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    return-void
.end method

.method static synthetic g(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private g()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-nez v0, :cond_0

    const-string v0, "The Data Translate Interface is not init."

    .line 721
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_1

    const-string v0, "The Media Projection is not init."

    .line 726
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 730
    :cond_1
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    const-string v0, "The Activity is not set."

    .line 731
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 735
    :cond_2
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->l:I

    const v1, 0xf0011

    if-ne v0, v1, :cond_3

    sget-object v0, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->main_activity_name:Ljava/lang/Class;

    if-nez v0, :cond_3

    const-string v0, "The main activity is not set."

    .line 737
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 741
    :cond_3
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->l:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->k:Landroid/view/ViewGroup;

    if-nez v0, :cond_4

    const-string v0, "The second View Group is not init."

    .line 743
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 747
    :cond_4
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->h:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;

    if-nez v0, :cond_5

    const-string v0, "The Cast State Listener is not set."

    .line 748
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_5
    const-string v0, "The Screen Capture is already prepare."

    .line 751
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 752
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->h:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;

    invoke-interface {v0}, Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;->onPrepareMirror()V

    .line 753
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$2;

    invoke-direct {v1, p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$2;-><init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic h(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->j:Z

    return p0
.end method

.method static synthetic i(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    .locals 2

    .line 4536
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 4537
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$1;

    invoke-direct {v1, p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$1;-><init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic j(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->l:I

    return p0
.end method

.method static synthetic k(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Z
    .locals 0

    .line 46
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e()Z

    move-result p0

    return p0
.end method

.method static synthetic l(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    .locals 1

    const-string v0, "stopScreenCapture"

    .line 4565
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4566
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    if-eqz v0, :cond_0

    .line 4567
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->stopScreenCapture()V

    .line 4568
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->releaseHandler()V

    .line 4569
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->releaseVirtualDisplay()V

    .line 4570
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->interrupt()V

    const/4 v0, 0x0

    .line 4571
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V
    .locals 2

    const/4 v0, 0x0

    .line 4667
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f:Landroid/media/projection/MediaProjectionManager;

    .line 4668
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    if-eqz v1, :cond_0

    .line 4669
    invoke-virtual {v1}, Landroid/media/projection/MediaProjection;->stop()V

    .line 4671
    :cond_0
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    .line 4672
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->a:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    .line 4674
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->h:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;

    if-eqz v1, :cond_1

    .line 4675
    invoke-interface {v1}, Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;->onDestroy()V

    .line 4678
    :cond_1
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g:Ljava/lang/ref/WeakReference;

    .line 4679
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->d:Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    return-void
.end method

.method static synthetic n(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->n:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    return-object p0
.end method

.method static synthetic o(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Landroid/view/ViewGroup;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->k:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic p(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;

    return-object p0
.end method

.method static synthetic q(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->i:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    return-object p0
.end method


# virtual methods
.method protected initScreenListener()V
    .locals 2

    .line 767
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 769
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 771
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 773
    new-instance v1, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$3;

    invoke-direct {v1, p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$3;-><init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    .line 801
    invoke-virtual {p0, v1, v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 447
    new-instance p1, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-direct {p1, p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;-><init>(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;)V

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->i:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    .line 448
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->i:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 453
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "textScreenCaptureService onCreate() 111111111111"

    .line 454
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->initScreenListener()V

    .line 456
    sget v0, Lcom/neusoft/interconnection/utils/LinkConfig;->notificationId:I

    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->startForeground(ILandroid/app/Notification;)V

    .line 457
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getUpdateNotificationInterface()Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 458
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getUpdateNotificationInterface()Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;->updateNotification()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 516
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "onDestroy"

    .line 517
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 519
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->i:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->stopMirror()V

    .line 521
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->i:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->onDestroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    const-string v0, "textScreenCaptureService onStartCommand() 22222222"

    .line 465
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "code"

    const/4 v1, -0x1

    .line 467
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "data"

    .line 468
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 469
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->b()V

    .line 470
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    if-nez v2, :cond_1

    const-string v2, "mMediaProjection is setted "

    .line 471
    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 472
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->f:Landroid/media/projection/MediaProjectionManager;

    invoke-virtual {v2, v0, v1}, Landroid/media/projection/MediaProjectionManager;->getMediaProjection(ILandroid/content/Intent;)Landroid/media/projection/MediaProjection;

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    .line 474
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->c:Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->e:Landroid/media/projection/MediaProjection;

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->setMediaProjection(Landroid/media/projection/MediaProjection;)V

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;->g()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScreenCaptureService onStartCommand exception e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 482
    :cond_1
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
