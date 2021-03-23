.class public final Lcom/jakewharton/rxbinding/widget/RxRatingBar;
.super Ljava/lang/Object;
.source "RxRatingBar.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static isIndicator(Landroid/widget/RatingBar;)Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 64
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 65
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxRatingBar$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxRatingBar$2;-><init>(Landroid/widget/RatingBar;)V

    return-object v0
.end method

.method public static rating(Landroid/widget/RatingBar;)Lrx/functions/Action1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/functions/Action1<",
            "-",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 48
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RxRatingBar$1;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RxRatingBar$1;-><init>(Landroid/widget/RatingBar;)V

    return-object v0
.end method

.method public static ratingChangeEvents(Landroid/widget/RatingBar;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/Observable<",
            "Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 36
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 37
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeEventOnSubscribe;-><init>(Landroid/widget/RatingBar;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static ratingChanges(Landroid/widget/RatingBar;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RatingBar;",
            ")",
            "Lrx/Observable<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    const-string v0, "view == null"

    .line 22
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/RatingBarRatingChangeOnSubscribe;-><init>(Landroid/widget/RatingBar;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method
