.class Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "TextViewEditorActionEventOnSubscribe.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 28
    invoke-static {p1, p2, p3}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->create(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;

    move-result-object p1

    .line 29
    iget-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;

    iget-object p2, p2, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;->handled:Lrx/functions/Func1;

    invoke-interface {p2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 30
    iget-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p2}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p2

    if-nez p2, :cond_0

    .line 31
    iget-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
