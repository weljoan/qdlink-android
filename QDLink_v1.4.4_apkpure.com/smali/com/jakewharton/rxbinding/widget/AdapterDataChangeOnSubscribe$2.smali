.class Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "AdapterDataChangeOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

.field final synthetic val$observer:Landroid/database/DataSetObserver;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;Landroid/database/DataSetObserver;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;->val$observer:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->adapter:Landroid/widget/Adapter;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$2;->val$observer:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/Adapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
