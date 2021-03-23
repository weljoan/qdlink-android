.class Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$1;
.super Landroid/database/DataSetObserver;
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

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;

    iget-object v1, v1, Lcom/jakewharton/rxbinding/widget/AdapterDataChangeOnSubscribe;->adapter:Landroid/widget/Adapter;

    invoke-virtual {v0, v1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
