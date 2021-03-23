.class Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "ViewLayoutChangeEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;

.field final synthetic val$listener:Landroid/view/View$OnLayoutChangeListener;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$2;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 34
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;->view:Landroid/view/View;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$2;->val$listener:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
