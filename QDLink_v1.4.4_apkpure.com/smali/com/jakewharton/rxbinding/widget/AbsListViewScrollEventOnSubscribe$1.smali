.class Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "AbsListViewScrollEventOnSubscribe.java"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field currentScrollState:I

.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;->currentScrollState:I

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget v0, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;->currentScrollState:I

    .line 40
    invoke-static {p1, v0, p2, p3, p4}, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->create(Landroid/widget/AbsListView;IIII)Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;

    move-result-object p1

    .line 42
    iget-object p2, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 3

    .line 26
    iput p2, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;->currentScrollState:I

    .line 28
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    .line 31
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v2

    .line 30
    invoke-static {p1, p2, v0, v1, v2}, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;->create(Landroid/widget/AbsListView;IIII)Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEvent;

    move-result-object p1

    .line 32
    iget-object p2, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {p2, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
