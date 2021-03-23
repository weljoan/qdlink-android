.class final Lcom/jakewharton/rxbinding/widget/RxTextSwitcher$1;
.super Ljava/lang/Object;
.source "RxTextSwitcher.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/RxTextSwitcher;->text(Landroid/widget/TextSwitcher;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$view:Landroid/widget/TextSwitcher;


# direct methods
.method constructor <init>(Landroid/widget/TextSwitcher;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/RxTextSwitcher$1;->val$view:Landroid/widget/TextSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/CharSequence;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/RxTextSwitcher$1;->val$view:Landroid/widget/TextSwitcher;

    invoke-virtual {v0, p1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 25
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/RxTextSwitcher$1;->call(Ljava/lang/CharSequence;)V

    return-void
.end method
