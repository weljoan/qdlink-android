.class Lrx/android/schedulers/HandlerScheduler$HandlerWorker;
.super Lrx/Scheduler$Worker;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/schedulers/HandlerScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HandlerWorker"
.end annotation


# instance fields
.field private final compositeSubscription:Lrx/subscriptions/CompositeSubscription;

.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Lrx/Scheduler$Worker;-><init>()V

    .line 50
    new-instance v0, Lrx/subscriptions/CompositeSubscription;

    invoke-direct {v0}, Lrx/subscriptions/CompositeSubscription;-><init>()V

    iput-object v0, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    .line 53
    iput-object p1, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lrx/android/schedulers/HandlerScheduler$HandlerWorker;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public schedule(Lrx/functions/Action0;)Lrx/Subscription;
    .locals 3

    .line 92
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object p1

    return-object p1
.end method

.method public schedule(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;
    .locals 1

    .line 68
    iget-object v0, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object p1

    return-object p1

    .line 72
    :cond_0
    invoke-static {}, Lrx/android/plugins/RxAndroidPlugins;->getInstance()Lrx/android/plugins/RxAndroidPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/android/plugins/RxAndroidPlugins;->getSchedulersHook()Lrx/android/plugins/RxAndroidSchedulersHook;

    move-result-object v0

    invoke-virtual {v0, p1}, Lrx/android/plugins/RxAndroidSchedulersHook;->onSchedule(Lrx/functions/Action0;)Lrx/functions/Action0;

    move-result-object p1

    .line 74
    new-instance v0, Lrx/internal/schedulers/ScheduledAction;

    invoke-direct {v0, p1}, Lrx/internal/schedulers/ScheduledAction;-><init>(Lrx/functions/Action0;)V

    .line 75
    iget-object p1, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0, p1}, Lrx/internal/schedulers/ScheduledAction;->addParent(Lrx/subscriptions/CompositeSubscription;)V

    .line 76
    iget-object p1, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {p1, v0}, Lrx/subscriptions/CompositeSubscription;->add(Lrx/Subscription;)V

    .line 78
    iget-object p1, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->handler:Landroid/os/Handler;

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p2

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 80
    new-instance p1, Lrx/android/schedulers/HandlerScheduler$HandlerWorker$1;

    invoke-direct {p1, p0, v0}, Lrx/android/schedulers/HandlerScheduler$HandlerWorker$1;-><init>(Lrx/android/schedulers/HandlerScheduler$HandlerWorker;Lrx/internal/schedulers/ScheduledAction;)V

    invoke-static {p1}, Lrx/subscriptions/Subscriptions;->create(Lrx/functions/Action0;)Lrx/Subscription;

    move-result-object p1

    invoke-virtual {v0, p1}, Lrx/internal/schedulers/ScheduledAction;->add(Lrx/Subscription;)V

    return-object v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 58
    iget-object v0, p0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;->compositeSubscription:Lrx/subscriptions/CompositeSubscription;

    invoke-virtual {v0}, Lrx/subscriptions/CompositeSubscription;->unsubscribe()V

    return-void
.end method
