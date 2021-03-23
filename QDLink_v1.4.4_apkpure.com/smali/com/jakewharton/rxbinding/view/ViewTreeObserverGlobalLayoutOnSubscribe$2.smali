.class Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "ViewTreeObserverGlobalLayoutOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe$2;->val$listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 35
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe$2;->val$listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewTreeObserverGlobalLayoutOnSubscribe$2;->val$listener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_0
    return-void
.end method
