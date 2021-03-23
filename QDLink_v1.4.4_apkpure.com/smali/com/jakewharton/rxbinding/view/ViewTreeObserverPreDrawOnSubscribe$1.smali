.class Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$1;
.super Ljava/lang/Object;
.source "ViewTreeObserverPreDrawOnSubscribe.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;->proceedDrawingPass:Lrx/functions/Func0;

    invoke-interface {v0}, Lrx/functions/Func0;->call()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
