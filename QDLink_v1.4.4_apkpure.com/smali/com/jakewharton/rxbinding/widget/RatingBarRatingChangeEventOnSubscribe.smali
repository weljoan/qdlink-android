.class final Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;
.super Ljava/lang/Object;
.source "RatingBarRatingChangeEventOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;",
        ">;"
    }
.end annotation


# instance fields
.field final view:Landroid/widget/RatingBar;


# direct methods
.method public constructor <init>(Landroid/widget/RatingBar;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;->view:Landroid/widget/RatingBar;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;Lrx/Subscriber;)V

    .line 28
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;->view:Landroid/widget/RatingBar;

    invoke-virtual {v1, v0}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    .line 30
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 37
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;->view:Landroid/widget/RatingBar;

    invoke-virtual {v0}, Landroid/widget/RatingBar;->getRating()F

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->create(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
