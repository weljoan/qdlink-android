.class public final Lrx/observers/SafeCompletableSubscriber;
.super Ljava/lang/Object;
.source "SafeCompletableSubscriber.java"

# interfaces
.implements Lrx/CompletableSubscriber;
.implements Lrx/Subscription;


# instance fields
.field final actual:Lrx/CompletableSubscriber;

.field done:Z

.field s:Lrx/Subscription;


# direct methods
.method public constructor <init>(Lrx/CompletableSubscriber;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lrx/observers/SafeCompletableSubscriber;->actual:Lrx/CompletableSubscriber;

    return-void
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lrx/observers/SafeCompletableSubscriber;->s:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->isUnsubscribed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public onCompleted()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    .line 49
    :try_start_0
    iget-object v0, p0, Lrx/observers/SafeCompletableSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0}, Lrx/CompletableSubscriber;->onCompleted()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 51
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 53
    new-instance v1, Lrx/exceptions/OnCompletedFailedException;

    invoke-direct {v1, v0}, Lrx/exceptions/OnCompletedFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 6

    .line 59
    invoke-static {p1}, Lrx/plugins/RxJavaHooks;->onError(Ljava/lang/Throwable;)V

    .line 60
    iget-boolean v0, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lrx/observers/SafeCompletableSubscriber;->done:Z

    .line 65
    :try_start_0
    iget-object v1, p0, Lrx/observers/SafeCompletableSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v1, p1}, Lrx/CompletableSubscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    .line 67
    invoke-static {v1}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 69
    new-instance v2, Lrx/exceptions/OnErrorFailedException;

    new-instance v3, Lrx/exceptions/CompositeException;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lrx/exceptions/CompositeException;-><init>([Ljava/lang/Throwable;)V

    invoke-direct {v2, v3}, Lrx/exceptions/OnErrorFailedException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public onSubscribe(Lrx/Subscription;)V
    .locals 1

    .line 75
    iput-object p1, p0, Lrx/observers/SafeCompletableSubscriber;->s:Lrx/Subscription;

    .line 77
    :try_start_0
    iget-object v0, p0, Lrx/observers/SafeCompletableSubscriber;->actual:Lrx/CompletableSubscriber;

    invoke-interface {v0, p0}, Lrx/CompletableSubscriber;->onSubscribe(Lrx/Subscription;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 79
    invoke-static {v0}, Lrx/exceptions/Exceptions;->throwIfFatal(Ljava/lang/Throwable;)V

    .line 80
    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    .line 81
    invoke-virtual {p0, v0}, Lrx/observers/SafeCompletableSubscriber;->onError(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public unsubscribe()V
    .locals 1

    .line 87
    iget-object v0, p0, Lrx/observers/SafeCompletableSubscriber;->s:Lrx/Subscription;

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
