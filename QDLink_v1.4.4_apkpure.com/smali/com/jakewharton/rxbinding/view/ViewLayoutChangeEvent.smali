.class public final Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;
.super Lcom/jakewharton/rxbinding/view/ViewEvent;
.source "ViewLayoutChangeEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jakewharton/rxbinding/view/ViewEvent<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final bottom:I

.field private final left:I

.field private final oldBottom:I

.field private final oldLeft:I

.field private final oldRight:I

.field private final oldTop:I

.field private final right:I

.field private final top:I


# direct methods
.method private constructor <init>(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/ViewEvent;-><init>(Landroid/view/View;)V

    .line 27
    iput p2, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->left:I

    .line 28
    iput p3, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->top:I

    .line 29
    iput p4, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->right:I

    .line 30
    iput p5, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->bottom:I

    .line 31
    iput p6, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldLeft:I

    .line 32
    iput p7, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldTop:I

    .line 33
    iput p8, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldRight:I

    .line 34
    iput p9, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldBottom:I

    return-void
.end method

.method public static create(Landroid/view/View;IIIIIIII)Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;
    .locals 11

    .line 18
    new-instance v10, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;

    move-object v0, v10

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;-><init>(Landroid/view/View;IIIIIIII)V

    return-object v10
.end method


# virtual methods
.method public bottom()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->bottom:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    .line 85
    :cond_0
    instance-of v1, p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 86
    :cond_1
    check-cast p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;

    .line 87
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->view()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->view()Landroid/view/View;

    move-result-object v3

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->left:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->left:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->top:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->top:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->right:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->right:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->bottom:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->bottom:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldLeft:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldLeft:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldTop:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldTop:I

    if-ne v1, v3, :cond_2

    iget v1, p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldRight:I

    iget v3, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldRight:I

    if-ne v1, v3, :cond_2

    iget p1, p1, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldBottom:I

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldBottom:I

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 71
    invoke-virtual {p0}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->view()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x275

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 72
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->left:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 73
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->top:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 74
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->right:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 75
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->bottom:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 76
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldLeft:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 77
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldTop:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 78
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldRight:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x25

    .line 79
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldBottom:I

    add-int/2addr v1, v0

    return v1
.end method

.method public left()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->left:I

    return v0
.end method

.method public oldBottom()I
    .locals 1

    .line 66
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldBottom:I

    return v0
.end method

.method public oldLeft()I
    .locals 1

    .line 54
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldLeft:I

    return v0
.end method

.method public oldRight()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldRight:I

    return v0
.end method

.method public oldTop()I
    .locals 1

    .line 58
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldTop:I

    return v0
.end method

.method public right()I
    .locals 1

    .line 46
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->right:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewLayoutChangeEvent{left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->left:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->top:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->right:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->bottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldLeft:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldRight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", oldBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->oldBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public top()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->top:I

    return v0
.end method
