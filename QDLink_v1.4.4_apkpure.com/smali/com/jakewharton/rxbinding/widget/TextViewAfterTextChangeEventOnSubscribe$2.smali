.class Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "TextViewAfterTextChangeEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;

.field final synthetic val$watcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;Landroid/text/TextWatcher;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$2;->val$watcher:Landroid/text/TextWatcher;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEventOnSubscribe$2;->val$watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
