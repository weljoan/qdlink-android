.class Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "MenuItemActionViewEventOnSubscribe.java"

# interfaces
.implements Landroid/view/MenuItem$OnActionExpandListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private onEvent(Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;)Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;->handled:Lrx/functions/Func1;

    invoke-interface {v0, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1

    .line 33
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

    iget-object p1, p1, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;->menuItem:Landroid/view/MenuItem;

    sget-object v0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;->COLLAPSE:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->create(Landroid/view/MenuItem;Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;)Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;

    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;->onEvent(Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;)Z

    move-result p1

    return p1
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1

    .line 28
    iget-object p1, p0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;

    iget-object p1, p1, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe;->menuItem:Landroid/view/MenuItem;

    sget-object v0, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;->EXPAND:Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;

    invoke-static {p1, v0}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;->create(Landroid/view/MenuItem;Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent$Kind;)Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;

    move-result-object p1

    .line 29
    invoke-direct {p0, p1}, Lcom/jakewharton/rxbinding/view/MenuItemActionViewEventOnSubscribe$1;->onEvent(Lcom/jakewharton/rxbinding/view/MenuItemActionViewEvent;)Z

    move-result p1

    return p1
.end method
