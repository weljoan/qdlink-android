.class public abstract Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.super Ljava/lang/Object;
.source "ViewPropertyAnimator.java"


# static fields
.field private static final a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 49
    new-instance v0, Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animate(Landroid/view/View;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
    .locals 2

    .line 60
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;

    if-nez v0, :cond_2

    .line 62
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 64
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorICS;-><init>(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 66
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorHC;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 68
    :cond_1
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimatorPreHC;-><init>(Landroid/view/View;)V

    .line 70
    :goto_0
    sget-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method


# virtual methods
.method public abstract alpha(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract alphaBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract cancel()V
.end method

.method public abstract getDuration()J
.end method

.method public abstract getStartDelay()J
.end method

.method public abstract rotation(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract rotationBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract rotationX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract rotationXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract rotationY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract rotationYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract scaleX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract scaleXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract scaleY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract scaleYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract setListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract setStartDelay(J)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract start()V
.end method

.method public abstract translationX(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract translationXBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract translationY(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract translationYBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract x(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract xBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract y(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method

.method public abstract yBy(F)Lcom/neu/ssp/mirror/screencap/viewhelper/view/ViewPropertyAnimator;
.end method
