.class public final Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "RatingBarChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/widget/RatingBar;",
        ">;"
    }
.end annotation


# instance fields
.field private final fromUser:Z

.field private final rating:F


# direct methods
.method private constructor <init>(Landroid/widget/RatingBar;FZ)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 20
    iput p2, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->rating:F

    .line 21
    iput-boolean p3, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->fromUser:Z

    return-void
.end method

.method public static create(Landroid/widget/RatingBar;FZ)Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;
    .locals 1

    .line 12
    new-instance v0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;-><init>(Landroid/widget/RatingBar;FZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 34
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 35
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;

    .line 36
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->rating:F

    iget v3, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->rating:F

    cmpl-float v1, v1, v3

    if-nez v1, :cond_2

    iget-boolean p1, p1, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->fromUser:Z

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->fromUser:Z

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromUser()Z
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->fromUser:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 41
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->view()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RatingBar;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 42
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->rating:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 43
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->fromUser:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public rating()F
    .locals 1

    .line 25
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->rating:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RatingBarChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rating="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->rating:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding/widget/RatingBarChangeEvent;->fromUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
