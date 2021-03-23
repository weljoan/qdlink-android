.class Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "AdapterViewItemClickEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemClickEventOnSubscribe;->view:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
