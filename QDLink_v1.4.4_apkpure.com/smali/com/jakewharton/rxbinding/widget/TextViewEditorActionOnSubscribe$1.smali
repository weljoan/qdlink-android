.class Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$1;
.super Ljava/lang/Object;
.source "TextViewEditorActionOnSubscribe.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 26
    iget-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

    iget-object p1, p1, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;->handled:Lrx/functions/Func1;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-interface {p1, p3}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 27
    iget-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 28
    iget-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
