.class Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
.source "Keyframe.java"


# instance fields
.field private d:I


# direct methods
.method constructor <init>(F)V
    .locals 0

    .line 289
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;-><init>()V

    .line 290
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->a:F

    .line 291
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->b:Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(FI)V
    .locals 0

    .line 282
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;-><init>()V

    .line 283
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->a:F

    .line 284
    iput p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->d:I

    .line 285
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->b:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 286
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->c:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;
    .locals 3

    .line 311
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;

    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v1

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->d:I

    invoke-direct {v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;-><init>(FI)V

    .line 312
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 275
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->d:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 299
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 303
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    .line 304
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->d:I

    const/4 p1, 0x1

    .line 305
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$IntKeyframe;->c:Z

    :cond_0
    return-void
.end method
