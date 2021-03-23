.class public final Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;
.super Lcom/jakewharton/rxbinding/view/MenuItemEvent;
.source "MenuItemActionViewEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/MenuItemEvent<",
        "Landroid/view/MenuItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final kind:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;


# direct methods
.method private constructor <init>(Landroid/view/MenuItem;Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/MenuItemEvent;-><init>(Landroid/view/MenuItem;)V

    .line 28
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->kind:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    return-void
.end method

.method public static create(Landroid/view/MenuItem;Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;)Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;
    .locals 1

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;-><init>(Landroid/view/MenuItem;Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;

    .line 42
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->menuItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->menuItem()Landroid/view/MenuItem;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 43
    :cond_2
    iget-object v2, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->kind:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    iget-object p1, p1, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->kind:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    if-ne v2, p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_4
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 47
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->menuItem()Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 48
    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->kind:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    invoke-virtual {v1}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public kind()Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->kind:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MenuItemActionViewEvent{menuItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->menuItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->kind:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
