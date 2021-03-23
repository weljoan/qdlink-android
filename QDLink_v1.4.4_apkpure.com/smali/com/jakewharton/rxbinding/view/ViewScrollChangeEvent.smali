.class public final Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "ViewScrollChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final oldScrollX:I

.field private final oldScrollY:I

.field private final scrollX:I

.field private final scrollY:I


# direct methods
.method protected constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 25
    iput p2, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollX:I

    .line 26
    iput p3, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollY:I

    .line 27
    iput p4, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollX:I

    .line 28
    iput p5, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollY:I

    return-void
.end method

.method public static create(Landroid/view/View;IIII)Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;
    .locals 7

    .line 17
    new-instance v6, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;-><init>(Landroid/view/View;IIII)V

    return-object v6
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 59
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 60
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;

    .line 61
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollX:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollX:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollY:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollY:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollX:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollX:I

    if-ne v1, v3, :cond_2

    iget p1, p1, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollY:I

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollY:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 50
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollX:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 51
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollY:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 52
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollX:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 53
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollY:I

    add-int/2addr v1, v0

    return v1
.end method

.method public oldScrollX()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollX:I

    return v0
.end method

.method public oldScrollY()I
    .locals 1

    .line 44
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollY:I

    return v0
.end method

.method public scrollX()I
    .locals 1

    .line 32
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollX:I

    return v0
.end method

.method public scrollY()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollY:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewScrollChangeEvent{scrollX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", scrollY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->scrollY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldScrollX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldScrollY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewScrollChangeEvent;->oldScrollY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
