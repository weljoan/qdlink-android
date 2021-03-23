.class Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe$1;
.super Ljava/lang/Object;
.source "ToolbarNavigationClickOnSubscribe.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 26
    iget-object p1, p0, Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result p1

    if-nez p1, :cond_0

    .line 27
    iget-object p1, p0, Lcom/jakewharton/rxbinding/widget/ToolbarNavigationClickOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
