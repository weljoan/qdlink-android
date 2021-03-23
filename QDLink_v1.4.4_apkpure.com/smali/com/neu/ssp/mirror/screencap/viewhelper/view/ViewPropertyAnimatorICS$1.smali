.class Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS$1;
.super Ljava/lang/Object;
.source "ViewPropertyAnimatorICS.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private synthetic a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

.field private synthetic b:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS$1;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;

    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS$1;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS$1;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS$1;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS$1;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS$1;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    return-void
.end method
