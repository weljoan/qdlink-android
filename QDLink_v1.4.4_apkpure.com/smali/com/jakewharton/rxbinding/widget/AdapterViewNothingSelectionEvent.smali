.class public final Lcom/jakewharton/rxbinding/widget/AdapterViewNothingSelectionEvent;
.super Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionEvent;
.source "AdapterViewNothingSelectionEvent.java"


# direct methods
.method private constructor <init>(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionEvent;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method

.method public static create(Landroid/widget/AdapterView;)Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)",
            "Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionEvent;"
        }
    .end annotation

    .line 10
    new-instance v0, Lcom/jakewharton/rxbinding/widget/AdapterViewNothingSelectionEvent;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewNothingSelectionEvent;-><init>(Landroid/widget/AdapterView;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 19
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/widget/AdapterViewNothingSelectionEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 20
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/widget/AdapterViewNothingSelectionEvent;

    .line 21
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/AdapterViewNothingSelectionEvent;->view()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewNothingSelectionEvent;->view()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 25
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewNothingSelectionEvent;->view()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdapterViewNothingSelectionEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/AdapterViewNothingSelectionEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
