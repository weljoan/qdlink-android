.class Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "MenuItemClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;->menuItem:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method
