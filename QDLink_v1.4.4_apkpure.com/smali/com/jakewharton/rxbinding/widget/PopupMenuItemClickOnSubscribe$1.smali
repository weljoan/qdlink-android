.class Lcom/jakewharton/rxbinding/widget/PopupMenuItemClickOnSubscribe$1;
.super Ljava/lang/Object;
.source "PopupMenuItemClickOnSubscribe.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/PopupMenuItemClickOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/PopupMenuItemClickOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/PopupMenuItemClickOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuItemClickOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/PopupMenuItemClickOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuItemClickOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuItemClickOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuItemClickOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
