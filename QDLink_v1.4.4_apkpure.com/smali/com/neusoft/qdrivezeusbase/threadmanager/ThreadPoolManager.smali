.class public Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "ThreadPoolManager.java"


# static fields
.field private static final CORE_POOL_SIZE:I = 0xa

.field private static final CPU_FILTER:Ljava/io/FileFilter;

.field private static final FIFO:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:I = 0x1

.field private static final LIFO:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAXIMUM_POOL_SIZE:I = 0x100

.field private static final SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

.field private static instance:Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager; = null

.field private static mCorePoolSize:I = 0xa

.field private static final sThreadFactory:Ljava/util/concurrent/ThreadFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x0

    .line 29
    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->instance:Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;

    .line 43
    new-instance v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$1;

    invoke-direct {v0}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$1;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    .line 56
    new-instance v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$2;

    invoke-direct {v0}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$2;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->FIFO:Ljava/util/Comparator;

    .line 73
    new-instance v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$3;

    invoke-direct {v0}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$3;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->LIFO:Ljava/util/Comparator;

    .line 147
    new-instance v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$4;

    invoke-direct {v0}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$4;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->CPU_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;",
            "Ljava/util/concurrent/ThreadFactory;",
            ")V"
        }
    .end annotation

    .line 119
    invoke-direct/range {p0 .. p7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 8

    .line 106
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->FIFO:Ljava/util/Comparator;

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->LIFO:Ljava/util/Comparator;

    :goto_0
    const/16 v0, 0x100

    invoke-direct {v6, v0, p2}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V

    sget-object v7, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->sThreadFactory:Ljava/util/concurrent/ThreadFactory;

    const/16 v2, 0x100

    const-wide/16 v3, 0x1

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 112
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->getNumberOfCPUCores()I

    move-result p1

    if-lez p1, :cond_1

    mul-int/lit8 p1, p1, 0x2

    .line 114
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->setCorePoolSize(I)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 93
    sget v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->mCorePoolSize:I

    invoke-direct {p0, v0, p1}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;-><init>(IZ)V

    .line 94
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->getNumberOfCPUCores()I

    move-result p1

    if-lez p1, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 96
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->setCorePoolSize(I)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;
    .locals 2

    .line 32
    sget-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->instance:Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;

    if-nez v0, :cond_0

    .line 33
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->mCorePoolSize:I

    .line 34
    new-instance v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;-><init>(Z)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->instance:Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->instance:Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;

    return-object v0
.end method

.method public static getNumberOfCPUCores()I
    .locals 3

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, -0x1

    .line 179
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->CPU_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 3

    .line 138
    instance-of v0, p1, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;

    if-eqz v0, :cond_0

    .line 139
    move-object v0, p1

    check-cast v0, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;

    sget-object v1, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->SEQ_SEED:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->SEQ:J

    .line 141
    :cond_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isBusy()Z
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->getActiveCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->getCorePoolSize()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
