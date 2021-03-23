.class public final Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "AdapterViewItemLongClickEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/widget/AdapterView<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private final clickedView:Landroid/view/View;

.field private final id:J

.field private final position:I


# direct methods
.method private constructor <init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 23
    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->clickedView:Landroid/view/View;

    .line 24
    iput p3, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->position:I

    .line 25
    iput-wide p4, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->id:J

    return-void
.end method

.method public static create(Landroid/widget/AdapterView;Landroid/view/View;IJ)Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)",
            "Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;"
        }
    .end annotation

    .line 13
    new-instance v6, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;-><init>(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-object v6
.end method


# virtual methods
.method public clickedView()Landroid/view/View;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->clickedView:Landroid/view/View;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 43
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 44
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;

    .line 45
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget-object v1, p1, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->clickedView:Landroid/view/View;

    iget-object v3, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->clickedView:Landroid/view/View;

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->position:I

    iget v3, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->position:I

    if-ne v1, v3, :cond_2

    iget-wide v3, p1, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->id:J

    iget-wide v5, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->id:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 53
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->view()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 54
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->clickedView:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 55
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->position:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 56
    iget-wide v2, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->id:J

    const/16 v0, 0x20

    ushr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public id()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->id:J

    return-wide v0
.end method

.method public position()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->position:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdapterViewItemLongClickEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", clickedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->clickedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->position:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickEvent;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
