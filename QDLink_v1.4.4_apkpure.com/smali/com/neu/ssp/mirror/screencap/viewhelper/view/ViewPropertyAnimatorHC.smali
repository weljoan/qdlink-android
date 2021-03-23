.class Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.source "ViewPropertyAnimatorHC.java"


# static fields
.field private static final k:I = 0x0

.field private static final l:I = 0x1

.field private static final m:I = 0x2

.field private static final n:I = 0x4

.field private static final o:I = 0x8

.field private static final p:I = 0x10

.field private static final q:I = 0x20

.field private static final r:I = 0x40

.field private static final s:I = 0x80

.field private static final t:I = 0x100

.field private static final u:I = 0x200

.field private static final v:I = 0x1ff


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:J

.field private c:Z

.field private d:J

.field private e:Z

.field private f:Landroid/view/animation/Interpolator;

.field private g:Z

.field private h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

.field private i:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/lang/Runnable;

.field private x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 208
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;-><init>()V

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->c:Z

    const-wide/16 v1, 0x0

    .line 56
    iput-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->d:J

    .line 62
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->e:Z

    .line 75
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->g:Z

    const/4 v1, 0x0

    .line 80
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    .line 87
    new-instance v1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-direct {v1, p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;B)V

    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->i:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->j:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$1;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$1;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->w:Ljava/lang/Runnable;

    .line 182
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->x:Ljava/util/HashMap;

    .line 209
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private a(I)F
    .locals 2

    .line 593
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-eq p1, v1, :cond_2

    const/16 v1, 0x100

    if-eq p1, v1, :cond_1

    const/16 v1, 0x200

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    return p1

    .line 622
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result p1

    return p1

    .line 619
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result p1

    return p1

    .line 610
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getRotationY()F

    move-result p1

    return p1

    .line 607
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getRotationX()F

    move-result p1

    return p1

    .line 604
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->getRotation()F

    move-result p1

    return p1

    .line 616
    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result p1

    return p1

    .line 613
    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result p1

    return p1

    .line 601
    :cond_8
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p1

    return p1

    .line 598
    :cond_9
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result p1

    return p1

    :cond_a
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;
    .locals 0

    const/4 p1, 0x0

    .line 30
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    return-object p1
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 431
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->ofFloat([F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    move-result-object v0

    .line 432
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->j:Ljava/util/ArrayList;

    .line 433
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 434
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 436
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 438
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;

    .line 439
    iget v5, v5, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;->a:I

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 441
    :cond_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->x:Ljava/util/HashMap;

    new-instance v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;

    invoke-direct {v3, v4, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->i:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->addUpdateListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 443
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->i:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$AnimatorEventListener;

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->addListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V

    .line 444
    iget-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->e:Z

    if-eqz v1, :cond_1

    .line 445
    iget-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setStartDelay(J)V

    .line 447
    :cond_1
    iget-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->c:Z

    if-eqz v1, :cond_2

    .line 448
    iget-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b:J

    invoke-virtual {v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    .line 450
    :cond_2
    iget-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->g:Z

    if-eqz v1, :cond_3

    .line 451
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->f:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 453
    :cond_3
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(IF)V
    .locals 1

    .line 469
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(I)F

    move-result v0

    sub-float/2addr p2, v0

    .line 471
    invoke-direct {p0, p1, v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IFF)V

    return-void
.end method

.method private a(IFF)V
    .locals 5

    .line 497
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 499
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->x:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 500
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    .line 501
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->x:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;

    .line 502
    invoke-virtual {v3, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 507
    iget v3, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$PropertyBundle;->a:I

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 515
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->cancel()V

    .line 519
    :cond_2
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;

    invoke-direct {v0, p1, p2, p3}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC$NameValuesHolder;-><init>(IFF)V

    .line 520
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 521
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 523
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 524
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->w:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a()V

    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;IF)V
    .locals 1

    .line 1538
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    if-eqz p0, :cond_a

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_8

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x20

    if-eq p1, v0, :cond_4

    const/16 v0, 0x40

    if-eq p1, v0, :cond_3

    const/16 v0, 0x80

    if-eq p1, v0, :cond_2

    const/16 v0, 0x100

    if-eq p1, v0, :cond_1

    const/16 v0, 0x200

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1579
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 1575
    :cond_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setY(F)V

    return-void

    .line 1571
    :cond_2
    invoke-virtual {p0, p2}, Landroid/view/View;->setX(F)V

    return-void

    .line 1559
    :cond_3
    invoke-virtual {p0, p2}, Landroid/view/View;->setRotationY(F)V

    return-void

    .line 1555
    :cond_4
    invoke-virtual {p0, p2}, Landroid/view/View;->setRotationX(F)V

    return-void

    .line 1551
    :cond_5
    invoke-virtual {p0, p2}, Landroid/view/View;->setRotation(F)V

    return-void

    .line 1567
    :cond_6
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 1563
    :cond_7
    invoke-virtual {p0, p2}, Landroid/view/View;->setScaleX(F)V

    return-void

    .line 1547
    :cond_8
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 1543
    :cond_9
    invoke-virtual {p0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private b(IF)V
    .locals 1

    .line 483
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(I)F

    move-result v0

    .line 484
    invoke-direct {p0, p1, v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IFF)V

    return-void
.end method

.method static synthetic c(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Ljava/util/HashMap;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->x:Ljava/util/HashMap;

    return-object p0
.end method

.method private c(IF)V
    .locals 2

    .line 538
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_a

    const/4 v1, 0x1

    if-eq p1, v1, :cond_9

    const/4 v1, 0x2

    if-eq p1, v1, :cond_8

    const/4 v1, 0x4

    if-eq p1, v1, :cond_7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    const/16 v1, 0x10

    if-eq p1, v1, :cond_5

    const/16 v1, 0x20

    if-eq p1, v1, :cond_4

    const/16 v1, 0x40

    if-eq p1, v1, :cond_3

    const/16 v1, 0x80

    if-eq p1, v1, :cond_2

    const/16 v1, 0x100

    if-eq p1, v1, :cond_1

    const/16 v1, 0x200

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 579
    :cond_0
    invoke-virtual {v0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 575
    :cond_1
    invoke-virtual {v0, p2}, Landroid/view/View;->setY(F)V

    return-void

    .line 571
    :cond_2
    invoke-virtual {v0, p2}, Landroid/view/View;->setX(F)V

    return-void

    .line 559
    :cond_3
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationY(F)V

    return-void

    .line 555
    :cond_4
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotationX(F)V

    return-void

    .line 551
    :cond_5
    invoke-virtual {v0, p2}, Landroid/view/View;->setRotation(F)V

    return-void

    .line 567
    :cond_6
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleY(F)V

    return-void

    .line 563
    :cond_7
    invoke-virtual {v0, p2}, Landroid/view/View;->setScaleX(F)V

    return-void

    .line 547
    :cond_8
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationY(F)V

    return-void

    .line 543
    :cond_9
    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    :cond_a
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public alpha(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    .line 415
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public alphaBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    .line 421
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public cancel()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->x:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->x:Ljava/util/HashMap;

    .line 292
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 293
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 294
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    .line 295
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->cancel()V

    goto :goto_0

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 299
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 301
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->w:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 239
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->c:Z

    if-eqz v0, :cond_0

    .line 240
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b:J

    return-wide v0

    .line 244
    :cond_0
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 250
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->e:Z

    if-eqz v0, :cond_0

    .line 251
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->d:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rotation(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    .line 331
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public rotationBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    .line 337
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public rotationX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    .line 343
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public rotationXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    .line 349
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public rotationY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    .line 355
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public rotationYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    .line 361
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public scaleX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    .line 391
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public scaleXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    .line 397
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public scaleY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    .line 403
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public scaleYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    .line 409
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 225
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->c:Z

    .line 226
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b:J

    return-object p0

    .line 222
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->g:Z

    .line 273
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->f:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setStartDelay(J)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 265
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->e:Z

    .line 266
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->d:J

    return-object p0

    .line 262
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Animators cannot have negative duration: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 0

    .line 285
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a()V

    return-void
.end method

.method public translationX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    .line 367
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public translationXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    .line 373
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public translationY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    .line 379
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public translationYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    .line 385
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public x(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    .line 307
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public xBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    .line 313
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method

.method public y(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    .line 319
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->a(IF)V

    return-object p0
.end method

.method public yBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    .line 325
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;->b(IF)V

    return-object p0
.end method
