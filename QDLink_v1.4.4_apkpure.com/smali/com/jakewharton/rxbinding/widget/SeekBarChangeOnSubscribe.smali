.class final Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;
.super Ljava/lang/Object;
.source "SeekBarChangeOnSubscribe.java"

# interfaces
.implements Lrx/Observable$OnSubscribe;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$OnSubscribe<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final shouldBeFromUser:Ljava/lang/Boolean;

.field final view:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/widget/SeekBar;Ljava/lang/Boolean;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->view:Landroid/widget/SeekBar;

    .line 17
    iput-object p2, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->shouldBeFromUser:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 21
    invoke-static {}, Lcom/jakewharton/rxbinding/internal/Preconditions;->checkUiThread()V

    .line 23
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$1;

    invoke-direct {v0, p0, p1}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$1;-><init>(Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;Lrx/Subscriber;)V

    .line 37
    iget-object v1, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->view:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 39
    new-instance v0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe$2;-><init>(Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 46
    iget-object v0, p0, Lcom/jakewharton/rxbinding/widget/SeekBarChangeOnSubscribe;->view:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    return-void
.end method
