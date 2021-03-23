.class Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView$2;
.super Ljava/lang/Object;
.source "BaseLayoutView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->setLayoutView(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x1

    .line 388
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setIsTransitionFinish(Z)V

    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
