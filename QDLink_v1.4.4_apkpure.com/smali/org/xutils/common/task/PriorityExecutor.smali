.class public Lorg/xutils/common/task/PriorityExecutor;
.super Ljava/lang/Object;
.source "PriorityExecutor.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field private static final CORE_POOL_SIZE:I = 0x5

.field private static final FIFO_CMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILO_CMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I = 0x100

.field private static final SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field private final mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lorg/xutils/common/task/PriorityExecutor;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    .line 24
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor$1;

    invoke-direct {v0}, Lorg/xutils/common/task/PriorityExecutor$1;-><init>()V

    sput-object v0, Lorg/xutils/common/task/PriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 33
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor$2;

    invoke-direct {v0}, Lorg/xutils/common/task/PriorityExecutor$2;-><init>()V

    sput-object v0, Lorg/xutils/common/task/PriorityExecutor;->FIFO_CMP:Ljava/util/Comparator;

    .line 47
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor$3;

    invoke-direct {v0}, Lorg/xutils/common/task/PriorityExecutor$3;-><init>()V

    sput-object v0, Lorg/xutils/common/task/PriorityExecutor;->FILO_CMP:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 8

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz p2, :cond_0

    sget-object p2, Lorg/xutils/common/task/PriorityExecutor;->FIFO_CMP:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    sget-object p2, Lorg/xutils/common/task/PriorityExecutor;->FILO_CMP:Ljava/util/Comparator;

    :goto_0
    const/16 v0, 0x100

    invoke-direct {v6, v0, p2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    .line 79
    new-instance p2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/16 v2, 0x100

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lorg/xutils/common/task/PriorityExecutor;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    move-object v0, p2

    move v1, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p2, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x5

    .line 69
    invoke-direct {p0, v0, p1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(IZ)V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 108
    instance-of v0, p1, Lorg/xutils/common/task/PriorityRunnable;

    if-eqz v0, :cond_0

    .line 109
    move-object v0, p1

    check-cast v0, Lorg/xutils/common/task/PriorityRunnable;

    sget-object v1, Lorg/xutils/common/task/PriorityExecutor;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    iput-wide v1, v0, Lorg/xutils/common/task/PriorityRunnable;->SEQ:J

    .line 111
    :cond_0
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPoolSize()I
    .locals 1

    .line 89
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v0

    return v0
.end method

.method public getThreadPoolExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 99
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public isBusy()Z
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->getActiveCount()I

    move-result v0

    iget-object v1, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setPoolSize(I)V
    .locals 1

    if-lez p1, :cond_0

    .line 94
    iget-object v0, p0, Lorg/xutils/common/task/PriorityExecutor;->mThreadPoolExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->setCorePoolSize(I)V

    :cond_0
    return-void
.end method
