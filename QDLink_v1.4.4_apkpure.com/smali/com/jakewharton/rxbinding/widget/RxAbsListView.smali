.class public final Lcom/jakewharton/rxbinding/widget/RxAbsListView;
.super Ljava/lang/Object;
.source "RxAbsListView.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static scrollEvents(Landroid/widget/AbsListView;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AbsListView;",
            ")",
            "Lrx/Observable<",
            "Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "absListView == null"

    .line 23
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;-><init>(Landroid/widget/AbsListView;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method
