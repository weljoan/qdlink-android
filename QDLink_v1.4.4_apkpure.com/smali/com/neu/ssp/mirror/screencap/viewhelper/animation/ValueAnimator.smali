.class public Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
.source "ValueAnimator.java"


# static fields
.field private static F:J = 0x0L

.field public static final INFINITE:I = -0x1

.field public static final RESTART:I = 0x1

.field public static final REVERSE:I = 0x2

.field private static final h:J = 0xaL

.field private static i:I = 0x0

.field private static j:I = 0x1

.field private static k:I = 0x0

.field private static l:I = 0x1

.field private static m:I = 0x2

.field private static n:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimationHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final o:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final p:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final q:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final r:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final s:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final t:Landroid/view/animation/Interpolator;

.field private static final u:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

.field private static final v:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;


# instance fields
.field private A:J

.field private B:Z

.field private C:Z

.field private D:J

.field private E:J

.field private G:I

.field private H:I

.field private I:Landroid/view/animation/Interpolator;

.field private J:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimatorUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field b:J

.field c:J

.field d:I

.field e:Z

.field f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

.field g:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;",
            ">;"
        }
    .end annotation
.end field

.field private w:Z

.field private x:I

.field private y:F

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->n:Ljava/lang/ThreadLocal;

    .line 98
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$1;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$1;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->o:Ljava/lang/ThreadLocal;

    .line 107
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$2;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$2;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->p:Ljava/lang/ThreadLocal;

    .line 119
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$3;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$3;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->q:Ljava/lang/ThreadLocal;

    .line 127
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$4;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$4;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->r:Ljava/lang/ThreadLocal;

    .line 135
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$5;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$5;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->s:Ljava/lang/ThreadLocal;

    .line 144
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->t:Landroid/view/animation/Interpolator;

    .line 148
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntEvaluator;-><init>()V

    .line 149
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatEvaluator;-><init>()V

    const-wide/16 v0, 0xa

    .line 222
    sput-wide v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->F:J

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 283
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;-><init>()V

    const-wide/16 v0, -0x1

    .line 85
    iput-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->c:J

    const/4 v0, 0x0

    .line 155
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->w:Z

    .line 161
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->x:I

    const/4 v1, 0x0

    .line 166
    iput v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->y:F

    .line 171
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->z:Z

    .line 187
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    .line 197
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->B:Z

    .line 203
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->C:Z

    .line 209
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    const-wide/16 v1, 0x12c

    .line 216
    iput-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->D:J

    const-wide/16 v1, 0x0

    .line 219
    iput-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->E:J

    .line 226
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->G:I

    const/4 v0, 0x1

    .line 233
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->H:I

    .line 240
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->t:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->I:Landroid/view/animation/Interpolator;

    const/4 v0, 0x0

    .line 245
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->E:J

    return-wide v0
.end method

