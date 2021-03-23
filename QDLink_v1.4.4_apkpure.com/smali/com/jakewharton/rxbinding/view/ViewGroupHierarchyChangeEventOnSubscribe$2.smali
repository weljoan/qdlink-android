.class Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "ViewGroupHierarchyChangeEventOnSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/view/ViewGroupHierarchyChangeEventOnSubscribe;->viewGroup:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method
