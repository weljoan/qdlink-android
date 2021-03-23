.class public abstract Lcom/jakewharton/rxbinding/view/MenuItemEvent;
.super Ljava/lang/Object;
.source "MenuItemEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/view/MenuItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final menuItem:Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/view/MenuItem;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemEvent;->menuItem:Landroid/view/MenuItem;

    return-void
.end method


# virtual methods
.method public menuItem()Landroid/view/MenuItem;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/MenuItemEvent;->menuItem:Landroid/view/MenuItem;

    return-object v0
.end method
