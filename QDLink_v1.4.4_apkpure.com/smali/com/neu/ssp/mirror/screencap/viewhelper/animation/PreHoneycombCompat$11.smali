.class final Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat$11;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;
.source "PreHoneycombCompat.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/IntProperty;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final get(Landroid/view/View;)Ljava/lang/Integer;
    .locals 0

    .line 129
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->getScrollX()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 121
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat$11;->get(Landroid/view/View;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final setValue(Landroid/view/View;I)V
    .locals 0

    .line 124
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->wrap(Landroid/view/View;)Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/view/animation/AnimatorProxy;->setScrollX(I)V

    return-void
.end method

.method public final bridge synthetic setValue(Ljava/lang/Object;I)V
    .locals 0

    .line 121
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PreHoneycombCompat$11;->setValue(Landroid/view/View;I)V

    return-void
.end method
