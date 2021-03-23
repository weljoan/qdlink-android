.class Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "TextViewEditorActionOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/TextViewEditorActionOnSubscribe;->view:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    return-void
.end method
