.class Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorHC.java"

# interfaces
.implements Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;
.implements Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;


# direct methods
.method private constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)V
    .locals 0

    .line 637
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;B)V
    .locals 0

    .line 637
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 1

    .line 648
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 663
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    .line 665
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->c(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->c(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 670
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 1

    .line 655
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 642
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationUpdate(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;)V
    .locals 6

    .line 691
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    .line 692
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->c(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;

    .line 693
    iget v1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->a:I

    and-int/lit16 v1, v1, 0x1ff

    if-eqz v1, :cond_0

    .line 695
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->d(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 697
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 700
    :cond_0
    iget-object p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->b:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 702
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 704
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;

    .line 705
    iget v4, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;->b:F

    iget v5, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;->c:F

    mul-float v5, v5, v0

    add-float/2addr v4, v5

    .line 709
    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    iget v3, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;->a:I

    invoke-static {v5, v3, v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;IF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 719
    :cond_1
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->d(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_2

    .line 721
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method
