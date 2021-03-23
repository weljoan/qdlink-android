.class public final Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;
.super Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEvent;
.source "ViewGroupHierarchyChildViewRemoveEvent.java"


# direct methods
.method private constructor <init>(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEvent;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method public static create(Landroid/view/ViewGroup;Landroid/view/View;)Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;
    .locals 1

    .line 19
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;-><init>(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 28
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 29
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;

    .line 30
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 31
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;->child()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;->child()Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 36
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;->view()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 37
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;->child()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewGroupHierarchyChildViewRemoveEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChildViewRemoveEvent;->child()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
