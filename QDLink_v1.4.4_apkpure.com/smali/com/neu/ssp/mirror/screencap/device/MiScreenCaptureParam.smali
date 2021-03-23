.class public Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;
.super Ljava/lang/Object;
.source "MiScreenCaptureParam.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x2a3000

    .line 9
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->a:I

    const/16 v0, 0x2d0

    .line 10
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->b:I

    const/16 v0, 0x500

    .line 11
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->c:I

    const/16 v0, 0x18

    .line 12
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->d:I

    const/4 v0, 0x1

    .line 13
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->e:I

    const/4 v0, 0x4

    .line 14
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->f:I

    const v0, 0xf0001

    .line 16
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->h:I

    return-void
.end method


# virtual methods
.method public getBitrate()I
    .locals 1

    .line 43
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->a:I

    return v0
.end method

.method public getDPI()I
    .locals 1

    .line 55
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->e:I

    return v0
.end method

.method public getFrameInterval()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->f:I

    return v0
.end method

.method public getFrameRate()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->d:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 51
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->b:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 47
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->c:I

    return v0
.end method

.method public getiFrameBit()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->g:I

    return v0
.end method

.method public getiScreenCapType()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->h:I

    return v0
.end method

.method public setBitrate(I)V
    .locals 0

    .line 19
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->a:I

    return-void
.end method

.method public setDPI(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->e:I

    return-void
.end method

.method public setFrameInterval(I)V
    .locals 0

    .line 39
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->f:I

    return-void
.end method

.method public setFrameRate(I)V
    .locals 0

    .line 35
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->d:I

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    .line 27
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->b:I

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    .line 23
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->c:I

    return-void
.end method

.method public setiFrameBit(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->g:I

    return-void
.end method

.method public setiScreenCapType(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->h:I

    return-void
.end method
