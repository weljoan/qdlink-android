.class final Lcom/jakewharton/rxbinding/view/RxView$6;
.super Ljava/lang/Object;
.source "RxView.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/RxView;->visibility(Landroid/view/View;I)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visibilityWhenFalse:I


# direct methods
.method constructor <init>(Landroid/view/View;I)V
    .locals 0

    .line 476
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/RxView$6;->val$view:Landroid/view/View;

    iput p2, p0, Lcom/jakewharton/rxbinding/view/RxView$6;->val$visibilityWhenFalse:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Boolean;)V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/RxView$6;->val$view:Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/jakewharton/rxbinding/view/RxView$6;->val$visibilityWhenFalse:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 476
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/RxView$6;->call(Ljava/lang/Boolean;)V

    return-void
.end method
