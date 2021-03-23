.class Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.source "ViewPropertyAnimatorPreHC.java"


# static fields
.field private static final l:I = 0x0

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x4

.field private static final p:I = 0x8

.field private static final q:I = 0x10

.field private static final r:I = 0x20

.field private static final s:I = 0x40

.field private static final t:I = 0x80

.field private static final u:I = 0x100

.field private static final v:I = 0x200

.field private static final w:I = 0x1ff


# instance fields
.field private final a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

.field private final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Z

.field private e:J

.field private f:Z

.field private g:Landroid/view/animation/Interpolator;

.field private h:Z

.field private i:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

.field private j:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

.field private k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$NameValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Runnable;

.field private y:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$PropertyBundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 214
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->d:Z

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->e:J

    .line 68
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->f:Z

    .line 81
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->h:Z

    const/4 v1, 0x0

    .line 86
    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->i:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    .line 93
    new-instance v1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

    invoke-direct {v1, p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;B)V

    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->j:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->k:Ljava/util/ArrayList;

    .line 132
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$1;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$1;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->x:Ljava/lang/Runnable;

    .line 188
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->y:Ljava/util/HashMap;

    .line 215
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b:Ljava/lang/ref/WeakReference;

    .line 216
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    return-void
.end method

.method private a(I)F
    .locals 1

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

    const/4 p1, 0x0

    return p1

    .line 627
    :cond_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getAlpha()F

    move-result p1

    return p1

    .line 624
    :cond_1
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getY()F

    move-result p1

    return p1

    .line 621
    :cond_2
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getX()F

    move-result p1

    return p1

    .line 612
    :cond_3
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getRotationY()F

    move-result p1

    return p1

    .line 609
    :cond_4
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getRotationX()F

    move-result p1

    return p1

    .line 606
    :cond_5
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getRotation()F

    move-result p1

    return p1

    .line 618
    :cond_6
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getScaleY()F

    move-result p1

    return p1

    .line 615
    :cond_7
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getScaleX()F

    move-result p1

    return p1

    .line 603
    :cond_8
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getTranslationY()F

    move-result p1

    return p1

    .line 600
    :cond_9
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getTranslationX()F

    move-result p1

    return p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;
    .locals 0

    const/4 p1, 0x0

    .line 31
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->i:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    return-object p1
.end method

