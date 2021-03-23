.class public abstract Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "AdapterViewSelectionEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/widget/AdapterView<",
        "*>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    return-void
.end method
