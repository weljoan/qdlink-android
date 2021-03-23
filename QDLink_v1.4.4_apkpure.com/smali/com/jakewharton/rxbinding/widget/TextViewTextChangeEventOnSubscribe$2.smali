.class Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "TextViewTextChangeEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;

.field final synthetic val$watcher:Landroid/text/TextWatcher;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;Landroid/text/TextWatcher;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe$2;->val$watcher:Landroid/text/TextWatcher;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe;->view:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/TextViewTextChangeEventOnSubscribe$2;->val$watcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
