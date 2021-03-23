.class public Lcom/neu/ssp/mirror/screencap/utils/MiUtil;
.super Ljava/lang/Object;
.source "MiUtil.java"


# static fields
.field public static main_activity_name:Ljava/lang/Class;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(I)I
    .locals 4

    ushr-int/lit8 v0, p0, 0x18

    const/16 v1, 0xff

    if-ge v0, v1, :cond_0

    if-eqz p0, :cond_0

    const v1, 0x4b7fffff    # 1.6777215E7f

    const/high16 v2, 0x3f800000    # 1.0f

    int-to-float v0, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v0, v3

    sub-float/2addr v2, v0

    mul-float v2, v2, v1

    const v1, 0xffffff

    and-int/2addr p0, v1

    int-to-float p0, p0

    mul-float p0, p0, v0

    add-float/2addr v2, p0

    float-to-int p0, v2

    :cond_0
    shr-int/lit8 v0, p0, 0x13

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0xb

    shr-int/lit8 v1, p0, 0xa

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x5

    or-int/2addr v0, v1

    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x1f

    or-int/2addr p0, v0

    return p0
.end method

.method private static a(S[BI)V
    .locals 2

    add-int/lit16 p2, p2, 0x200

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    .line 163
    aput-byte v1, p1, v0

    int-to-byte p0, p0

    .line 164
    aput-byte p0, p1, p2

    return-void
.end method

.method public static adjustPhotoRotation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .line 181
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, p1

    .line 182
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v3

    invoke-virtual {v0, v1, v2, v4}, Landroid/graphics/Matrix;->setRotate(FFF)V

    const/16 v1, 0x5a

    if-ne p1, v1, :cond_0

    .line 185
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/4 v1, 0x0

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    .line 189
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    :goto_0
    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 193
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v3, 0x2

    .line 195
    aget v3, v2, v3

    const/4 v4, 0x5

    .line 196
    aget v2, v2, v4

    sub-float/2addr p1, v3

    sub-float/2addr v1, v2

    .line 198
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 200
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 202
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 203
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 204
    invoke-virtual {v2, p0, v0, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    return-object p1
.end method

.method public static bitmap2RGB(Landroid/graphics/Bitmap;II[BI)[B
    .locals 10

    mul-int v0, p1, p2

    .line 106
    new-array v9, v0, [I

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v9

    move v4, p1

    move v7, p1

    move v8, p2

    .line 113
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    if-gt p1, p2, :cond_3

    const/16 v1, 0xb4

    if-ne v1, p4, :cond_2

    add-int/lit8 p2, p2, -0x1

    move p4, p2

    :goto_0
    if-ltz p4, :cond_7

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_1

    mul-int v1, p4, p1

    add-int/2addr v1, v0

    sub-int v2, p2, p4

    mul-int v2, v2, p1

    add-int/2addr v2, v0

    .line 121
    aget v1, v9, v1

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->a(I)I

    move-result v1

    int-to-short v1, v1

    shl-int/lit8 v2, v2, 0x1

    .line 123
    invoke-static {v1, p3, v2}, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->a(S[BI)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_2
    :goto_2
    if-ge p0, v0, :cond_7

    .line 129
    aget p1, v9, p0

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->a(I)I

    move-result p1

    int-to-short p1, p1

    shl-int/lit8 p2, p0, 0x1

    .line 131
    invoke-static {p1, p3, p2}, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->a(S[BI)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_3
    const/16 v0, 0x10e

    if-ne v0, p4, :cond_5

    add-int/lit8 p4, p1, -0x1

    move v0, p4

    :goto_3
    if-ltz v0, :cond_7

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p2, :cond_4

    mul-int v2, v1, p1

    add-int/2addr v2, v0

    sub-int v3, p4, v0

    mul-int v3, v3, p2

    add-int/2addr v3, v1

    .line 141
    aget v2, v9, v2

    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->a(I)I

    move-result v2

    int-to-short v2, v2

    shl-int/lit8 v3, v3, 0x1

    .line 143
    invoke-static {v2, p3, v3}, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->a(S[BI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_5
    :goto_5
    if-ge p0, p1, :cond_7

    add-int/lit8 p4, p2, -0x1

    move v0, p4

    :goto_6
    if-ltz v0, :cond_6

    mul-int v1, v0, p1

    add-int/2addr v1, p0

    sub-int v2, p4, v0

    mul-int v3, p0, p2

    add-int/2addr v2, v3

    .line 151
    aget v1, v9, v1

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->a(I)I

    move-result v1

    int-to-short v1, v1

    shl-int/lit8 v2, v2, 0x1

    .line 153
    invoke-static {v1, p3, v2}, Lcom/neu/ssp/mirror/screencap/utils/MiUtil;->a(S[BI)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_7
    return-object p3
.end method

.method public static bitmapChangeOri(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 12

    .line 211
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    .line 212
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    mul-int v0, v8, v9

    .line 214
    new-array v10, v0, [I

    .line 215
    new-array v11, v0, [I

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v10

    move v3, v8

    move v6, v8

    move v7, v9

    .line 216
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/4 p0, 0x0

    :goto_0
    if-ge p0, v8, :cond_1

    add-int/lit8 v0, v9, -0x1

    move v1, v0

    :goto_1
    if-ltz v1, :cond_0

    mul-int v2, v1, v8

    add-int/2addr v2, p0

    sub-int v3, v0, v1

    mul-int v4, p0, v9

    add-int/2addr v3, v4

    .line 223
    aget v2, v10, v2

    aput v2, v11, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 226
    :cond_1
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v9, v8, p0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, v11

    move v3, v9

    move v6, v9

    move v7, v8

    .line 227
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    return-object p0
.end method

.method public static calcMatrix(IIII)Landroid/graphics/Matrix;
    .locals 0

    int-to-float p2, p2

    int-to-float p0, p0

    div-float/2addr p2, p0

    int-to-float p0, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    .line 65
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 66
    invoke-virtual {p1, p2, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    return-object p1
.end method

.method public static getSDPath()Ljava/lang/String;
    .locals 2

    .line 45
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 48
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    .line 50
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isBackground(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "activity"

    .line 26
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 27
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 30
    iget-object v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "appProcess.importance ="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",context.getClass().getName()="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 31
    invoke-static {p0}, Lcom/neu/ssp/mirror/screencap/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 33
    iget p0, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v1, 0x64

    if-eq p0, v1, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const-string v0, "activity"

    .line 242
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/16 v0, 0x1e

    .line 243
    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object p0

    .line 244
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 247
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 248
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public static scaleBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;II)Landroid/graphics/Bitmap;
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move v3, p2

    move v4, p3

    move-object v5, p1

    .line 56
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method
