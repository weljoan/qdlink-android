.class Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$1;
.super Ljava/lang/Object;
.source "MenuItemClickOnSubscribe.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


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

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 25
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;

    iget-object p1, p1, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;->handled:Lrx/functions/Func1;

    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe;->menuItem:Landroid/view/MenuItem;

    invoke-interface {p1, v0}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 26
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemClickOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
