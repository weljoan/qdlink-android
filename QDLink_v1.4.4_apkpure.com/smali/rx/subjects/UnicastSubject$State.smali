.class final Lrx/subjects/UnicastSubject$State;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "UnicastSubject.java"

# interfaces
.implements Lrx/Producer;
.implements Lrx/Observer;
.implements Lrx/Observable$OnSubscribe;
.implements Lrx/Subscription;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/subjects/UnicastSubject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;",
        "Lrx/Observer<",
        "TT;>;",
        "Lrx/Observable$OnSubscribe<",
        "TT;>;",
        "Lrx/Subscription;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7d831d73a4227baaL


# instance fields
.field volatile caughtUp:Z

.field final delayError:Z

.field volatile done:Z

.field emitting:Z

.field error:Ljava/lang/Throwable;

.field missed:Z

.field final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final subscriber:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/Subscriber<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field final terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(IZLrx/functions/Action0;)V
    .locals 1

    .line 179
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 180
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz p3, :cond_0

    .line 181
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lrx/subjects/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    .line 182
    iput-boolean p2, p0, Lrx/subjects/UnicastSubject$State;->delayError:Z

    const/4 p2, 0x1

    if-le p1, p2, :cond_2

    .line 186
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result p2

    if-eqz p2, :cond_1

    new-instance p2, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;

    invoke-direct {p2, p1}, Lrx/internal/util/unsafe/SpscUnboundedArrayQueue;-><init>(I)V

    goto :goto_2

    :cond_1
    new-instance p2, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;

    invoke-direct {p2, p1}, Lrx/internal/util/atomic/SpscUnboundedAtomicArrayQueue;-><init>(I)V

    goto :goto_2

    .line 190
    :cond_2
    invoke-static {}, Lrx/internal/util/unsafe/UnsafeAccess;->isUnsafeAvailable()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Lrx/internal/util/unsafe/SpscLinkedQueue;

    invoke-direct {p1}, Lrx/internal/util/unsafe/SpscLinkedQueue;-><init>()V

    goto :goto_1

    :cond_3
    new-instance p1, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;

    invoke-direct {p1}, Lrx/internal/util/atomic/SpscLinkedAtomicQueue;-><init>()V

    :goto_1
    move-object p2, p1

    .line 194
    :goto_2
    iput-object p2, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 150
    check-cast p1, Lrx/Subscriber;

    invoke-virtual {p0, p1}, Lrx/subjects/UnicastSubject$State;->call(Lrx/Subscriber;)V

    return-void
.end method

