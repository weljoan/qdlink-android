.class public final Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "SearchViewQueryTextEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/widget/SearchView;",
        ">;"
    }
.end annotation


# instance fields
.field private final queryText:Ljava/lang/CharSequence;

.field private final submitted:Z


# direct methods
.method private constructor <init>(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 21
    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    .line 22
    iput-boolean p3, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->submitted:Z

    return-void
.end method

.method public static create(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;
    .locals 1

    .line 12
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;-><init>(Landroid/widget/SearchView;Ljava/lang/CharSequence;Z)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 36
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 37
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;

    .line 38
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget-object v1, p1, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean p1, p1, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->submitted:Z

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->submitted:Z

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->view()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 46
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 47
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->submitted:Z

    add-int/2addr v1, v0

    return v1
.end method

.method public isSubmitted()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->submitted:Z

    return v0
.end method

.method public queryText()Ljava/lang/CharSequence;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchViewQueryTextEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", queryText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->queryText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", submitted="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding/widget/SearchViewQueryTextEvent;->submitted:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
