.class Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "ViewTreeObserverDrawOnSubscribe.java"


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

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$2;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverDrawOnSubscribe$2;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    return-void
.end method
