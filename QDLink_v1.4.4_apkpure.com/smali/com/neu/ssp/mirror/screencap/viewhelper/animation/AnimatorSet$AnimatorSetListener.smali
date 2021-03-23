.class Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;
.super Ljava/lang/Object;
.source "AnimatorSet.java"

# interfaces
.implements Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;


# instance fields
.field private a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

.field private synthetic b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)V
    .locals 0

    .line 711
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 712
    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 3

    .line 716
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    iget-boolean p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b:Z

    if-nez p1, :cond_0

    .line 719
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 720
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    iget-object p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    .line 721
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    iget-object p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-interface {v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 5

    .line 732
    invoke-virtual {p1, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->removeListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V

    .line 733
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 734
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    const/4 v0, 0x1

    .line 735
    iput-boolean v0, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->done:Z

    .line 736
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    iget-boolean p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b:Z

    if-nez p1, :cond_3

    .line 739
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->c(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object p1

    .line 741
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 743
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    iget-boolean v4, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->done:Z

    if-nez v4, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 751
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    iget-object p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_2

    .line 752
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->b:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    iget-object p1, p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    .line 753
    invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 754
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_2

    .line 756
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-interface {v3, v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 759
    :cond_2
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {p1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Z)Z

    :cond_3
    return-void
.end method

.method public onAnimationRepeat(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 0

    return-void
.end method
