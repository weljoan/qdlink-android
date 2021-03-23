.class Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "RatingBarRatingChangeEventOnSubscribe.java"

# interfaces
.implements Landroid/widget/RatingBar$OnRatingBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRatingChanged(Landroid/widget/RatingBar;FZ)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {p1, p2, p3}, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->create(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
