.class Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;
.source "FloatKeyframeSet.java"


# instance fields
.field private e:F

.field private f:F

.field private g:F

.field private h:Z


# direct methods
.method public varargs constructor <init>([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;-><init>([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)V

    const/4 p1, 0x1

    .line 39
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->h:Z

    return-void
.end method


# virtual methods
.method public clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    .line 53
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 54
    new-array v2, v1, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    .line 56
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;

    invoke-virtual {v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;

    move-result-object v4

    check-cast v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    invoke-direct {v0, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;-><init>([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;)V

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getFloatValue(F)F
    .locals 5

    .line 63
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_3

    .line 64
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->h:Z

    if-eqz v0, :cond_0

    .line 65
    iput-boolean v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->h:Z

    .line 66
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->e:F

    .line 67
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v0

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->f:F

    .line 68
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->f:F

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->e:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->g:F

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->b:Landroid/view/animation/Interpolator;

    if-eqz v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->d:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    if-nez v0, :cond_2

    .line 74
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->e:F

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->g:F

    :goto_0
    mul-float p1, p1, v1

    add-float/2addr v0, p1

    return v0

    .line 76
    :cond_2
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->d:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->e:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->f:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_3
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_6

    .line 80
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    .line 81
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    .line 82
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 83
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 84
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v0

    .line 85
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    .line 86
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 88
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_4
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 91
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->d:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    if-nez v0, :cond_5

    :goto_1
    sub-float/2addr v3, v2

    mul-float p1, p1, v3

    add-float/2addr v2, p1

    return v2

    :cond_5
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->d:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    .line 93
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 94
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_6
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_9

    .line 96
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->a:I

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    .line 97
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    iget v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->a:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    .line 98
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v2

    .line 99
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v3

    .line 100
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v0

    .line 101
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    .line 102
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 104
    invoke-interface {v1, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    :cond_7
    sub-float/2addr p1, v0

    sub-float/2addr v4, v0

    div-float/2addr p1, v4

    .line 107
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->d:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->d:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    .line 109
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 110
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    .line 112
    :cond_9
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    move-object v1, v0

    const/4 v0, 0x1

    .line 113
    :goto_2
    iget v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->a:I

    if-ge v0, v2, :cond_d

    .line 114
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;

    .line 115
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v4

    cmpg-float v4, p1, v4

    if-gez v4, :cond_c

    .line 116
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 118
    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 120
    :cond_a
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v0

    sub-float/2addr p1, v0

    .line 121
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v0

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFraction()F

    move-result v3

    sub-float/2addr v0, v3

    div-float/2addr p1, v0

    .line 122
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v0

    .line 123
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe$FloatKeyframe;->getFloatValue()F

    move-result v1

    .line 124
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->d:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    if-nez v2, :cond_b

    sub-float/2addr v1, v0

    goto/16 :goto_0

    :cond_b
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->d:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    .line 126
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v2, p1, v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    .line 127
    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1

    :cond_c
    add-int/lit8 v0, v0, 0x1

    move-object v1, v2

    goto :goto_2

    .line 132
    :cond_d
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->c:Ljava/util/ArrayList;

    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->a:I

    sub-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    return p1
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;->getFloatValue(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method
