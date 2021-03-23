.class final Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat$1;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;
.source "PreHoneycombCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/FloatProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Landroid/view/View;)Ljava/lang/Float;
    .locals 0

    .line 19
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getAlpha()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat$1;->get(Landroid/view/View;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final setValue(Landroid/view/View;F)V
    .locals 0

    .line 14
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setAlpha(F)V

    return-void
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;F)V
    .locals 0

    .line 11
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat$1;->setValue(Landroid/view/View;F)V

    return-void
.end method
