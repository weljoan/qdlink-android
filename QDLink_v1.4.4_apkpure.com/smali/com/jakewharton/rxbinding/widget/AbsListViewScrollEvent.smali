.class public final Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "AbsListViewScrollEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/widget/AbsListView;",
        ">;"
    }
.end annotation


# instance fields
.field private final firstVisibleItem:I

.field private final scrollState:I

.field private final totalItemCount:I

.field private final visibleItemCount:I


# direct methods
.method private constructor <init>(Landroid/widget/AbsListView;IIII)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 25
    iput p2, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->scrollState:I

    .line 26
    iput p3, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->firstVisibleItem:I

    .line 27
    iput p4, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->visibleItemCount:I

    .line 28
    iput p5, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->totalItemCount:I

    return-void
.end method

.method public static create(Landroid/widget/AbsListView;IIII)Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;
    .locals 7

    .line 13
    new-instance v6, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;-><init>(Landroid/widget/AbsListView;IIII)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_6

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 51
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;

    .line 53
    iget v2, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->scrollState:I

    iget v3, p1, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->scrollState:I

    if-eq v2, v3, :cond_2

    return v1

    .line 54
    :cond_2
    iget v2, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->firstVisibleItem:I

    iget v3, p1, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->firstVisibleItem:I

    if-eq v2, v3, :cond_3

    return v1

    .line 55
    :cond_3
    iget v2, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->visibleItemCount:I

    iget v3, p1, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->visibleItemCount:I

    if-eq v2, v3, :cond_4

    return v1

    .line 56
    :cond_4
    iget v2, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->totalItemCount:I

    iget p1, p1, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->totalItemCount:I

    if-ne v2, p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_6
    :goto_1
    return v1
.end method

.method public firstVisibleItem()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->firstVisibleItem:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 60
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->scrollState:I

    mul-int/lit8 v0, v0, 0x1f

    .line 61
    iget v1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->firstVisibleItem:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 62
    iget v1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->visibleItemCount:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 63
    iget v1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->totalItemCount:I

    add-int/2addr v0, v1

    return v0
.end method

.method public scrollState()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->scrollState:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsListViewScrollEvent{scrollState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->scrollState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", firstVisibleItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->firstVisibleItem:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", visibleItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->visibleItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", totalItemCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->totalItemCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalItemCount()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->totalItemCount:I

    return v0
.end method

.method public visibleItemCount()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->visibleItemCount:I

    return v0
.end method
