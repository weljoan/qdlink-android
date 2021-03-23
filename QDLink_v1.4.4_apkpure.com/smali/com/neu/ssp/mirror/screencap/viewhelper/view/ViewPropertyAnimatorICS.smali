.class Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.source "ViewPropertyAnimatorICS.java"


# static fields
.field private static final a:J = -0x1L


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 22
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public alpha(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public alphaBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 293
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->alphaBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public cancel()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 116
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 37
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->getStartDelay()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public rotation(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationXBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public rotationYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->rotationYBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public scaleX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public scaleXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleXBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public scaleY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 268
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public scaleYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->scaleYBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public setListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 76
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 78
    :cond_0
    new-instance v1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS$1;

    invoke-direct {v1, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS$1;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-object p0
.end method

.method public setStartDelay(J)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public start()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_0
    return-void
.end method

.method public translationX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public translationXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationXBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public translationY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public translationYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 241
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->translationYBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public x(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public xBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->xBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public y(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method

.method public yBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewPropertyAnimator;

    if-eqz v0, :cond_0

    .line 151
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->yBy(F)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-object p0
.end method
