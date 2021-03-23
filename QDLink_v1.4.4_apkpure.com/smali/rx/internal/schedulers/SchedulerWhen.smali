.class public Lrx/internal/schedulers/SchedulerWhen;
.super Lrx/Scheduler;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/schedulers/SchedulerWhen$OnCompletedAction;,
        Lrx/internal/schedulers/SchedulerWhen$DelayedAction;,
        Lrx/internal/schedulers/SchedulerWhen$ImmediateAction;,
        Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
    }
.end annotation


# static fields
.field static final SUBSCRIBED:Lrx/Subscription;

.field static final UNSUBSCRIBED:Lrx/Subscription;


# instance fields
.field private final actualScheduler:Lrx/Scheduler;

.field private final subscription:Lrx/Subscription;

.field private final workerObserver:Lrx/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Observer<",
            "Lrx/Observable<",
            "Lrx/Completable;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 195
    new-instance v0, Lrx/internal/schedulers/SchedulerWhen$3;

    invoke-direct {v0}, Lrx/internal/schedulers/SchedulerWhen$3;-><init>()V

    sput-object v0, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    .line 206
    invoke-static {}, Lrx/subscriptions/Subscriptions;->unsubscribed()Lrx/Subscription;

    move-result-object v0

    sput-object v0, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    return-void
.end method

.method public constructor <init>(Lrx/functions/Func1;Lrx/Scheduler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Lrx/Observable<",
            "Lrx/Observable<",
            "Lrx/Completable;",
            ">;>;",
            "Lrx/Completable;",
            ">;",
            "Lrx/Scheduler;",
            ")V"
        }
    .end annotation

    .line 111
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 112
    iput-object p2, p0, Lrx/internal/schedulers/SchedulerWhen;->actualScheduler:Lrx/Scheduler;

    .line 114
    invoke-static {}, Lrx/subjects/PublishSubject;->create()Lrx/subjects/PublishSubject;

    move-result-object p2

    .line 115
    new-instance v0, Lrx/observers/SerializedObserver;

    invoke-direct {v0, p2}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    iput-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->workerObserver:Lrx/Observer;

    .line 118
    invoke-virtual {p2}, Lrx/subjects/PublishSubject;->onBackpressureBuffer()Lrx/Observable;

    move-result-object p2

    invoke-interface {p1, p2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/Completable;

    invoke-virtual {p1}, Lrx/Completable;->subscribe()Lrx/Subscription;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/schedulers/SchedulerWhen;->subscription:Lrx/Subscription;

    return-void
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 4

    .line 133
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->actualScheduler:Lrx/Scheduler;

    invoke-virtual {v0}, Lrx/Scheduler;->createWorker()Lrx/Scheduler$Worker;

    move-result-object v0

    .line 136
    invoke-static {}, Lrx/internal/operators/BufferUntilSubscriber;->create()Lrx/internal/operators/BufferUntilSubscriber;

    move-result-object v1

    .line 137
    new-instance v2, Lrx/observers/SerializedObserver;

    invoke-direct {v2, v1}, Lrx/observers/SerializedObserver;-><init>(Lrx/Observer;)V

    .line 139
    new-instance v3, Lrx/internal/schedulers/SchedulerWhen$1;

    invoke-direct {v3, p0, v0}, Lrx/internal/schedulers/SchedulerWhen$1;-><init>(Lrx/internal/schedulers/SchedulerWhen;Lrx/Scheduler$Worker;)V

    invoke-virtual {v1, v3}, Lrx/internal/operators/BufferUntilSubscriber;->map(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v1

    .line 153
    new-instance v3, Lrx/internal/schedulers/SchedulerWhen$2;

    invoke-direct {v3, p0, v0, v2}, Lrx/internal/schedulers/SchedulerWhen$2;-><init>(Lrx/internal/schedulers/SchedulerWhen;Lrx/Scheduler$Worker;Lrx/Observer;)V

    .line 189
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->workerObserver:Lrx/Observer;

    invoke-interface {v0, v1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return-object v3
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 128
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 1

    .line 123
    iget-object v0, p0, Lrx/internal/schedulers/SchedulerWhen;->subscription:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
