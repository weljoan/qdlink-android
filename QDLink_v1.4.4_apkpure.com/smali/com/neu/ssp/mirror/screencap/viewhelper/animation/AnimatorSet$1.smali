.class Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorListenerAdapter;
.source "AnimatorSet.java"


# instance fields
.field private a:Z

.field private synthetic b:Ljava/util/ArrayList;

.field private synthetic c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;


# direct methods
.method constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Ljava/util/ArrayList;)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    iput-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;->b:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorListenerAdapter;-><init>()V

    const/4 p1, 0x0

    .line 509
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;->a:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 511
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;->a:Z

    return-void
.end method

.method public onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 3

    .line 514
    iget-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;->a:Z

    if-nez p1, :cond_0

    .line 515
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 517
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 518
    iget-object v2, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->start()V

    .line 519
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-static {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
