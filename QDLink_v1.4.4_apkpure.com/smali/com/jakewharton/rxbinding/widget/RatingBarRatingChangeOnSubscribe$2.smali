.class Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "RatingBarRatingChangeOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;->view:Landroid/widget/RatingBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RatingBar;->setOnRatingBarChangeListener(Landroid/widget/RatingBar$OnRatingBarChangeListener;)V

    return-void
.end method
