.class public abstract Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
.super Ljava/lang/Object;
.source "Keyframe.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:F

.field b:Ljava/lang/Class;

.field c:Z

.field private d:Landroid/view/animation/Interpolator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->d:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->c:Z

    return-void
.end method

.method public static ofFloat(F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
    .locals 1

    .line 124
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofFloat(FF)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
    .locals 1

    .line 108
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;-><init>(FF)V

    return-object v0
.end method

.method public static ofInt(F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
    .locals 1

    .line 92
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;-><init>(F)V

    return-object v0
.end method

.method public static ofInt(FI)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
    .locals 1

    .line 76
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;-><init>(FI)V

    return-object v0
.end method

.method public static ofObject(F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
    .locals 2

    .line 156
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$ObjectKeyframe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method

.method public static ofObject(FLjava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
    .locals 1

    .line 140
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$ObjectKeyframe;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$ObjectKeyframe;-><init>(FLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 38
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;

    move-result-object v0

    return-object v0
.end method

.method public getFraction()F
    .locals 1

    .line 191
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->a:F

    return v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->d:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->b:Ljava/lang/Class;

    return-object v0
.end method

.method public abstract getValue()Ljava/lang/Object;
.end method

.method public hasValue()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->c:Z

    return v0
.end method

.method public setFraction(F)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->a:F

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->d:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public abstract setValue(Ljava/lang/Object;)V
.end method
