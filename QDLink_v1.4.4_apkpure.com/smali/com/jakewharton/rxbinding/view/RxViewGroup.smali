.class public final Lcom/jakewharton/rxbinding/view/RxViewGroup;
.super Ljava/lang/Object;
.source "RxViewGroup.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "No instances."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public static changeEvents(Landroid/view/ViewGroup;)Lrx/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Lrx/Observable<",
            "Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEvent;",
            ">;"
        }
    .end annotation

    const-string v0, "viewGroup == null"

    .line 24
    invoke-static {p0, v0}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 25
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;-><init>(Landroid/view/ViewGroup;)V

    invoke-static {v0}, Lrx/Observable;->create(Lrx/Observable$OnSubscribe;)Lrx/Observable;

    move-result-object p0

    return-object p0
.end method