.method public call(Lrx/Subscriber;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Subscriber<",
            "-TT;>;)V"
        }
    .end annotation

    .line 289
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {p1, p0}, Lrx/Subscriber;->add(Lrx/Subscription;)V

    .line 291
    invoke-virtual {p1, p0}, Lrx/Subscriber;->setProducer(Lrx/Producer;)V

    goto :goto_0

    .line 293
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Only a single subscriber is allowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method checkTerminated(ZZZLrx/Subscriber;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZZ",
            "Lrx/Subscriber<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 395
    invoke-virtual {p4}, Lrx/Subscriber;->isUnsubscribed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 396
    iget-object p1, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->clear()V

    return v1

    :cond_0
    if-eqz p1, :cond_3

    .line 400
    iget-object p1, p0, Lrx/subjects/UnicastSubject$State;->error:Ljava/lang/Throwable;

    if-eqz p1, :cond_1

    if-nez p3, :cond_1

    .line 402
    iget-object p2, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {p2}, Ljava/util/Queue;->clear()V

    .line 403
    invoke-virtual {p4, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return v1

    :cond_1
    if-eqz p2, :cond_3

    if-eqz p1, :cond_2

    .line 408
    invoke-virtual {p4, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 410
    :cond_2
    invoke-virtual {p4}, Lrx/Subscriber;->onCompleted()V

    :goto_0
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method doTerminate()V
    .locals 3

    .line 422
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->terminateOnce:Ljava/util/concurrent/atomic/AtomicReference;

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lrx/functions/Action0;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 425
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    invoke-interface {v1}, Lrx/functions/Action0;->call()V

    :cond_0
    return-void
.end method

.method public isUnsubscribed()Z
    .locals 1

    .line 382
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    return v0
.end method

.method public onCompleted()V
    .locals 2

    .line 250
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v0, :cond_2

    .line 252
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    const/4 v0, 0x1

    .line 254
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 255
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_1

    .line 257
    monitor-enter p0

    .line 258
    :try_start_0
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 259
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    return-void

    :catchall_0
    move-exception v0

    .line 259
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 265
    :cond_1
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {v0}, Lrx/Subscriber;->onCompleted()V

    :cond_2
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 229
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v0, :cond_2

    .line 231
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    .line 233
    iput-object p1, p0, Lrx/subjects/UnicastSubject$State;->error:Ljava/lang/Throwable;

    const/4 v0, 0x1

    .line 234
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 235
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_1

    .line 237
    monitor-enter p0

    .line 238
    :try_start_0
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 239
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 241
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    return-void

    :catchall_0
    move-exception p1

    .line 239
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 245
    :cond_1
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;

    invoke-virtual {v0, p1}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 199
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-nez v0, :cond_2

    .line 200
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    if-nez v1, :cond_0

    .line 210
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-static {p1}, Lrx/internal/operators/NotificationLite;->next(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 213
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 215
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    return-void

    :catchall_0
    move-exception p1

    .line 213
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 219
    :cond_1
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/Subscriber;

    .line 221
    :try_start_2
    invoke-virtual {v0, p1}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    .line 223
    invoke-static {v1, v0, p1}, Lrx/exceptions/Exceptions;->throwOrReport(Ljava/lang/Throwable;Lrx/Observer;Ljava/lang/Object;)V

    :cond_2
    :goto_0
    return-void
.end method

.method replay()V
    .locals 15

    .line 300
    monitor-enter p0

    .line 301
    :try_start_0
    iget-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 302
    iput-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->missed:Z

    .line 303
    monitor-exit p0

    return-void

    .line 305
    :cond_0
    iput-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 306
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 307
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    .line 308
    iget-boolean v2, p0, Lrx/subjects/UnicastSubject$State;->delayError:Z

    .line 310
    :goto_0
    iget-object v3, p0, Lrx/subjects/UnicastSubject$State;->subscriber:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lrx/Subscriber;

    const/4 v4, 0x0

    if-eqz v3, :cond_7

    .line 313
    iget-boolean v5, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 314
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    .line 315
    invoke-virtual {p0, v5, v6, v2, v3}, Lrx/subjects/UnicastSubject$State;->checkTerminated(ZZZLrx/Subscriber;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    .line 318
    :cond_1
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->get()J

    move-result-wide v5

    const-wide v7, 0x7fffffffffffffffL

    cmp-long v9, v5, v7

    if-nez v9, :cond_2

    const/4 v7, 0x1

    goto :goto_1

    :cond_2
    const/4 v7, 0x0

    :goto_1
    const-wide/16 v8, 0x0

    move-wide v10, v8

    :goto_2
    cmp-long v12, v5, v8

    if-eqz v12, :cond_6

    .line 323
    iget-boolean v12, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 324
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_3

    const/4 v14, 0x1

    goto :goto_3

    :cond_3
    const/4 v14, 0x0

    .line 326
    :goto_3
    invoke-virtual {p0, v12, v14, v2, v3}, Lrx/subjects/UnicastSubject$State;->checkTerminated(ZZZLrx/Subscriber;)Z

    move-result v12

    if-eqz v12, :cond_4

    return-void

    :cond_4
    if-eqz v14, :cond_5

    goto :goto_4

    .line 332
    :cond_5
    invoke-static {v13}, Lrx/internal/operators/NotificationLite;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    .line 334
    :try_start_1
    invoke-virtual {v3, v12}, Lrx/Subscriber;->onNext(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v12, 0x1

    sub-long/2addr v5, v12

    add-long/2addr v10, v12

    goto :goto_2

    :catchall_0
    move-exception v1

    .line 336
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 337
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 338
    invoke-static {v1, v12}, Lrx/exceptions/OnErrorThrowable;->addValueAsLastCause(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v3, v0}, Lrx/Subscriber;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_6
    :goto_4
    if-nez v7, :cond_8

    cmp-long v3, v10, v8

    if-eqz v3, :cond_8

    neg-long v5, v10

    .line 345
    invoke-virtual {p0, v5, v6}, Lrx/subjects/UnicastSubject$State;->addAndGet(J)J

    goto :goto_5

    :cond_7
    const/4 v7, 0x0

    .line 349
    :cond_8
    :goto_5
    monitor-enter p0

    .line 350
    :try_start_2
    iget-boolean v3, p0, Lrx/subjects/UnicastSubject$State;->missed:Z

    if-nez v3, :cond_a

    if-eqz v7, :cond_9

    .line 351
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 352
    iput-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->caughtUp:Z

    .line 354
    :cond_9
    iput-boolean v4, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 355
    monitor-exit p0

    return-void

    .line 357
    :cond_a
    iput-boolean v4, p0, Lrx/subjects/UnicastSubject$State;->missed:Z

    .line 358
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    .line 306
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0
.end method

.method public request(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    if-lez v2, :cond_0

    .line 275
    invoke-static {p0, p1, p2}, Lrx/internal/operators/BackpressureUtils;->getAndAddRequest(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 276
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    goto :goto_0

    .line 278
    :cond_0
    iget-boolean p1, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    if-eqz p1, :cond_1

    .line 279
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->replay()V

    :cond_1
    :goto_0
    return-void

    .line 272
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "n >= 0 required"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsubscribe()V
    .locals 2

    .line 368
    invoke-virtual {p0}, Lrx/subjects/UnicastSubject$State;->doTerminate()V

    const/4 v0, 0x1

    .line 370
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->done:Z

    .line 371
    monitor-enter p0

    .line 372
    :try_start_0
    iget-boolean v1, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    if-eqz v1, :cond_0

    .line 373
    monitor-exit p0

    return-void

    .line 375
    :cond_0
    iput-boolean v0, p0, Lrx/subjects/UnicastSubject$State;->emitting:Z

    .line 376
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    iget-object v0, p0, Lrx/subjects/UnicastSubject$State;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void

    :catchall_0
    move-exception v0

    .line 376
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
