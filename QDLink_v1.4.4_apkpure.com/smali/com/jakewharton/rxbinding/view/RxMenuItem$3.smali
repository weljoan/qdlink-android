.class final Lcom/jakewharton/rxbinding/view/RxMenuItem$3;
.super Ljava/lang/Object;
.source "RxMenuItem.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/RxMenuItem;->icon(Landroid/view/MenuItem;)Lrx/functions/Action1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$menuItem:Landroid/view/MenuItem;


# direct methods
.method constructor <init>(Landroid/view/MenuItem;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/RxMenuItem$3;->val$menuItem:Landroid/view/MenuItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/RxMenuItem$3;->val$menuItem:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 136
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/view/RxMenuItem$3;->call(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