.method private a(Z)V
    .locals 6

    .line 917
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 920
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->w:Z

    const/4 p1, 0x0

    .line 921
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->x:I

    .line 922
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    const/4 v0, 0x1

    .line 923
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->C:Z

    .line 924
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->z:Z

    .line 925
    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    iget-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->E:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 928
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 929
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    .line 930
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->B:Z

    .line 932
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 933
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    .line 934
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 937
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 941
    :cond_0
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimationHandler;

    if-nez v0, :cond_1

    .line 943
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimationHandler;

    invoke-direct {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimationHandler;-><init>(B)V

    .line 944
    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->n:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 946
    :cond_1
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimationHandler;->sendEmptyMessage(I)Z

    return-void

    .line 918
    :cond_2
    new-instance p1, Landroid/util/AndroidRuntimeException;

    const-string v0, "Animators may only be run on Looper threads"

    invoke-direct {p1, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;J)Z
    .locals 6

    .line 2071
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->z:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2072
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->z:Z

    .line 2073
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->A:J

    goto :goto_0

    .line 2075
    :cond_0
    iget-wide v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->A:J

    sub-long v2, p1, v2

    .line 2076
    iget-wide v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->E:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    sub-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 2079
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    .line 2080
    iput v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    return v1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->B:Z

    return p1
.end method

.method static synthetic b()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->o:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic b(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->i()V

    return-void
.end method

.method private b(J)Z
    .locals 6

    .line 1071
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->z:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1072
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->z:Z

    .line 1073
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->A:J

    goto :goto_0

    .line 1075
    :cond_0
    iget-wide v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->A:J

    sub-long v2, p1, v2

    .line 1076
    iget-wide v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->E:J

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    sub-long/2addr v2, v4

    sub-long/2addr p1, v2

    .line 1079
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    .line 1080
    iput v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic c()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->q:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic c(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->h()V

    return-void
.end method

.method public static clearAllAnimations()V
    .locals 1

    .line 1249
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1250
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1251
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->q:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method static synthetic d()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->p:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->s:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/ThreadLocal;
    .locals 1

    .line 43
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->r:Ljava/lang/ThreadLocal;

    return-object v0
.end method

.method static synthetic g()J
    .locals 2

    .line 43
    sget-wide v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->F:J

    return-wide v0
.end method

.method public static getCurrentAnimationsCount()I
    .locals 1

    .line 1239
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public static getFrameDelay()J
    .locals 2

    .line 715
    sget-wide v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->F:J

    return-wide v0
.end method

.method private h()V
    .locals 5

    .line 1025
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1026
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1027
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->q:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 1028
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    .line 1029
    iget-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->B:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 1030
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    .line 1031
    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1032
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 1034
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    invoke-interface {v4, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationEnd(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1037
    :cond_0
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->B:Z

    .line 1038
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->C:Z

    return-void
.end method

.method private i()V
    .locals 5

    .line 1046
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a()V

    .line 1047
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1048
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->E:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 1051
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    .line 1052
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 1053
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1055
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    invoke-interface {v3, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationStart(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static varargs ofFloat([F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
    .locals 1

    .line 315
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    .line 316
    invoke-virtual {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setFloatValues([F)V

    return-object v0
.end method

.method public static varargs ofInt([I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
    .locals 1

    .line 298
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    .line 299
    invoke-virtual {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setIntValues([I)V

    return-object v0
.end method

.method public static varargs ofObject(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
    .locals 1

    .line 352
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    .line 353
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 354
    invoke-virtual {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofPropertyValuesHolder([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
    .locals 1

    .line 329
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    .line 330
    invoke-virtual {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    return-object v0
.end method

.method public static setFrameDelay(J)V
    .locals 0

    .line 728
    sput-wide p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->F:J

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    .line 490
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    if-nez v0, :cond_1

    .line 491
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 493
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 495
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    :cond_1
    return-void
.end method

.method a(F)V
    .locals 4

    .line 1169
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->I:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    .line 1170
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->y:F

    .line 1171
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1173
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v3, v3, v2

    invoke-virtual {v3, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1175
    :cond_0
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    if-eqz p1, :cond_1

    .line 1176
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_1
    if-ge v1, p1, :cond_1

    .line 1178
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-interface {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimatorUpdateListener;->onAnimationUpdate(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method a(J)Z
    .locals 9

    .line 1102
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 1103
    iput v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    .line 1104
    iget-wide v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->c:J

    cmp-long v0, v4, v1

    if-gez v0, :cond_0

    .line 1105
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    goto :goto_0

    :cond_0
    sub-long v4, p1, v4

    .line 1107
    iput-wide v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    const-wide/16 v4, -0x1

    .line 1109
    iput-wide v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->c:J

    .line 1112
    :cond_1
    :goto_0
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    goto :goto_5

    .line 1115
    :cond_2
    iget-wide v6, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->D:J

    const/high16 v0, 0x3f800000    # 1.0f

    cmp-long v8, v6, v1

    if-lez v8, :cond_3

    iget-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    long-to-float p2, v6

    div-float/2addr p1, p2

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    cmpl-float p2, p1, v0

    if-ltz p2, :cond_8

    .line 1117
    iget p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->x:I

    iget v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->G:I

    if-lt p2, v1, :cond_5

    const/4 p2, -0x1

    if-ne v1, p2, :cond_4

    goto :goto_2

    .line 1133
    :cond_4
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v5, 0x1

    goto :goto_4

    .line 1119
    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    if-eqz p2, :cond_6

    .line 1120
    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, p2, :cond_6

    .line 1122
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    invoke-interface {v2, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationRepeat(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1125
    :cond_6
    iget p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->H:I

    if-ne p2, v4, :cond_7

    .line 1126
    iget-boolean p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->w:Z

    xor-int/2addr p2, v3

    iput-boolean p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->w:Z

    .line 1128
    :cond_7
    iget p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->x:I

    float-to-int v1, p1

    add-int/2addr p2, v1

    iput p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->x:I

    rem-float/2addr p1, v0

    .line 1130
    iget-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    iget-wide v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->D:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    .line 1136
    :cond_8
    :goto_4
    iget-boolean p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->w:Z

    if-eqz p2, :cond_9

    sub-float p1, v0, p1

    .line 1139
    :cond_9
    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a(F)V

    :goto_5
    return v5
.end method

.method public addUpdateListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 820
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 821
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    .line 823
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 2

    .line 958
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    if-nez v0, :cond_0

    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->q:Ljava/lang/ThreadLocal;

    .line 959
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 961
    :cond_0
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->B:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 962
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a:Ljava/util/ArrayList;

    .line 963
    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 964
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;

    .line 965
    invoke-interface {v1, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;->onAnimationCancel(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;)V

    goto :goto_0

    .line 968
    :cond_1
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->h()V

    :cond_2
    return-void
.end method

.method public bridge synthetic clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
    .locals 7

    .line 1185
    invoke-super {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    .line 1186
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1188
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    .line 1189
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    .line 1191
    iget-object v5, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v3, -0x1

    .line 1194
    iput-wide v3, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->c:J

    .line 1195
    iput-boolean v2, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->w:Z

    .line 1196
    iput v2, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->x:I

    .line 1197
    iput-boolean v2, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    .line 1198
    iput v2, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    .line 1199
    iput-boolean v2, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->z:Z

    .line 1200
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    if-eqz v1, :cond_1

    .line 1202
    array-length v3, v1

    .line 1203
    new-array v4, v3, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    iput-object v4, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    .line 1204
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v4, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->g:Ljava/util/HashMap;

    :goto_1
    if-ge v2, v3, :cond_1

    .line 1206
    aget-object v4, v1, v2

    invoke-virtual {v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object v4

    .line 1207
    iget-object v5, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aput-object v4, v5, v2

    .line 1208
    iget-object v5, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 2

    .line 974
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->o:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->p:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 976
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->z:Z

    .line 977
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->i()V

    goto :goto_0

    .line 978
    :cond_0
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    if-nez v0, :cond_1

    .line 979
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a()V

    .line 983
    :cond_1
    :goto_0
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->G:I

    if-lez v0, :cond_2

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    .line 984
    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a(F)V

    goto :goto_1

    :cond_2
    const/high16 v0, 0x3f800000    # 1.0f

    .line 986
    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a(F)V

    .line 988
    :goto_1
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->h()V

    return-void
.end method

.method public getAnimatedFraction()F
    .locals 1

    .line 1153
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->y:F

    return v0
.end method

.method public getAnimatedValue()Ljava/lang/Object;
    .locals 2

    .line 744
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 745
    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 762
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    if-eqz p1, :cond_0

    .line 764
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getCurrentPlayTime()J
    .locals 4

    .line 556
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_1
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 524
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->D:J

    return-wide v0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->I:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getRepeatCount()I
    .locals 1

    .line 789
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->G:I

    return v0
.end method

.method public getRepeatMode()I
    .locals 1

    .line 809
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->H:I

    return v0
.end method

.method public getStartDelay()J
    .locals 2

    .line 692
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->E:J

    return-wide v0
.end method

.method public getValues()[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 1

    .line 476
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    return-object v0
.end method

.method public isRunning()Z
    .locals 2

    .line 993
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->B:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isStarted()Z
    .locals 1

    .line 998
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->C:Z

    return v0
.end method

.method public removeAllUpdateListeners()V
    .locals 1

    .line 830
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 833
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 834
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    return-void
.end method

.method public removeUpdateListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 847
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 848
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 849
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->J:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public reverse()V
    .locals 6

    .line 1009
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->w:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->w:Z

    .line 1010
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    if-ne v0, v1, :cond_0

    .line 1011
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 1012
    iget-wide v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    sub-long v2, v0, v2

    .line 1013
    iget-wide v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->D:J

    sub-long/2addr v4, v2

    sub-long/2addr v0, v4

    .line 1014
    iput-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    return-void

    .line 1016
    :cond_0
    invoke-direct {p0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a(Z)V

    return-void
.end method

.method public setCurrentPlayTime(J)V
    .locals 4

    .line 538
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a()V

    .line 539
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    .line 540
    iget v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 541
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->c:J

    const/4 v2, 0x2

    .line 542
    iput v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->d:I

    :cond_0
    sub-long p1, v0, p1

    .line 544
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->b:J

    .line 545
    invoke-virtual {p0, v0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a(J)Z

    return-void
.end method

.method public bridge synthetic setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;

    move-result-object p1

    return-object p1
.end method

.method public setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 514
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->D:J

    return-object p0

    .line 511
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

.method public setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 898
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    .line 899
    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V

    :cond_0
    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 3

    if-eqz p1, :cond_3

    .line 401
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 404
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 407
    :cond_1
    aget-object v0, v0, v1

    .line 408
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setFloatValues([F)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    const-string v2, ""

    .line 405
    invoke-static {v2, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    .line 411
    :goto_1
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 3

    if-eqz p1, :cond_3

    .line 373
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 376
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 379
    :cond_1
    aget-object v0, v0, v1

    .line 380
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setIntValues([I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    const-string v2, ""

    .line 377
    invoke-static {v2, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    .line 383
    :goto_1
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 866
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->I:Landroid/view/animation/Interpolator;

    return-void

    .line 868
    :cond_0
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->I:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_3

    .line 433
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_2

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    array-length v2, v0

    if-nez v2, :cond_1

    goto :goto_0

    .line 440
    :cond_1
    aget-object v0, v0, v1

    .line 441
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    const/4 v2, 0x0

    const-string v3, ""

    .line 437
    invoke-static {v3, v2, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->ofObject(Ljava/lang/String;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V

    .line 444
    :goto_1
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    :cond_3
    :goto_2
    return-void
.end method

.method public setRepeatCount(I)V
    .locals 0

    .line 780
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->G:I

    return-void
.end method

.method public setRepeatMode(I)V
    .locals 0

    .line 800
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->H:I

    return-void
.end method

.method public setStartDelay(J)V
    .locals 0

    .line 702
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->E:J

    return-void
.end method

.method public varargs setValues([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;)V
    .locals 6

    .line 456
    array-length v0, p1

    .line 457
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    .line 458
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->g:Ljava/util/HashMap;

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 460
    aget-object v3, p1, v2

    .line 461
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->getPropertyName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 464
    :cond_0
    iput-boolean v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->e:Z

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 951
    invoke-direct {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->a(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ValueAnimator@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1257
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1258
    :goto_0
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 1259
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;->f:[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method
