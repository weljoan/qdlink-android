.class final Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;
.super Ljava/lang/Object;
.source "ViewScrollChangeEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->view:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 24
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;Lrx/Subscriber;)V

    .line 33
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;->view:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 35
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/view/ViewScrollChangeEventOnSubscribe;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    return-void
.end method
