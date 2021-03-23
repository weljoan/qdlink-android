.class Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "AdapterViewSelectionOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/AdapterViewSelectionOnSubscribe;->view:Landroid/widget/AdapterView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method
