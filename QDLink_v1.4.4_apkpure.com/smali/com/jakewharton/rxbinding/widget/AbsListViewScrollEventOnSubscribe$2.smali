.class Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "AbsListViewScrollEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/AbsListViewScrollEventOnSubscribe;->view:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method
