.class public final Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "TextViewEditorActionEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private final actionId:I

.field private final keyEvent:Landroid/view/KeyEvent;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 22
    iput p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->actionId:I

    .line 23
    iput-object p3, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    return-void
.end method

.method public static create(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;
    .locals 1

    .line 13
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;

    invoke-direct {v0, p0, p1, p2}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;-><init>(Landroid/widget/TextView;ILandroid/view/KeyEvent;)V

    return-object v0
.end method


# virtual methods
.method public actionId()I
    .locals 1

    .line 27
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->actionId:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 38
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;

    .line 39
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->actionId:I

    iget v3, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->actionId:I

    if-ne v1, v3, :cond_2

    iget-object p1, p1, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 44
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->view()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 45
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->actionId:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 46
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public keyEvent()Landroid/view/KeyEvent;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextViewEditorActionEvent{view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", actionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->actionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyEvent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionEvent;->keyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
