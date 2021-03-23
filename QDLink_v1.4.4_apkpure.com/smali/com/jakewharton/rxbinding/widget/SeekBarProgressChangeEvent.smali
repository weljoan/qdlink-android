.class public final Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;
.super Lcom/jakewharton/rxbinding/widget/SeekBarChangeEvent;
.source "SeekBarProgressChangeEvent.java"


# instance fields
.field private final fromUser:Z

.field private final progress:I


# direct methods
.method private constructor <init>(Landroid/widget/SeekBar;IZ)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEvent;-><init>(Landroid/widget/SeekBar;)V

    .line 19
    iput p2, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->progress:I

    .line 20
    iput-boolean p3, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->fromUser:Z

    return-void
.end method

.method public static create(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;
    .locals 1

    .line 11
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;-><init>(Landroid/widget/SeekBar;IZ)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 33
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 34
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;

    .line 35
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->progress:I

    iget v3, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->progress:I

    if-ne v1, v3, :cond_2

    iget-boolean p1, p1, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->fromUser:Z

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->fromUser:Z

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public fromUser()Z
    .locals 1

    .line 28
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->fromUser:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 42
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->view()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 43
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->progress:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 44
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->fromUser:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public progress()I
    .locals 1

    .line 24
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->progress:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBarProgressChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->progress:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fromUser="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->fromUser:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
