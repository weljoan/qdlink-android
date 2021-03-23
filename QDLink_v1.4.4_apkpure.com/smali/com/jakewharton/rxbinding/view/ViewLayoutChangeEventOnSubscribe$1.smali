.class Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "ViewLayoutChangeEventOnSubscribe.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 12

    move-object v0, p0

    .line 24
    iget-object v1, v0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v1}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    iget-object v1, v0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    iget-object v2, v0, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;

    iget-object v3, v2, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEventOnSubscribe;->view:Landroid/view/View;

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-static/range {v3 .. v11}, Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;->create(Landroid/view/View;IIIIIIII)Lcom/jakewharton/rxbinding/view/ViewLayoutChangeEvent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
