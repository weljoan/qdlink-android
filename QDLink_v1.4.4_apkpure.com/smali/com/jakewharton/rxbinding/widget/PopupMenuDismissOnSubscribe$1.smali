.class Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe$1;
.super Ljava/lang/Object;
.source "PopupMenuDismissOnSubscribe.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    .line 23
    iget-object p1, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/jakewharton/rxbinding/widget/PopupMenuDismissOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
