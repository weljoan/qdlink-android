.class Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$1;
.super Ljava/lang/Object;
.source "ViewTreeObserverDrawOnSubscribe.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    .line 26
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
