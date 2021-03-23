.class Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "ViewTreeObserverPreDrawOnSubscribe.java"


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

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;Landroid/view/ViewTreeObserver$OnPreDrawListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$2;->val$listener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 38
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverPreDrawOnSubscribe$2;->val$listener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method
