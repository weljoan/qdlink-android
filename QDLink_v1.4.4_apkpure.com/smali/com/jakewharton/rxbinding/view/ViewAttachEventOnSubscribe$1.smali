.class Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "ViewAttachEventOnSubscribe.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 2

    .line 25
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 26
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->view:Landroid/view/View;

    sget-object v1, Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;->ATTACH:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    invoke-static {v0, v1}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->create(Landroid/view/View;Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;)Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 31
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 32
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewAttachEventOnSubscribe;->view:Landroid/view/View;

    sget-object v1, Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;->DETACH:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    invoke-static {v0, v1}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->create(Landroid/view/View;Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;)Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
