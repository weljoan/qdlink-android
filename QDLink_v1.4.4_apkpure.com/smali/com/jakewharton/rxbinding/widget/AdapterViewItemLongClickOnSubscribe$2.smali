.class Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "AdapterViewItemLongClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/AdapterViewItemLongClickOnSubscribe;->view:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void
.end method
