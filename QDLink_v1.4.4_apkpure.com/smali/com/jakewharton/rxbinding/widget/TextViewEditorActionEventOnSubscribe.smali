.class final Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;
.super Ljava/lang/Object;
.source "TextViewEditorActionEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final handled:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-",
            "Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final view:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;Lrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Lrx/functions/Func1<",
            "-",
            "Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;->view:Landroid/widget/TextView;

    .line 20
    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;->handled:Lrx/functions/Func1;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 26
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;Lrx/Subscriber;)V

    .line 38
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;->view:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 40
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEventOnSubscribe;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    return-void
.end method
