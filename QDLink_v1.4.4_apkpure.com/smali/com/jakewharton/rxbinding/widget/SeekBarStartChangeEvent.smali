.class public final Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;
.super Lcom/jakewharton/rxbinding/widget/SeekBarChangeEvent;
.source "SeekBarStartChangeEvent.java"


# direct methods
.method private constructor <init>(Landroid/widget/SeekBar;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEvent;-><init>(Landroid/widget/SeekBar;)V

    return-void
.end method

.method public static create(Landroid/widget/SeekBar;)Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;
    .locals 1

    .line 10
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;-><init>(Landroid/widget/SeekBar;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 18
    instance-of v0, p1, Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;->view()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;->view()Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;->view()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeekBarStartChangeEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
