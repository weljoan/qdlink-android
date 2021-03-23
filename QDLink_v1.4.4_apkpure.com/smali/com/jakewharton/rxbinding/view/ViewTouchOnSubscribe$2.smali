.class Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "ViewTouchOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewTouchOnSubscribe;->view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
