.class abstract Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SchedulerWhen.java"

# interfaces
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ScheduledAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lrx/Subscription;",
        ">;",
        "Lrx/Subscription;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 211
    sget-object v0, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;Lrx/Scheduler$Worker;Lrx/CompletableSubscriber;)V
    .locals 0

    .line 209
    invoke-direct {p0, p1, p2}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->call(Lrx/Scheduler$Worker;Lrx/CompletableSubscriber;)V

    return-void
.end method

.method private call(Lrx/Scheduler$Worker;Lrx/CompletableSubscriber;)V
    .locals 2

    .line 215
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    .line 217
    sget-object v1, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    if-ne v0, v1, :cond_0

    return-void

    .line 221
    :cond_0
    sget-object v1, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    if-eq v0, v1, :cond_1

    return-void

    .line 228
    :cond_1
    invoke-virtual {p0, p1, p2}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->callActual(Lrx/Scheduler$Worker;Lrx/CompletableSubscriber;)Lrx/Subscription;

    move-result-object p1

    .line 230
    sget-object p2, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    invoke-virtual {p0, p2, p1}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 235
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract callActual(Lrx/Scheduler$Worker;Lrx/CompletableSubscriber;)Lrx/Subscription;
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 243
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    return v0
.end method

.method public unsubscribe()V
    .locals 3

    .line 250
    sget-object v0, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    .line 252
    :cond_0
    invoke-virtual {p0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/Subscription;

    .line 253
    sget-object v2, Lrx/internal/schedulers/SchedulerWhen;->UNSUBSCRIBED:Lrx/Subscription;

    if-ne v1, v2, :cond_1

    return-void

    .line 257
    :cond_1
    invoke-virtual {p0, v1, v0}, Lrx/internal/schedulers/SchedulerWhen$ScheduledAction;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 259
    sget-object v0, Lrx/internal/schedulers/SchedulerWhen;->SUBSCRIBED:Lrx/Subscription;

    if-eq v1, v0, :cond_2

    .line 261
    invoke-interface {v1}, Lrx/Subscription;->unsubscribe()V

    :cond_2
    return-void
.end method
