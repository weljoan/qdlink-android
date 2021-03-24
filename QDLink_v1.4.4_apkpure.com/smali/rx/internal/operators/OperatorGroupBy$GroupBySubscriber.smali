.class public final Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;
.super Lrx/Subscriber;
.source "OperatorGroupBy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/OperatorGroupBy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GroupBySubscriber"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Subscriber<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final NULL_KEY:Ljava/lang/Object;


# instance fields
.field final actual:Lrx/Subscriber;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final bufferSize:I

.field final cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final delayError:Z

.field volatile done:Z

.field error:Ljava/lang/Throwable;

.field final evictedKeys:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TK;>;"
        }
    .end annotation
.end field

.field final groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field final groups:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final keySelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TK;>;"
        }
    .end annotation
.end field

.field final producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final requested:Ljava/util/concurrent/atomic/AtomicLong;

.field final s:Lrx/internal/producers/ProducerArbiter;

.field final valueSelector:Lrx/functions/Func1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/functions/Func1<",
            "-TT;+TV;>;"
        }
    .end annotation
.end field

.field final wip:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lrx/Subscriber;Lrx/functions/Func1;Lrx/functions/Func1;IZLrx/functions/Func1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;",
            "Lrx/functions/Func1<",
            "-TT;+TK;>;",
            "Lrx/functions/Func1<",
            "-TT;+TV;>;IZ",
            "Lrx/functions/Func1<",
            "Lrx/functions/Action1<",
            "TK;>;",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lrx/Subscriber;-><init>()V

    .line 141
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 142
    iput-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    .line 143
    iput-object p3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->valueSelector:Lrx/functions/Func1;

    .line 144
    iput p4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->bufferSize:I

    .line 145
    iput-boolean p5, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->delayError:Z

    .line 146
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 147
    new-instance p1, Lrx/internal/producers/ProducerArbiter;

    invoke-direct {p1}, Lrx/internal/producers/ProducerArbiter;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    .line 148
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    int-to-long p2, p4

    invoke-virtual {p1, p2, p3}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 149
    new-instance p1, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    invoke-direct {p1, p0}, Lrx/internal/operators/OperatorGroupBy$GroupByProducer;-><init>(Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;)V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->producer:Lrx/internal/operators/OperatorGroupBy$GroupByProducer;

    .line 150
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 151
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    .line 152
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 153
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    if-nez p6, :cond_0

    .line 155
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    goto :goto_0

    .line 158
    :cond_0
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    .line 159
    new-instance p1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;

    iget-object p2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    invoke-direct {p1, p2}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber$EvictionAction;-><init>(Ljava/util/Queue;)V

    invoke-direct {p0, p6, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->createMap(Lrx/functions/Func1;Lrx/functions/Action1;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method private createMap(Lrx/functions/Func1;Lrx/functions/Action1;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func1<",
            "Lrx/functions/Action1<",
            "TK;>;",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/lang/Object;",
            ">;>;",
            "Lrx/functions/Action1<",
            "TK;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lrx/internal/operators/OperatorGroupBy$GroupedUnicast<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 179
    invoke-interface {p1, p2}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 3

    .line 293
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 295
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    :cond_0
    return-void
.end method

.method public cancel(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    goto :goto_0

    .line 301
    :cond_0
    sget-object p1, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    .line 302
    :goto_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 303
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_1

    .line 304
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    :cond_1
    return-void
.end method

.method checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;",
            "Ljava/util/Queue<",
            "*>;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 380
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 382
    invoke-virtual {p0, p3, p4, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 386
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    invoke-virtual {p1}, Lrx/Subscriber;->onCompleted()V

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method drain()V
    .locals 13

    .line 310
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 316
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 317
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 321
    :cond_1
    iget-boolean v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    invoke-virtual {p0, v4, v5, v1, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v4

    if-eqz v4, :cond_2

    return-void

    .line 325
    :cond_2
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    move-wide v8, v6

    :goto_0
    cmp-long v10, v8, v4

    if-eqz v10, :cond_6

    .line 329
    iget-boolean v10, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 331
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lrx/observables/GroupedObservable;

    if-nez v11, :cond_3

    const/4 v12, 0x1

    goto :goto_1

    :cond_3
    const/4 v12, 0x0

    .line 335
    :goto_1
    invoke-virtual {p0, v10, v12, v1, v0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->checkTerminated(ZZLrx/Subscriber;Ljava/util/Queue;)Z

    move-result v10

    if-eqz v10, :cond_4

    return-void

    :cond_4
    if-eqz v12, :cond_5

    goto :goto_2

    .line 343
    :cond_5
    invoke-virtual {v1, v11}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V

    const-wide/16 v10, 0x1

    add-long/2addr v8, v10

    goto :goto_0

    :cond_6
    :goto_2
    cmp-long v10, v8, v6

    if-eqz v10, :cond_8

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v10, v4, v6

    if-eqz v10, :cond_7

    .line 350
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v4, v8, v9}, Lrx/internal/operators/BackpressureUtils;->produced(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 352
    :cond_7
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v4, v8, v9}, Lrx/internal/producers/ProducerArbiter;->request(J)V

    .line 355
    :cond_8
    iget-object v4, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->wip:Ljava/util/concurrent/atomic/AtomicInteger;

    neg-int v3, v3

    invoke-virtual {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result v3

    if-nez v3, :cond_1

    return-void
.end method

.method errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-",
            "Lrx/observables/GroupedObservable<",
            "TK;TV;>;>;",
            "Ljava/util/Queue<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .line 363
    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 364
    new-instance p2, Ljava/util/ArrayList;

    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 365
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 366
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    if-eqz v0, :cond_0

    .line 367
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 370
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 371
    invoke-virtual {v0, p3}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 374
    :cond_1
    invoke-virtual {p1, p3}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCompleted()V
    .locals 2

    .line 264
    iget-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 268
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    .line 269
    invoke-virtual {v1}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onComplete()V

    goto :goto_0

    .line 271
    :cond_1
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 272
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    if-eqz v0, :cond_2

    .line 273
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_2
    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 277
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 278
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 252
    iget-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    return-void

    .line 256
    :cond_0
    iput-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->error:Ljava/lang/Throwable;

    const/4 p1, 0x1

    .line 257
    iput-boolean p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    .line 258
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 259
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 189
    iget-boolean v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->queue:Ljava/util/Queue;

    .line 194
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->actual:Lrx/Subscriber;

    .line 198
    :try_start_0
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->keySelector:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    move-object v4, v2

    goto :goto_0

    .line 206
    :cond_1
    sget-object v4, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->NULL_KEY:Ljava/lang/Object;

    .line 207
    :goto_0
    iget-object v5, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    if-nez v5, :cond_3

    .line 211
    iget-object v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->cancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    iget v3, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->bufferSize:I

    iget-boolean v5, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->delayError:Z

    invoke-static {v2, v3, p0, v5}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->createWith(Ljava/lang/Object;ILrx/internal/operators/OperatorGroupBy$GroupBySubscriber;Z)Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    move-result-object v5

    .line 213
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groupCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    return-void

    .line 225
    :cond_3
    :goto_1
    :try_start_1
    iget-object v2, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->valueSelector:Lrx/functions/Func1;

    invoke-interface {v2, p1}, Lrx/functions/Func1;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    invoke-virtual {v5, p1}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onNext(Ljava/lang/Object;)V

    .line 234
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    if-eqz p1, :cond_5

    .line 236
    :cond_4
    :goto_2
    iget-object p1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->evictedKeys:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 237
    iget-object v1, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->groups:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;

    if-eqz p1, :cond_4

    .line 239
    invoke-virtual {p1}, Lrx/internal/operators/OperatorGroupBy$GroupedUnicast;->onComplete()V

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 245
    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 246
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    :cond_6
    return-void

    :catchall_0
    move-exception p1

    .line 227
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 228
    invoke-virtual {p0, v1, v0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 200
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->unsubscribe()V

    .line 201
    invoke-virtual {p0, v1, v0, p1}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->errorAll(Lrx/Subscriber;Ljava/util/Queue;Ljava/lang/Throwable;)V

    return-void
.end method

.method public requestMore(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 286
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->requested:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 287
    invoke-virtual {p0}, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->drain()V

    return-void

    .line 283
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "n >= 0 required but it was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setProducer(Lrx/Producer;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lrx/internal/operators/OperatorGroupBy$GroupBySubscriber;->s:Lrx/internal/producers/ProducerArbiter;

    invoke-virtual {v0, p1}, Lrx/internal/producers/ProducerArbiter;->setProducer(Lrx/Producer;)V

    return-void
.end method
