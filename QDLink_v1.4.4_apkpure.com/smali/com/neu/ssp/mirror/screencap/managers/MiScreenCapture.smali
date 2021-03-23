.class public Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;
.super Ljava/lang/Thread;
.source "MiScreenCapture.java"


# static fields
.field private static final a:Ljava/lang/String; = "MiScreenCapture"

.field private static final b:Ljava/lang/String; = "video/avc"

.field private static final c:I = 0xc8

.field public static phoneHeight:I = 0x0

.field public static phoneWidth:I = 0x0

.field private static u:Z = false


# instance fields
.field private A:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

.field private B:Landroid/view/ViewGroup;

.field private C:I

.field private D:I

.field private E:I

.field private F:I

.field private G:Ljava/util/concurrent/locks/Lock;

.field private H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

.field private I:Ljava/lang/String;

.field private J:I

.field private K:Landroid/view/Surface;

.field private d:Landroid/content/Context;

.field private e:Landroid/media/projection/MediaProjection;

.field private f:Landroid/media/MediaCodec;

.field private volatile g:Landroid/hardware/display/VirtualDisplay;

.field private volatile h:Landroid/hardware/display/VirtualDisplay;

.field private i:Landroid/media/MediaCodec$BufferInfo;

.field private j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

.field private k:Z

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:[B

.field private s:[B

.field private t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

.field private v:Z

.field private w:Landroid/view/WindowManager;

.field private x:Landroid/hardware/display/DisplayManager;

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(IIILandroid/media/projection/MediaProjection;IIILandroid/content/Context;Landroid/view/ViewGroup;Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;)V
    .locals 2

    const-string v0, "MiScreenCapture"

    .line 111
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->k:Z

    const/4 v1, 0x0

    .line 64
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    .line 65
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    .line 66
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    .line 69
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    const/4 v1, -0x1

    .line 73
    iput v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    .line 74
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    .line 81
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->G:Ljava/util/concurrent/locks/Lock;

    .line 113
    iput-object p8, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    .line 115
    iput-object p9, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->B:Landroid/view/ViewGroup;

    .line 117
    iput p3, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->n:I

    .line 118
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->l:I

    .line 119
    iput p5, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->o:I

    .line 120
    iput p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->m:I

    .line 121
    iput-object p4, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e:Landroid/media/projection/MediaProjection;

    .line 122
    iput p6, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->p:I

    if-nez p4, :cond_0

    const-string p1, "MP IS NULL "

    .line 124
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "MP IS NOT NULL"

    .line 126
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 128
    :goto_0
    iput p7, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->q:I

    .line 129
    sput-boolean v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 131
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    const-string p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->w:Landroid/view/WindowManager;

    .line 132
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    const-string p2, "display"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->x:Landroid/hardware/display/DisplayManager;

    .line 134
    iput-object p10, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 1847
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1848
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p3}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p3

    int-to-float p3, p3

    div-float/2addr p2, p3

    cmpl-float p2, p1, p2

    if-lez p2, :cond_2

    .line 1849
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p2

    iget-object p3, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p3}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result p3

    if-le p2, p3, :cond_1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 1850
    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result p2

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result p2

    :goto_1
    iput p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->D:I

    .line 1851
    iget p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->D:I

    int-to-float p2, p2

    mul-float p2, p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->C:I

    goto :goto_3

    .line 1854
    :cond_2
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p2

    iget-object p3, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p3}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result p3

    if-le p2, p3, :cond_3

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 1855
    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result p2

    goto :goto_2

    :cond_3
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {p2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result p2

    :goto_2
    iput p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->C:I

    .line 1856
    iget p2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->C:I

    int-to-float p2, p2

    div-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->D:I

    .line 2644
    :goto_3
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    const-string p2, "sensor"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    if-nez p1, :cond_4

    const-string p1, "Method initSensorChangeListener failed"

    .line 2646
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p2, "initSensorChangeListener"

    .line 2649
    invoke-static {p2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 2650
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    .line 2651
    new-instance p3, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;

    invoke-direct {p3, p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;-><init>(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V

    const/4 p4, 0x3

    invoke-virtual {p1, p3, p2, p4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    return p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/media/MediaCodec;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    return-object p0
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;)Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->A:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    return-object p1
.end method

.method private a()V
    .locals 10

    .line 195
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e:Landroid/media/projection/MediaProjection;

    if-nez v0, :cond_0

    const-string v0, "mMediaProjection IS  NULL, SO RETURN!"

    .line 196
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void

    .line 200
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mScreenCapType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 201
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->p:I

    const v1, 0xf0001

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 2717
    :cond_1
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 2718
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mPresentationType : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 2719
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->q:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2745
    :pswitch_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_2

    .line 2746
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e:Landroid/media/projection/MediaProjection;

    iget v3, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->F:I

    iget v4, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->E:I

    iget v5, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->m:I

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    .line 2748
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "MiScreenCapture_display_presentation"

    .line 2746
    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g:Landroid/hardware/display/VirtualDisplay;

    .line 2749
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->b()V

    return-void

    .line 2751
    :cond_2
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_3

    .line 2723
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_3

    .line 2728
    iget v3, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->F:I

    iget v4, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->E:I

    iget v5, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->m:I

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    .line 2729
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "MiScreenCapture-display"

    .line 2728
    invoke-virtual/range {v1 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    .line 2736
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j()V

    .line 2738
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->b()V

    return-void

    .line 2740
    :cond_3
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf0011
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "csd-0"

    .line 266
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    const-string v0, "csd-1"

    .line 267
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    return-void
.end method

.method private a(Ljava/nio/ByteBuffer;)V
    .locals 13

    .line 379
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iput v1, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v0, :cond_1

    const/4 p1, 0x0

    .line 427
    :cond_1
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->J:I

    const-string v2, "start write sps pps data"

    const-string v3, "end write sps pps data"

    const/4 v4, 0x1

    const/16 v5, 0x30

    if-eqz v0, :cond_6

    if-eq v0, v4, :cond_2

    goto/16 :goto_1

    .line 516
    :cond_2
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    if-nez v0, :cond_5

    .line 517
    :cond_3
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v6, v0

    iget-object v7, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v7, v7

    add-int/2addr v6, v7

    add-int/lit8 v10, v6, 0x30

    .line 522
    new-array v8, v10, [B

    .line 523
    array-length v6, v0

    invoke-static {v0, v1, v8, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 524
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    iget-object v6, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v6, v6

    add-int/2addr v6, v5

    array-length v7, v0

    invoke-static {v0, v1, v8, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 527
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v0, :cond_4

    .line 528
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v0, v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v1, v1

    add-int v9, v0, v1

    iget v11, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v12, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 529
    invoke-static {v3}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 532
    :cond_4
    sput-boolean v4, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 533
    iput-boolean v4, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    :cond_5
    if-eqz p1, :cond_14

    .line 537
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 538
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 540
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v9, v0, 0x30

    .line 545
    new-array v7, v9, [B

    .line 546
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v7, v5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 547
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz p1, :cond_14

    .line 548
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v8, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v10, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v11, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    goto/16 :goto_1

    .line 430
    :cond_6
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->I:Ljava/lang/String;

    const/4 v6, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v7

    const v8, 0x191258

    if-eq v7, v8, :cond_7

    goto :goto_0

    :cond_7
    const-string v7, "5A5A"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v6, 0x0

    :cond_8
    :goto_0
    const/16 v0, 0x200

    if-eqz v6, :cond_e

    .line 471
    iget-boolean v5, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    if-eqz v5, :cond_9

    sget-boolean v5, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    if-nez v5, :cond_c

    .line 473
    :cond_9
    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v5, v5

    iget-object v6, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v6, v6

    add-int/2addr v5, v6

    add-int/lit16 v9, v5, 0x200

    .line 474
    rem-int/lit16 v5, v9, 0x200

    if-eqz v5, :cond_a

    rsub-int v5, v5, 0x200

    :cond_a
    add-int/2addr v5, v9

    .line 479
    new-array v7, v5, [B

    .line 480
    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v6, v5

    invoke-static {v5, v1, v7, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    iget-object v6, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v6, v6

    add-int/2addr v6, v0

    array-length v8, v5

    invoke-static {v5, v1, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 483
    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_b

    .line 486
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v2, v2

    add-int v8, v1, v2

    iget v10, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v11, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 487
    invoke-static {v3}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 490
    :cond_b
    sput-boolean v4, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 491
    iput-boolean v4, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    :cond_c
    if-eqz p1, :cond_14

    .line 496
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 497
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 499
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit16 v5, v1, 0x200

    .line 500
    rem-int/lit16 v1, v5, 0x200

    if-eqz v1, :cond_d

    rsub-int v1, v1, 0x200

    :cond_d
    add-int/2addr v1, v5

    .line 505
    new-array v3, v1, [B

    .line 506
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v3, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 507
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz p1, :cond_14

    .line 508
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v4, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v6, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v7, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    goto/16 :goto_1

    .line 433
    :cond_e
    iget-boolean v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    if-eqz v2, :cond_f

    sget-boolean v2, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    if-nez v2, :cond_12

    .line 434
    :cond_f
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v2, v2

    iget-object v6, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v6, v6

    add-int/2addr v2, v6

    add-int/lit8 v9, v2, 0x30

    .line 435
    rem-int/lit16 v2, v9, 0x200

    if-eqz v2, :cond_10

    rsub-int v2, v2, 0x200

    :cond_10
    add-int/2addr v2, v9

    .line 439
    new-array v7, v2, [B

    .line 440
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v6, v2

    invoke-static {v2, v1, v7, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 441
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    iget-object v6, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v6, v6

    add-int/2addr v6, v5

    array-length v8, v2

    invoke-static {v2, v1, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start write sps pps data sps.length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pps.length:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 444
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_11

    .line 445
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v2, v2

    add-int v8, v1, v2

    iget v10, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v11, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 446
    invoke-static {v3}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 449
    :cond_11
    sput-boolean v4, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 450
    iput-boolean v4, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    :cond_12
    if-eqz p1, :cond_14

    .line 454
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 455
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 457
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v9, v1, 0x30

    .line 458
    rem-int/lit16 v1, v9, 0x200

    if-eqz v1, :cond_13

    rsub-int v1, v1, 0x200

    :cond_13
    add-int/2addr v1, v9

    .line 462
    new-array v7, v1, [B

    .line 463
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {p1, v7, v5, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 464
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz p1, :cond_14

    .line 465
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v8, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v10, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v11, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    :cond_14
    :goto_1
    return-void
.end method

.method private a([BIIII)V
    .locals 12

    move-object v0, p0

    .line 828
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_1

    .line 829
    iget v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->q:I

    const v3, 0xf0011

    if-ne v2, v3, :cond_0

    const/4 v5, 0x1

    const/16 v6, 0x5a

    .line 830
    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 831
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result v7

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result v8

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 832
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result v9

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result v10

    const/4 v11, 0x1

    move-object v2, p1

    move v3, p2

    move v4, p3

    .line 830
    invoke-interface/range {v1 .. v11}, Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;->writeData([BIIIIIIIII)V

    return-void

    .line 834
    :cond_0
    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcWidth()I

    move-result v7

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 835
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcHeight()I

    move-result v8

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result v9

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 836
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result v10

    const/4 v11, 0x2

    move-object v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    .line 834
    invoke-interface/range {v1 .. v11}, Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;->writeData([BIIIIIIIII)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;I)I
    .locals 0

    .line 40
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    return p1
.end method

.method private b()V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    if-eqz v0, :cond_0

    .line 225
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->start()V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V
    .locals 17

    move-object/from16 v0, p0

    .line 5343
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    if-eqz v1, :cond_18

    const-string v1, "startEncode is used"

    .line 5346
    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    const-string v7, "textwang"

    const-string v1, "startEncode is used 11111"

    .line 5347
    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5349
    :try_start_0
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v2, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x2

    const/4 v10, 0x1

    if-ne v1, v2, :cond_1

    .line 6253
    iget-boolean v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->k:Z

    if-nez v1, :cond_0

    .line 6256
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "csd-0"

    .line 6266
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    iput-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    const-string v2, "csd-1"

    .line 6267
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    .line 6259
    iput-boolean v10, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->k:Z

    goto/16 :goto_9

    .line 6254
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output format already changed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz v1, :cond_17

    move v11, v1

    :goto_0
    if-ltz v11, :cond_17

    .line 5358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "while startEncode()  333333 index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "startEncodeTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5359
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1, v11}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 6379
    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v12, 0x0

    if-eqz v2, :cond_2

    .line 6380
    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iput v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 6383
    :cond_2
    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    move-object v13, v1

    .line 6427
    iget v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->J:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "start write sps pps data"

    const-string v14, "end write sps pps data"

    const/16 v15, 0x30

    if-eqz v1, :cond_8

    if-eq v1, v10, :cond_4

    goto/16 :goto_8

    .line 6516
    :cond_4
    :try_start_1
    iget-boolean v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    if-nez v1, :cond_7

    .line 6517
    :cond_5
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v3, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v4, v1, 0x30

    .line 6522
    new-array v3, v4, [B

    .line 6523
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    iget-object v5, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v5, v5

    invoke-static {v1, v12, v3, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6524
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    iget-object v5, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v5, v5

    add-int/2addr v5, v15

    iget-object v6, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v6, v6

    invoke-static {v1, v12, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6526
    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 6527
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_6

    .line 6528
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v2, v2

    add-int v5, v1, v2

    iget v6, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object v2, v3

    move v3, v5

    move v5, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 6529
    invoke-static {v14}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 6532
    :cond_6
    sput-boolean v10, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 6533
    iput-boolean v10, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    :cond_7
    if-eqz v13, :cond_16

    .line 6537
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6538
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6540
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v4, v1, 0x30

    .line 6545
    new-array v2, v4, [B

    .line 6546
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v13, v2, v15, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 6547
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_16

    .line 6548
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v6, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    goto/16 :goto_8

    .line 6430
    :cond_8
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->I:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x191258

    if-eq v4, v5, :cond_9

    goto :goto_1

    :cond_9
    const-string v4, "5A5A"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 v3, 0x0

    :cond_a
    :goto_1
    const/16 v6, 0x200

    if-eqz v3, :cond_10

    .line 6471
    iget-boolean v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    if-nez v1, :cond_b

    goto :goto_2

    :cond_b
    const/16 v15, 0x200

    goto :goto_4

    .line 6473
    :cond_c
    :goto_2
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v3, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v3, v3

    add-int/2addr v1, v3

    add-int/lit16 v4, v1, 0x200

    .line 6474
    rem-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_d

    rsub-int v1, v1, 0x200

    :cond_d
    add-int/2addr v1, v4

    .line 6479
    new-array v3, v1, [B

    .line 6480
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    iget-object v5, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v5, v5

    invoke-static {v1, v12, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6481
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    iget-object v5, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v5, v5

    add-int/2addr v5, v6

    iget-object v15, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v15, v15

    invoke-static {v1, v12, v3, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6483
    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 6484
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_e

    .line 6486
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v2, v2

    add-int v5, v1, v2

    iget v15, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object v2, v3

    move v3, v5

    move v5, v15

    const/16 v15, 0x200

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 6487
    invoke-static {v14}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    const/16 v15, 0x200

    .line 6490
    :goto_3
    sput-boolean v10, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 6491
    iput-boolean v10, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    :goto_4
    if-eqz v13, :cond_16

    .line 6496
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6497
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6499
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit16 v4, v1, 0x200

    .line 6500
    rem-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_f

    rsub-int v1, v1, 0x200

    :cond_f
    add-int/2addr v1, v4

    .line 6505
    new-array v2, v1, [B

    .line 6506
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v13, v2, v15, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 6507
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_16

    .line 6508
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v6, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    goto/16 :goto_8

    .line 6433
    :cond_10
    iget-boolean v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    if-eqz v1, :cond_12

    sget-boolean v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    if-nez v1, :cond_11

    goto :goto_5

    :cond_11
    const/16 v8, 0x200

    goto :goto_7

    .line 6434
    :cond_12
    :goto_5
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v4, v1, 0x30

    .line 6435
    rem-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_13

    rsub-int v1, v1, 0x200

    :cond_13
    add-int/2addr v1, v4

    .line 6439
    new-array v2, v1, [B

    .line 6440
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    iget-object v3, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v3, v3

    invoke-static {v1, v12, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6441
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    iget-object v3, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v3, v3

    add-int/2addr v3, v15

    iget-object v5, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v5, v5

    invoke-static {v1, v12, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start write sps pps data sps.length:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",pps.length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 6444
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_14

    .line 6445
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v3, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v3, v3

    add-int/2addr v3, v1

    iget v5, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move/from16 v16, v1

    move-object/from16 v1, p0

    const/16 v8, 0x200

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 6446
    invoke-static {v14}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_14
    const/16 v8, 0x200

    .line 6449
    :goto_6
    sput-boolean v10, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 6450
    iput-boolean v10, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    :goto_7
    if-eqz v13, :cond_16

    .line 6454
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6455
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 6457
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v4, v1, 0x30

    .line 6458
    rem-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_15

    rsub-int v1, v1, 0x200

    :cond_15
    add-int/2addr v1, v4

    .line 6462
    new-array v2, v1, [B

    .line 6463
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v13, v2, v15, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 6464
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_16

    .line 6465
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v6, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 5360
    :cond_16
    :goto_8
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1, v11, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 5361
    iget-object v1, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    iget-object v2, v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v8, v3

    goto/16 :goto_0

    :cond_17
    return-void

    :catch_0
    move-exception v0

    .line 5367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 5368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScreenCapture startEncode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    :cond_18
    :goto_9
    return-void
.end method

.method static synthetic c(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/view/WindowManager;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->w:Landroid/view/WindowManager;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 253
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->k:Z

    if-nez v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "csd-0"

    .line 3266
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    const-string v1, "csd-1"

    .line 3267
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    const/4 v0, 0x1

    .line 259
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->k:Z

    return-void

    .line 254
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output format already changed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic d(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    return p0
.end method

.method private d()V
    .locals 5

    const-string v0, "prepareEncoder"

    .line 274
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 276
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->l()V

    .line 280
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 281
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result v1

    const-string v2, "video/avc"

    .line 280
    invoke-static {v2, v0, v1}, Landroid/media/MediaFormat;->createVideoFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "color-format"

    const v3, 0x7f000789

    .line 282
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 283
    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->l:I

    const-string v3, "bitrate"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 284
    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->n:I

    const/16 v3, 0x18

    const-string v4, "frame-rate"

    if-lez v1, :cond_0

    .line 285
    invoke-virtual {v0, v4, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    goto :goto_0

    .line 287
    :cond_0
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 289
    :goto_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v3, :cond_1

    const-string v1, "intra-refresh-period"

    const-string v3, "intra-refresh"

    .line 290
    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v1, v3, :cond_2

    const-string v1, "profile"

    .line 293
    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/16 v1, 0x200

    const-string v3, "level"

    .line 294
    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_2
    const-string v1, "bitrate-mode"

    .line 296
    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v1, "complexity"

    .line 297
    invoke-virtual {v0, v1, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 298
    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->o:I

    const-string v3, "i-frame-interval"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 301
    :try_start_0
    invoke-static {v2}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    .line 302
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2, v4}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 303
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    if-eqz v0, :cond_3

    const-string v0, "prepareEncoder() mEncoder != null"

    .line 304
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->K:Landroid/view/Surface;

    .line 306
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->start()V

    goto :goto_1

    :cond_3
    const-string v0, "prepareEncoder() mEncoder == null"

    .line 308
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "prepareEncoder() e.printStackTrace():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic e(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    return-object p0
.end method

.method private e()V
    .locals 7

    .line 321
    new-instance v6, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->K:Landroid/view/Surface;

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->F:I

    iget v3, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->E:I

    iget v4, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->n:I

    new-instance v5, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$1;

    invoke-direct {v5, p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$1;-><init>(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;-><init>(Landroid/view/Surface;IIILcom/neu/ssp/mirror/screencap/glec/EGLRender$onFrameCallBack;)V

    iput-object v6, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    return-void
.end method

.method static synthetic f(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/content/Context;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    return-object p0
.end method

.method private f()V
    .locals 17

    move-object/from16 v7, p0

    .line 343
    iget-object v0, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "startEncode is used"

    .line 346
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    const-string v0, "textwang"

    const-string v1, "startEncode is used 11111"

    .line 347
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    :try_start_0
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v8, 0xc8

    invoke-virtual {v1, v2, v8, v9}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    const/4 v2, -0x2

    const/4 v10, 0x1

    if-ne v1, v2, :cond_2

    .line 4253
    iget-boolean v0, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->k:Z

    if-nez v0, :cond_1

    .line 4256
    iget-object v0, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "csd-0"

    .line 4266
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iput-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    const-string v1, "csd-1"

    .line 4267
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iput-object v0, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    .line 4259
    iput-boolean v10, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->k:Z

    goto/16 :goto_9

    .line 4254
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output format already changed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ltz v1, :cond_18

    move v11, v1

    :goto_0
    if-ltz v11, :cond_18

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "while startEncode()  333333 index:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "startEncodeTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1, v11}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 4379
    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    const/4 v12, 0x0

    if-eqz v2, :cond_3

    .line 4380
    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iput v12, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 4383
    :cond_3
    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v2, :cond_4

    const/4 v1, 0x0

    :cond_4
    move-object v13, v1

    .line 4427
    iget v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->J:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "start write sps pps data"

    const-string v14, "end write sps pps data"

    const/16 v15, 0x30

    if-eqz v1, :cond_9

    if-eq v1, v10, :cond_5

    goto/16 :goto_8

    .line 4516
    :cond_5
    :try_start_1
    iget-boolean v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    if-nez v1, :cond_8

    .line 4517
    :cond_6
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v3, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v3, v3

    add-int/2addr v1, v3

    add-int/lit8 v4, v1, 0x30

    .line 4522
    new-array v3, v4, [B

    .line 4523
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    iget-object v5, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v5, v5

    invoke-static {v1, v12, v3, v15, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4524
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    iget-object v5, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v5, v5

    add-int/2addr v5, v15

    iget-object v6, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v6, v6

    invoke-static {v1, v12, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4526
    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4527
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_7

    .line 4528
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v2, v2

    add-int v5, v1, v2

    iget v6, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object v2, v3

    move v3, v5

    move v5, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 4529
    invoke-static {v14}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4532
    :cond_7
    sput-boolean v10, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 4533
    iput-boolean v10, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    :cond_8
    if-eqz v13, :cond_17

    .line 4537
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4538
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4540
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v4, v1, 0x30

    .line 4545
    new-array v2, v4, [B

    .line 4546
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v13, v2, v15, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4547
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_17

    .line 4548
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v6, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    goto/16 :goto_8

    .line 4430
    :cond_9
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->I:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x191258

    if-eq v4, v5, :cond_a

    goto :goto_1

    :cond_a
    const-string v4, "5A5A"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const/4 v3, 0x0

    :cond_b
    :goto_1
    const/16 v6, 0x200

    if-eqz v3, :cond_11

    .line 4471
    iget-boolean v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    if-eqz v1, :cond_d

    sget-boolean v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    if-nez v1, :cond_c

    goto :goto_2

    :cond_c
    const/16 v15, 0x200

    goto :goto_4

    .line 4473
    :cond_d
    :goto_2
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v3, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v3, v3

    add-int/2addr v1, v3

    add-int/lit16 v4, v1, 0x200

    .line 4474
    rem-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_e

    rsub-int v1, v1, 0x200

    :cond_e
    add-int/2addr v1, v4

    .line 4479
    new-array v3, v1, [B

    .line 4480
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    iget-object v5, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v5, v5

    invoke-static {v1, v12, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4481
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    iget-object v5, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v5, v5

    add-int/2addr v5, v6

    iget-object v15, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v15, v15

    invoke-static {v1, v12, v3, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4483
    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4484
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_f

    .line 4486
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v2, v2

    add-int v5, v1, v2

    iget v15, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    move/from16 v16, v2

    move-object v2, v3

    move v3, v5

    move v5, v15

    const/16 v15, 0x200

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 4487
    invoke-static {v14}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    const/16 v15, 0x200

    .line 4490
    :goto_3
    sput-boolean v10, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 4491
    iput-boolean v10, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    :goto_4
    if-eqz v13, :cond_17

    .line 4496
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4497
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4499
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit16 v4, v1, 0x200

    .line 4500
    rem-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_10

    rsub-int v1, v1, 0x200

    :cond_10
    add-int/2addr v1, v4

    .line 4505
    new-array v2, v1, [B

    .line 4506
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v13, v2, v15, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4507
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_17

    .line 4508
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v6, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    goto/16 :goto_8

    .line 4433
    :cond_11
    iget-boolean v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    if-eqz v1, :cond_13

    sget-boolean v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    if-nez v1, :cond_12

    goto :goto_5

    :cond_12
    const/16 v8, 0x200

    goto :goto_7

    .line 4434
    :cond_13
    :goto_5
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v4, v1, 0x30

    .line 4435
    rem-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_14

    rsub-int v1, v1, 0x200

    :cond_14
    add-int/2addr v1, v4

    .line 4439
    new-array v2, v1, [B

    .line 4440
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    iget-object v3, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v3, v3

    invoke-static {v1, v12, v2, v15, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4441
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    iget-object v3, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v3, v3

    add-int/2addr v3, v15

    iget-object v5, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v5, v5

    invoke-static {v1, v12, v2, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start write sps pps data sps.length:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",pps.length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 4444
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_15

    .line 4445
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->r:[B

    array-length v1, v1

    iget-object v3, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->s:[B

    array-length v3, v3

    add-int/2addr v3, v1

    iget v5, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move/from16 v16, v1

    move-object/from16 v1, p0

    const/16 v8, 0x200

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 4446
    invoke-static {v14}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    const/16 v8, 0x200

    .line 4449
    :goto_6
    sput-boolean v10, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    .line 4450
    iput-boolean v10, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->v:Z

    :goto_7
    if-eqz v13, :cond_17

    .line 4454
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 4455
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v2, v2, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v2

    invoke-virtual {v13, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 4457
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/lit8 v4, v1, 0x30

    .line 4458
    rem-int/lit16 v1, v4, 0x200

    if-eqz v1, :cond_16

    rsub-int v1, v1, 0x200

    :cond_16
    add-int/2addr v1, v4

    .line 4462
    new-array v2, v1, [B

    .line 4463
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-virtual {v13, v2, v15, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 4464
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    if-eqz v1, :cond_17

    .line 4465
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget v5, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->y:I

    iget v6, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->z:I

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a([BIIII)V

    .line 360
    :cond_17
    :goto_8
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v1, v11, v12}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 361
    iget-object v1, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    iget-object v2, v7, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->i:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-wide v8, v3

    goto/16 :goto_0

    :cond_18
    return-void

    :catch_0
    move-exception v0

    .line 367
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ScreenCapture startEncode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    :goto_9
    return-void
.end method

.method static synthetic g(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/hardware/display/VirtualDisplay;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    return-object p0
.end method

.method private g()V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->A:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    if-eqz v0, :cond_0

    .line 602
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->dismiss()V

    const/4 v0, 0x0

    .line 603
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->A:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->C:I

    return p0
.end method

.method private h()V
    .locals 4

    .line 644
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-nez v0, :cond_0

    const-string v0, "Method initSensorChangeListener failed"

    .line 646
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "initSensorChangeListener"

    .line 649
    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 650
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 651
    new-instance v2, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;

    invoke-direct {v2, p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$2;-><init>(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v1, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    return-void
.end method

.method static synthetic i(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->D:I

    return p0
.end method

.method private i()V
    .locals 10

    .line 717
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/display/DisplayManager;

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "mPresentationType : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 719
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->q:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 745
    :pswitch_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_0

    .line 746
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e:Landroid/media/projection/MediaProjection;

    iget v3, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->F:I

    iget v4, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->E:I

    iget v5, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->m:I

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    .line 748
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "MiScreenCapture_display_presentation"

    .line 746
    invoke-virtual/range {v1 .. v9}, Landroid/media/projection/MediaProjection;->createVirtualDisplay(Ljava/lang/String;IIIILandroid/view/Surface;Landroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g:Landroid/hardware/display/VirtualDisplay;

    .line 749
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->b()V

    return-void

    .line 751
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_1

    .line 723
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    if-nez v0, :cond_1

    .line 728
    iget v3, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->F:I

    iget v4, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->E:I

    iget v5, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->m:I

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    .line 729
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "MiScreenCapture-display"

    .line 728
    invoke-virtual/range {v1 .. v9}, Landroid/hardware/display/DisplayManager;->createVirtualDisplay(Ljava/lang/String;IIILandroid/view/Surface;ILandroid/hardware/display/VirtualDisplay$Callback;Landroid/os/Handler;)Landroid/hardware/display/VirtualDisplay;

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    .line 736
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j()V

    .line 738
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->b()V

    return-void

    .line 740
    :cond_1
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->getDecodeSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/display/VirtualDisplay;->setSurface(Landroid/view/Surface;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf0011
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic j(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)I
    .locals 0

    .line 40
    iget p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->p:I

    return p0
.end method

.method private j()V
    .locals 2

    .line 767
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;

    invoke-direct {v1, p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$3;-><init>(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 782
    invoke-virtual {v0}, Landroid/view/WindowManager$InvalidDisplayException;->printStackTrace()V

    return-void
.end method

.method static synthetic k(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Landroid/view/ViewGroup;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->B:Landroid/view/ViewGroup;

    return-object p0
.end method

.method private k()V
    .locals 3

    .line 847
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 848
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    cmpl-float v1, v0, v1

    if-lez v1, :cond_1

    .line 849
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result v1

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 850
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight()I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->D:I

    .line 851
    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->D:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->C:I

    return-void

    .line 854
    :cond_1
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result v1

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result v2

    if-le v1, v2, :cond_2

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    .line 855
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth()I

    move-result v1

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result v1

    :goto_1
    iput v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->C:I

    .line 856
    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->C:I

    int-to-float v1, v1

    div-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->D:I

    return-void
.end method

.method static synthetic l(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->A:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 862
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->q:I

    const v1, 0xf0012

    if-ne v1, v0, :cond_0

    .line 864
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcHeight()I

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->E:I

    .line 865
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcWidth()I

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->F:I

    return-void

    .line 868
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarHeight()I

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->E:I

    .line 869
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->H:Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarWidth()I

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->F:I

    return-void
.end method

.method public static resetSpsFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 620
    sput-boolean v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->u:Z

    return-void
.end method


# virtual methods
.method public changeDisplayToArOrFa(Z)V
    .locals 0

    .line 810
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g()V

    .line 811
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j()V

    .line 813
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->resumeScreenCapture()V

    if-eqz p1, :cond_0

    .line 815
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->A:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    if-eqz p1, :cond_1

    .line 816
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->changeToArOrFa()V

    return-void

    .line 818
    :cond_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->A:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    if-eqz p1, :cond_1

    .line 819
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->changeToNor()V

    :cond_1
    return-void
.end method

.method public getSecondDisplay()Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->A:Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;

    return-object v0
.end method

.method public releaseHandler()V
    .locals 2

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 567
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 569
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->f:Landroid/media/MediaCodec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 575
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public releaseVirtualDisplay()V
    .locals 2

    .line 587
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g()V

    .line 589
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g:Landroid/hardware/display/VirtualDisplay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 590
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 591
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->g:Landroid/hardware/display/VirtualDisplay;

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    if-eqz v0, :cond_1

    .line 595
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    invoke-virtual {v0}, Landroid/hardware/display/VirtualDisplay;->release()V

    .line 596
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->h:Landroid/hardware/display/VirtualDisplay;

    :cond_1
    return-void
.end method

.method public resetContext(Landroid/content/Context;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    return-void
.end method

.method public resetSecondViewGroup(Landroid/view/ViewGroup;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->B:Landroid/view/ViewGroup;

    return-void
.end method

.method public restartRecordScreen()V
    .locals 2

    .line 230
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->p:I

    const v1, 0xf0001

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->b()V

    :goto_0
    return-void
.end method

.method public resumeScreenCapture()V
    .locals 0

    .line 628
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->stopScreenCapture()V

    .line 629
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->releaseHandler()V

    .line 630
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->resetSpsFlag()V

    .line 632
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d()V

    .line 633
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e()V

    .line 634
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a()V

    .line 635
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->restartRecordScreen()V

    return-void
.end method

.method public run()V
    .locals 1

    const-string v0, "MiScreenCapture is run  "

    .line 214
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 215
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d()V

    .line 216
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e()V

    .line 217
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->a()V

    return-void
.end method

.method public screenCaptureDestroy()V
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e:Landroid/media/projection/MediaProjection;

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {v0}, Landroid/media/projection/MediaProjection;->stop()V

    :cond_0
    return-void
.end method

.method public setDataWriteChannel(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)V
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->j:Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;

    return-void
.end method

.method public setLinkMode(I)V
    .locals 0

    .line 245
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->J:I

    return-void
.end method

.method public setMediaProjection(Landroid/media/projection/MediaProjection;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->e:Landroid/media/projection/MediaProjection;

    return-void
.end method

.method public setPresentationType(I)V
    .locals 0

    .line 705
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->q:I

    return-void
.end method

.method public setProtocolType(Ljava/lang/String;)V
    .locals 0

    .line 249
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->I:Ljava/lang/String;

    return-void
.end method

.method public final stopScreenCapture()V
    .locals 2

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 179
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->stop()V

    .line 181
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/glec/EGLRender;->release()V

    const/4 v0, 0x0

    .line 182
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->t:Lcom/neu/ssp/mirror/screencap/glec/EGLRender;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->G:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public updateH264VirtualDisplay(Landroid/view/ViewGroup;)V
    .locals 1

    .line 788
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->B:Landroid/view/ViewGroup;

    .line 790
    :try_start_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;->d:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    new-instance v0, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$4;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture$4;-><init>(Lcom/neu/ssp/mirror/screencap/managers/MiScreenCapture;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 799
    invoke-virtual {p1}, Landroid/view/WindowManager$InvalidDisplayException;->printStackTrace()V

    return-void
.end method
