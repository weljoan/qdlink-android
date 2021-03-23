.class public final Lcom/jakewharton/rxbinding/view/ViewAttachEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "ViewAttachEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final kind:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;


# direct methods
.method private constructor <init>(Landroid/view/View;Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 28
    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    return-void
.end method

.method public static create(Landroid/view/View;Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;)Lcom/jakewharton/rxbinding/view/ViewAttachEvent;
    .locals 1

    .line 21
    new-instance v0, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;-><init>(Landroid/view/View;Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 38
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 39
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;

    .line 40
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind()Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    move-result-object p1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind()Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

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

    .line 46
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 47
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind()Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public kind()Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind:Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewAttachEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewAttachEvent;->kind()Lcom/jakewharton/rxbinding/view/ViewAttachEvent$Kind;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
