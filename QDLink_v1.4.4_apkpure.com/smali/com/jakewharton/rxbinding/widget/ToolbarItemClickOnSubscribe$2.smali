.class Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "ToolbarItemClickOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/ToolbarItemClickOnSubscribe;->view:Landroid/widget/Toolbar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    return-void
.end method
