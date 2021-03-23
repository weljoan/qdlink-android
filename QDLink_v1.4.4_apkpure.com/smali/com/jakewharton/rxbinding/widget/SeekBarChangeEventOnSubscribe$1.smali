.class Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$1;
.super Ljava/lang/Object;
.source "SeekBarChangeEventOnSubscribe.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;

.field final synthetic val$subscriber:Lrx/Subscriber;


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;Lrx/Subscriber;)V
    .locals 0

    .line 21
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$1;->this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;

    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {p1, p2, p3}, Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;->create(Landroid/widget/SeekBar;IZ)Lcom/jakewharton/rxbinding/widget/SeekBarProgressChangeEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;->create(Landroid/widget/SeekBar;)Lcom/jakewharton/rxbinding/widget/SeekBarStartChangeEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 36
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$1;->val$subscriber:Lrx/Subscriber;

    invoke-static {p1}, Lcom/jakewharton/rxbinding/widget/SeekBarStopChangeEvent;->create(Landroid/widget/SeekBar;)Lcom/jakewharton/rxbinding/widget/SeekBarStopChangeEvent;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
