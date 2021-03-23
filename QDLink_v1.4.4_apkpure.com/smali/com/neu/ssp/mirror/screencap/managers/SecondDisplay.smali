.class public Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;
.super Landroid/app/Presentation;
.source "SecondDisplay.java"


# static fields
.field public static final FLAG_NOTCH_SUPPORT:I = 0x10000


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/ViewGroup;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:[Landroid/view/MotionEvent$PointerProperties;

.field private k:[Landroid/view/MotionEvent$PointerCoords;

.field private l:J

.field private m:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/Display;IIIIIII)V
    .locals 1

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/16 p2, 0xa

    new-array v0, p2, [Landroid/view/MotionEvent$PointerProperties;

    .line 169
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->j:[Landroid/view/MotionEvent$PointerProperties;

    new-array p2, p2, [Landroid/view/MotionEvent$PointerCoords;

    .line 174
    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->k:[Landroid/view/MotionEvent$PointerCoords;

    .line 177
    new-instance p2, Landroid/app/Instrumentation;

    invoke-direct {p2}, Landroid/app/Instrumentation;-><init>()V

    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->m:Landroid/app/Instrumentation;

    .line 53
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->a:Ljava/lang/ref/WeakReference;

    .line 54
    iput p3, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->c:I

    .line 55
    iput p4, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->d:I

    .line 56
    iput p5, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->e:I

    .line 57
    iput p6, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->f:I

    .line 58
    iput p7, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->g:I

    .line 59
    iput p8, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->h:I

    .line 60
    iput p9, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->i:I

    .line 61
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0x7ee

    .line 64
    invoke-virtual {p1, p2}, Landroid/view/Window;->setType(I)V

    const/high16 p2, 0x1000000

    .line 65
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/high16 p2, 0x10000000

    .line 66
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    const/high16 p2, 0x480000

    .line 67
    invoke-virtual {p1, p2}, Landroid/view/Window;->addFlags(I)V

    .line 70
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p2

    .line 72
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x1c

    const/4 p5, 0x1

    if-lt p3, p4, :cond_0

    .line 73
    iput p5, p2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    :try_start_0
    const-string p1, "com.huawei.android.view.LayoutParamsEx"

    .line 79
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    new-array p3, p5, [Ljava/lang/Class;

    .line 80
    const-class p4, Landroid/view/WindowManager$LayoutParams;

    const/4 p6, 0x0

    aput-object p4, p3, p6

    invoke-virtual {p1, p3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p3

    new-array p4, p5, [Ljava/lang/Object;

    aput-object p2, p4, p6

    .line 81
    invoke-virtual {p3, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    const-string p3, "addHwFlags"

    new-array p4, p5, [Ljava/lang/Class;

    .line 82
    sget-object p7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p7, p4, p6

    invoke-virtual {p1, p3, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array p3, p5, [Ljava/lang/Object;

    const/high16 p4, 0x10000

    .line 83
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, p6

    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p1, "other Exception"

    .line 88
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    const-string p1, "hw add notch screen flag api error"

    .line 86
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a()V
    .locals 3

    .line 320
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 321
    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->g:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 322
    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->h:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 323
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 326
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->changeToArOrFa()V

    goto :goto_0

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->changeToNor()V

    .line 332
    :goto_0
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->i:I

    const v1, 0xf0002

    if-ne v0, v1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 334
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    return-void

    .line 336
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mLong:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mTempScreenLong:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mShort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mTempScreenShort:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 337
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->c:I

    int-to-float v1, v1

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->g:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setScaleX(Landroid/view/View;F)V

    .line 338
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->h:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setScaleY(Landroid/view/View;F)V

    return-void
.end method


# virtual methods
.method public changeToArOrFa()V
    .locals 2

    const-string v0, "changeToArOrFa"

    .line 304
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->g:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 306
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    return-void
.end method

.method public changeToNor()V
    .locals 2

    const-string v0, "changeToNor"

    .line 313
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setPivotX(Landroid/view/View;F)V

    .line 315
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-static {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewHelper;->setPivotY(Landroid/view/View;F)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 114
    invoke-super {p0, p1}, Landroid/app/Presentation;->onCreate(Landroid/os/Bundle;)V

    .line 115
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->showViewToPage()V

    .line 117
    sget-object p1, Lcom/neusoft/interconnection/utils/LinkConfig;->CurrentLink:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2829c1b8

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x712dd353

    if-eq v0, v1, :cond_1

    const v1, 0x78cd64aa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DTLink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "QDriveLink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const-string v0, "BEIJINGLink"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    if-eq p1, v2, :cond_4

    goto :goto_2

    .line 120
    :cond_4
    new-instance p1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay$1;

    invoke-direct {p1, p0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay$1;-><init>(Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;)V

    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :goto_2
    return-void
.end method

.method public onDispatchTouchEvent(Landroid/view/MotionEvent;)V
    .locals 8

    .line 154
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    .line 156
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->g:I

    int-to-float v6, v6

    iget v7, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->c:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v6, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->h:I

    int-to-float v6, v6

    iget v7, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->d:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    mul-float v6, v6, p1

    const/4 v7, 0x0

    .line 154
    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public onDispatchTouchEvent(Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;)V
    .locals 23

    move-object/from16 v1, p0

    const-string v2, "textwang"

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 188
    iput-wide v5, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->l:J

    .line 190
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "onDispatchTouchEvent touchEvent.getAction() :"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getAciton()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",fingerCount:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getFingerCount()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getX()F

    move-result v3

    iget v7, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->g:I

    int-to-float v7, v7

    iget v8, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->c:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v3, v3, v7

    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 193
    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getY()F

    move-result v3

    iget v7, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->h:I

    int-to-float v7, v7

    iget v8, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->d:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    mul-float v3, v3, v7

    iput v3, v0, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 195
    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    .line 196
    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {v7}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getX()F

    move-result v7

    iget v9, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->g:I

    int-to-float v9, v9

    iget v10, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->c:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v7, v7, v9

    iput v7, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 197
    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {v7}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getY()F

    move-result v7

    iget v9, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->h:I

    int-to-float v9, v9

    iget v10, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->d:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    mul-float v7, v7, v9

    iput v7, v3, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 199
    new-instance v7, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v7}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {v9}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getID()B

    move-result v9

    iput v9, v7, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 201
    new-instance v9, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v9}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    .line 202
    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {v10}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getID()B

    move-result v10

    iput v10, v9, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 204
    iget-wide v10, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->l:J

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getAciton()I

    move-result v12

    .line 207
    invoke-virtual/range {p1 .. p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getFingerCount()B

    move-result v13

    const/4 v14, 0x2

    new-array v15, v14, [Landroid/view/MotionEvent$PointerProperties;

    aput-object v7, v15, v4

    aput-object v9, v15, v8

    new-array v14, v14, [Landroid/view/MotionEvent$PointerCoords;

    aput-object v0, v14, v4

    aput-object v3, v14, v8

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x3f800000    # 1.0f

    const/high16 v18, 0x3f800000    # 1.0f

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1002

    const/16 v22, 0x0

    move-wide v3, v10

    move v7, v12

    move v8, v13

    move-object v9, v15

    move-object v10, v14

    move v11, v0

    move/from16 v12, v16

    move/from16 v13, v17

    move/from16 v14, v18

    move/from16 v15, v19

    move/from16 v16, v20

    move/from16 v17, v21

    move/from16 v18, v22

    .line 204
    invoke-static/range {v3 .. v18}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v0

    .line 220
    iget-object v3, v1, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 223
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onDispatchTouchEvent two finger exception :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPresentationView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    return-void
.end method

.method public showViewToPage()V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 293
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 295
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->setContentView(Landroid/view/View;)V

    .line 297
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->a()V

    return-void
.end method

.method public updatePresentationView(Landroid/view/ViewGroup;)V
    .locals 2

    .line 344
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 345
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    .line 346
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->b:Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->setContentView(Landroid/view/View;)V

    .line 348
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/managers/SecondDisplay;->a()V

    return-void
.end method
