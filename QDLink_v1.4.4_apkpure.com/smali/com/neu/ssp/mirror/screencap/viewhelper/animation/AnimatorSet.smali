.class public final Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
.source "AnimatorSet.java"


# instance fields
.field b:Z

.field private c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

.field private i:Z

.field private j:J

.field private k:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

.field private l:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 45
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;-><init>()V

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->c:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->d:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    const/4 v0, 0x1

    .line 87
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->g:Z

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    const/4 v1, 0x0

    .line 98
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b:Z

    .line 104
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->i:Z

    const-wide/16 v1, 0x0

    .line 107
    iput-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->j:J

    .line 110
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->k:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    const-wide/16 v0, -0x1

    .line 116
    iput-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->l:J

    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->c:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a()V
    .locals 10

    .line 785
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->g:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 786
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 787
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 788
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 790
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 791
    iget-object v5, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    iget-object v5, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 792
    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 795
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 796
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 797
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_5

    .line 799
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 800
    iget-object v6, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    iget-object v6, v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    if-eqz v6, :cond_4

    .line 802
    iget-object v6, v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_4

    .line 804
    iget-object v8, v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 805
    iget-object v9, v8, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 806
    iget-object v9, v8, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_3

    .line 807
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 812
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 813
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 814
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 816
    :cond_6
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->g:Z

    .line 817
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    return-void

    .line 818
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Circular dependencies cannot exist in AnimatorSet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 825
    :cond_8
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_c

    .line 827
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 828
    iget-object v4, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v4, :cond_b

    iget-object v4, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_b

    .line 829
    iget-object v4, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v4, :cond_b

    .line 831
    iget-object v6, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;

    .line 832
    iget-object v7, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    if-nez v7, :cond_9

    .line 833
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 835
    :cond_9
    iget-object v7, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v8, v6, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->node:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 836
    iget-object v7, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    iget-object v6, v6, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->node:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 842
    :cond_b
    iput-boolean v1, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->done:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_c
    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Z)Z
    .locals 0

    const/4 p1, 0x0

    .line 45
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/HashMap;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->d:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic c(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)Ljava/util/ArrayList;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final cancel()V
    .locals 3

    const/4 v0, 0x1

    .line 284
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b:Z

    .line 285
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 287
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 288
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    .line 290
    invoke-interface {v2, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    goto :goto_0

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->k:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->k:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->cancel()V

    goto :goto_2

    .line 297
    :cond_1
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 298
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 299
    iget-object v2, v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->cancel()V

    goto :goto_1

    :cond_2
    :goto_2
    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    .line 304
    invoke-interface {v1, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 307
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->i:Z

    :cond_4
    return-void
.end method

.method public final bridge synthetic clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;
    .locals 8

    .line 551
    invoke-super {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    const/4 v1, 0x1

    .line 560
    iput-boolean v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->g:Z

    const/4 v1, 0x0

    .line 561
    iput-boolean v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b:Z

    .line 562
    iput-boolean v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->i:Z

    .line 563
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->c:Ljava/util/ArrayList;

    .line 564
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->d:Ljava/util/HashMap;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    .line 571
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 572
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 573
    invoke-virtual {v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    move-result-object v4

    .line 574
    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    iget-object v3, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 576
    iget-object v3, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->d:Ljava/util/HashMap;

    iget-object v5, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x0

    .line 578
    iput-object v3, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    .line 579
    iput-object v3, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    .line 580
    iput-object v3, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependents:Ljava/util/ArrayList;

    .line 581
    iput-object v3, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->nodeDependencies:Ljava/util/ArrayList;

    .line 584
    iget-object v4, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 587
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    .line 588
    instance-of v7, v6, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v7, :cond_1

    if-nez v3, :cond_2

    .line 590
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 592
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_0

    .line 596
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    .line 597
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 604
    :cond_4
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 605
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 606
    iget-object v5, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_5

    .line 607
    iget-object v3, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;

    .line 608
    iget-object v6, v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->node:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 609
    new-instance v7, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;

    iget v5, v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v7, v6, v5}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;I)V

    .line 611
    invoke-virtual {v4, v7}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->addDependency(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;)V

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    move-result-object v0

    return-object v0
.end method

.method public final end()V
    .locals 3

    const/4 v0, 0x1

    .line 319
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b:Z

    .line 320
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 321
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a()V

    .line 324
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 325
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    if-nez v2, :cond_0

    .line 326
    new-instance v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v2, p0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)V

    iput-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    .line 328
    :cond_0
    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->addListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 331
    :cond_1
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->k:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    if-eqz v0, :cond_2

    .line 332
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->cancel()V

    .line 334
    :cond_2
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 335
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 336
    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->end()V

    goto :goto_1

    .line 339
    :cond_3
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 340
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    .line 341
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 342
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    .line 343
    invoke-interface {v1, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 346
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->i:Z

    :cond_5
    return-void
.end method

.method public final getChildAnimations()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;",
            ">;"
        }
    .end annotation

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 202
    iget-object v2, v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getDuration()J
    .locals 2

    .line 402
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->l:J

    return-wide v0
.end method

.method public final getStartDelay()J
    .locals 2

    .line 378
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->j:J

    return-wide v0
.end method

.method public final isRunning()Z
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 358
    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final isStarted()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->i:Z

    return v0
.end method

.method public final play(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 269
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->g:Z

    .line 270
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final playSequentially(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 179
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 180
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->g:Z

    .line 181
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 182
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->play(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    return-void

    .line 184
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_1

    .line 185
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {p0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->play(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v1, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->before(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final varargs playSequentially([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 4

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 161
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->g:Z

    .line 162
    array-length v1, p1

    const/4 v2, 0x0

    if-ne v1, v0, :cond_0

    .line 163
    aget-object p1, p1, v2

    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->play(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    return-void

    .line 165
    :cond_0
    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v0

    if-ge v2, v1, :cond_1

    .line 166
    aget-object v1, p1, v2

    invoke-virtual {p0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->play(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    invoke-virtual {v1, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->before(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final playTogether(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 140
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    .line 141
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->g:Z

    const/4 v0, 0x0

    .line 143
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->play(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->with(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final varargs playTogether([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 126
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->g:Z

    const/4 v1, 0x0

    .line 127
    aget-object v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->play(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    move-result-object v1

    .line 128
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 129
    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;->with(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final bridge synthetic setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 0

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    move-result-object p1

    return-object p1
.end method

.method public final setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 418
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 421
    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v1, p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    goto :goto_0

    .line 423
    :cond_0
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->l:J

    return-object p0

    .line 416
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "duration must be a value of zero or greater"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 235
    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v1, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setStartDelay(J)V
    .locals 0

    .line 389
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->j:J

    return-void
.end method

.method public final setTarget(Ljava/lang/Object;)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 217
    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    .line 218
    instance-of v2, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    if-eqz v2, :cond_1

    .line 219
    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;

    invoke-virtual {v1, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    .line 220
    :cond_1
    instance-of v2, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    if-eqz v2, :cond_0

    .line 221
    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;

    invoke-virtual {v1, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ObjectAnimator;->setTarget(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final setupEndValues()V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 437
    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->setupEndValues()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final setupStartValues()V
    .locals 2

    .line 429
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 430
    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->setupStartValues()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final start()V
    .locals 10

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->b:Z

    const/4 v1, 0x1

    .line 452
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->i:Z

    .line 456
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a()V

    .line 458
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 460
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 462
    iget-object v4, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->getListeners()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 463
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 464
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 467
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    .line 468
    instance-of v6, v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$DependencyListener;

    if-nez v6, :cond_1

    instance-of v6, v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    if-eqz v6, :cond_0

    .line 470
    :cond_1
    iget-object v6, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v6, v5}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->removeListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 480
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_8

    .line 482
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->f:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 483
    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    if-nez v5, :cond_4

    .line 484
    new-instance v5, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    invoke-direct {v5, p0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;)V

    iput-object v5, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    .line 486
    :cond_4
    iget-object v5, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    iget-object v5, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_4

    .line 489
    :cond_5
    iget-object v5, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_6

    .line 491
    iget-object v7, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;

    .line 492
    iget-object v8, v7, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->node:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    iget-object v8, v8, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    new-instance v9, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$DependencyListener;

    iget v7, v7, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Dependency;->rule:I

    invoke-direct {v9, p0, v4, v7}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$DependencyListener;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;I)V

    invoke-virtual {v8, v9}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->addListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 495
    :cond_6
    iget-object v5, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->dependencies:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iput-object v5, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->tmpDependencies:Ljava/util/ArrayList;

    goto :goto_5

    .line 487
    :cond_7
    :goto_4
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 497
    :goto_5
    iget-object v4, v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$AnimatorSetListener;

    invoke-virtual {v4, v5}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->addListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 500
    :cond_8
    iget-wide v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->j:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gtz v1, :cond_9

    .line 501
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;

    .line 502
    iget-object v3, v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->start()V

    .line 503
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->c:Ljava/util/ArrayList;

    iget-object v2, v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$Node;->animation:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_9
    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 506
    fill-array-data v1, :array_0

    invoke-static {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->ofFloat([F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->k:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    .line 507
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->k:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    iget-wide v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->j:J

    invoke-virtual {v1, v3, v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    .line 508
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->k:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    new-instance v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;

    invoke-direct {v3, p0, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet$1;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->addListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V

    .line 524
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->k:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->start()V

    .line 526
    :cond_a
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    .line 527
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    .line 528
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 529
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_b

    .line 531
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 534
    :cond_b
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_c

    iget-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->j:J

    cmp-long v3, v1, v5

    if-nez v3, :cond_c

    .line 537
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->i:Z

    .line 538
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_c

    .line 539
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/AnimatorSet;->a:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 541
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_8
    if-ge v0, v2, :cond_c

    .line 543
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_c
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