.method private a()V
    .locals 6

    const/4 v0, 0x1

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    .line 438
    invoke-static {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->ofFloat([F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    move-result-object v0

    .line 439
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->k:Ljava/util/ArrayList;

    .line 440
    invoke-virtual {v2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 441
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->k:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 443
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    .line 445
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$NameValuesHolder;

    .line 446
    iget v5, v5, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$NameValuesHolder;->a:I

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 448
    :cond_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->y:Ljava/util/HashMap;

    new-instance v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$PropertyBundle;

    invoke-direct {v3, v4, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$PropertyBundle;-><init>(ILjava/util/ArrayList;)V

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->j:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->addUpdateListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->j:Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$AnimatorEventListener;

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->addListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V

    .line 451
    iget-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->f:Z

    if-eqz v1, :cond_1

    .line 452
    iget-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setStartDelay(J)V

    .line 454
    :cond_1
    iget-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->d:Z

    if-eqz v1, :cond_2

    .line 455
    iget-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->c:J

    invoke-virtual {v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    .line 457
    :cond_2
    iget-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->h:Z

    if-eqz v1, :cond_3

    .line 458
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->g:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 460
    :cond_3
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->start()V

    return-void
.end method

.method private a(IF)V
    .locals 1

    .line 476
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(I)F

    move-result v0

    sub-float/2addr p2, v0

    .line 478
    invoke-direct {p0, p1, v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IFF)V

    return-void
.end method

.method private a(IFF)V
    .locals 5

    .line 504
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 506
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->y:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 507
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    .line 508
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->y:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$PropertyBundle;

    .line 509
    invoke-virtual {v3, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$PropertyBundle;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 514
    iget v3, v3, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$PropertyBundle;->a:I

    if-nez v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->cancel()V

    .line 526
    :cond_2
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$NameValuesHolder;

    invoke-direct {v0, p1, p2, p3}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC$NameValuesHolder;-><init>(IFF)V

    .line 527
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 528
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_3

    .line 530
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 531
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->x:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a()V

    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;IF)V
    .locals 1

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

    .line 1584
    :cond_0
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setAlpha(F)V

    :goto_0
    return-void

    .line 1580
    :cond_1
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setY(F)V

    return-void

    .line 1576
    :cond_2
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setX(F)V

    return-void

    .line 1564
    :cond_3
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setRotationY(F)V

    return-void

    .line 1560
    :cond_4
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setRotationX(F)V

    return-void

    .line 1556
    :cond_5
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setRotation(F)V

    return-void

    .line 1572
    :cond_6
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setScaleY(F)V

    return-void

    .line 1568
    :cond_7
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setScaleX(F)V

    return-void

    .line 1552
    :cond_8
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setTranslationY(F)V

    return-void

    .line 1548
    :cond_9
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setTranslationX(F)V

    return-void
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->i:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method private b(IF)V
    .locals 1

    .line 490
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(I)F

    move-result v0

    .line 491
    invoke-direct {p0, p1, v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IFF)V

    return-void
.end method

.method static synthetic c(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Ljava/util/HashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->y:Ljava/util/HashMap;

    return-object p0
.end method

.method private c(IF)V
    .locals 1

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

    .line 584
    :cond_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setAlpha(F)V

    :goto_0
    return-void

    .line 580
    :cond_1
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setY(F)V

    return-void

    .line 576
    :cond_2
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setX(F)V

    return-void

    .line 564
    :cond_3
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setRotationY(F)V

    return-void

    .line 560
    :cond_4
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setRotationX(F)V

    return-void

    .line 556
    :cond_5
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setRotation(F)V

    return-void

    .line 572
    :cond_6
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setScaleY(F)V

    return-void

    .line 568
    :cond_7
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setScaleX(F)V

    return-void

    .line 552
    :cond_8
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setTranslationY(F)V

    return-void

    .line 548
    :cond_9
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a:Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setTranslationX(F)V

    return-void
.end method

.method static synthetic d(Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public alpha(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    .line 422
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public alphaBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x200

    .line 428
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method

.method public cancel()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->y:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->y:Ljava/util/HashMap;

    .line 299
    invoke-virtual {v0}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 300
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 301
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    .line 302
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->cancel()V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 306
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_1

    .line 308
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->x:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->d:Z

    if-eqz v0, :cond_0

    .line 247
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->c:J

    return-wide v0

    .line 251
    :cond_0
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->getDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 257
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->f:Z

    if-eqz v0, :cond_0

    .line 258
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->e:J

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public rotation(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    .line 338
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public rotationBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x10

    .line 344
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method

.method public rotationX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    .line 350
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public rotationXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x20

    .line 356
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method

.method public rotationY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    .line 362
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public rotationYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x40

    .line 368
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method

.method public scaleX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    .line 398
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public scaleXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x4

    .line 404
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method

.method public scaleY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    .line 410
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public scaleYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x8

    .line 416
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method

.method public setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 232
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->d:Z

    .line 233
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->c:J

    return-object p0

    .line 229
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

    .line 279
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->h:Z

    .line 280
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->g:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method public setListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 0

    .line 286
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->i:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    return-object p0
.end method

.method public setStartDelay(J)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->f:Z

    .line 273
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->e:J

    return-object p0

    .line 269
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

    .line 292
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a()V

    return-void
.end method

.method public translationX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    .line 374
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public translationXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x1

    .line 380
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method

.method public translationY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    .line 386
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public translationYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/4 v0, 0x2

    .line 392
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method

.method public x(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    .line 314
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public xBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x80

    .line 320
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method

.method public y(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    .line 326
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->a(IF)V

    return-object p0
.end method

.method public yBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 1

    const/16 v0, 0x100

    .line 332
    invoke-direct {p0, v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;->b(IF)V

    return-object p0
.end method
