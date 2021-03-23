.class Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$2;
.super Lrx/android/MainThreadSubscription;
.source "SeekBarChangeEventOnSubscribe.java"


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


# direct methods
.method constructor <init>(Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;

    invoke-direct {p0}, Lrx/android/MainThreadSubscription;-><init>()V

    return-void
.end method


# virtual methods
.method protected onUnsubscribe()V
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe$2;->this$0:Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;

    iget-object v0, v0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeEventOnSubscribe;->view:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method
