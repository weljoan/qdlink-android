.class Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorPreHC.java"

# interfaces
.implements Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;
.implements Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;


# direct methods
.method private constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;B)V
    .locals 0

    .line 638
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 650
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 1

    .line 663
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->c(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->c(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 671
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 1

    .line 656
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;)V
    .locals 6

    .line 692
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 693
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->c(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$PropertyBundle;

    .line 694
    iget v1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$PropertyBundle;->a:I

    and-int/lit16 v1, v1, 0x1ff

    if-eqz v1, :cond_0

    .line 696
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->d(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 701
    :cond_0
    iget-object p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$PropertyBundle;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 703
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 705
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$NameValuesHolder;

    .line 706
    iget v4, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->b:F

    iget v5, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->c:F

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    .line 710
    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    iget v3, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->a:I

    invoke-static {v5, v3, v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 720
    :cond_1
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->d(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 722
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
