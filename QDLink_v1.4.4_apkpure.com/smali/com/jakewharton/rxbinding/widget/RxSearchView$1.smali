.class final Lcom/jakewharton/rxbinding/widget/RxSearchView$1;
.super Ljava/lang/Object;
.source "RxSearchView.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/RxSearchView;->query(Landroid/widget/SearchView;Z)Lrx/functions/Action1;
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
.field final synthetic val$submit:Z

.field final synthetic val$view:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;Z)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/RxSearchView$1;->val$view:Landroid/widget/SearchView;

    iput-boolean p2, p0, Lcom/jakewharton/rxbinding/widget/RxSearchView$1;->val$submit:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/CharSequence;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/RxSearchView$1;->val$view:Landroid/widget/SearchView;

    iget-boolean v1, p0, Lcom/jakewharton/rxbinding/widget/RxSearchView$1;->val$submit:Z

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 58
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/RxSearchView$1;->call(Ljava/lang/CharSequence;)V

    return-void
.end method
