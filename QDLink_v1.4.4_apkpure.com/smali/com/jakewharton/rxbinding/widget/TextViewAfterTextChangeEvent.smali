.class public final Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "TextViewAfterTextChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# instance fields
.field private final editable:Landroid/text/Editable;


# direct methods
.method private constructor <init>(Landroid/widget/TextView;Landroid/text/Editable;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 27
    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->editable:Landroid/text/Editable;

    return-void
.end method

.method public static create(Landroid/widget/TextView;Landroid/text/Editable;)Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;
    .locals 1

    .line 20
    new-instance v0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;-><init>(Landroid/widget/TextView;Landroid/text/Editable;)V

    return-object v0
.end method


# virtual methods
.method public editable()Landroid/text/Editable;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->editable:Landroid/text/Editable;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 37
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 38
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;

    .line 39
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->editable:Landroid/text/Editable;

    iget-object p1, p1, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->editable:Landroid/text/Editable;

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

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

    .line 45
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->view()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 46
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->editable:Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TextViewAfterTextChangeEvent{editable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->editable:Landroid/text/Editable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
