.class Lorg/xutils/common/task/TaskProxy;
.super Lorg/xutils/common/task/AbsTask;
.source "TaskProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/common/task/TaskProxy$InternalHandler;,
        Lorg/xutils/common/task/TaskProxy$ArgsObj;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResultType:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/xutils/common/task/AbsTask<",
        "TResultType;>;"
    }
.end annotation


# static fields
.field private static final MSG_WHAT_BASE:I = 0x3b9aca00

.field private static final MSG_WHAT_ON_CANCEL:I = 0x3b9aca06

.field private static final MSG_WHAT_ON_ERROR:I = 0x3b9aca04

.field private static final MSG_WHAT_ON_FINISHED:I = 0x3b9aca07

.field private static final MSG_WHAT_ON_START:I = 0x3b9aca02

.field private static final MSG_WHAT_ON_SUCCESS:I = 0x3b9aca03

.field private static final MSG_WHAT_ON_UPDATE:I = 0x3b9aca05

.field private static final MSG_WHAT_ON_WAITING:I = 0x3b9aca01

.field static final sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

.field static final sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;


# instance fields
.field private volatile callOnCanceled:Z

.field private volatile callOnFinished:Z

.field private final executor:Ljava/util/concurrent/Executor;

.field private final task:Lorg/xutils/common/task/AbsTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/xutils/common/task/AbsTask<",
            "TResultType;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 20
    new-instance v0, Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;-><init>(Lorg/xutils/common/task/TaskProxy$1;)V

    sput-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    .line 21
    new-instance v0, Lorg/xutils/common/task/PriorityExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lorg/xutils/common/task/PriorityExecutor;-><init>(Z)V

    sput-object v0, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    return-void
.end method

.method constructor <init>(Lorg/xutils/common/task/AbsTask;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/common/task/AbsTask<",
            "TResultType;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1}, Lorg/xutils/common/task/AbsTask;-><init>(Lorg/xutils/common/Callback$Cancelable;)V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z

    .line 26
    iput-boolean v0, p0, Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z

    .line 30
    iput-object p1, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    .line 31
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v0, p0}, Lorg/xutils/common/task/AbsTask;->setTaskProxy(Lorg/xutils/common/task/TaskProxy;)V

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setTaskProxy(Lorg/xutils/common/task/TaskProxy;)V

    .line 33
    invoke-virtual {p1}, Lorg/xutils/common/task/AbsTask;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-nez p1, :cond_0

    .line 35
    sget-object p1, Lorg/xutils/common/task/TaskProxy;->sDefaultExecutor:Lorg/xutils/common/task/PriorityExecutor;

    .line 37
    :cond_0
    iput-object p1, p0, Lorg/xutils/common/task/TaskProxy;->executor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$100(Lorg/xutils/common/task/TaskProxy;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z

    return p0
.end method

.method static synthetic access$102(Lorg/xutils/common/task/TaskProxy;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/common/task/TaskProxy;->callOnCanceled:Z

    return p1
.end method

.method static synthetic access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;
    .locals 0

    .line 18
    iget-object p0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    return-object p0
.end method

.method static synthetic access$300(Lorg/xutils/common/task/TaskProxy;)Z
    .locals 0

    .line 18
    iget-boolean p0, p0, Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z

    return p0
.end method

.method static synthetic access$302(Lorg/xutils/common/task/TaskProxy;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lorg/xutils/common/task/TaskProxy;->callOnFinished:Z

    return p1
.end method


# virtual methods
.method protected final doBackground()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TResultType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 42
    invoke-virtual {p0}, Lorg/xutils/common/task/TaskProxy;->onWaiting()V

    .line 43
    new-instance v0, Lorg/xutils/common/task/PriorityRunnable;

    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    .line 44
    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v1

    new-instance v2, Lorg/xutils/common/task/TaskProxy$1;

    invoke-direct {v2, p0}, Lorg/xutils/common/task/TaskProxy$1;-><init>(Lorg/xutils/common/task/TaskProxy;)V

    invoke-direct {v0, v1, v2}, Lorg/xutils/common/task/PriorityRunnable;-><init>(Lorg/xutils/common/task/Priority;Ljava/lang/Runnable;)V

    .line 81
    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy;->executor:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 139
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->executor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public final getPriority()Lorg/xutils/common/task/Priority;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v0}, Lorg/xutils/common/task/AbsTask;->getPriority()Lorg/xutils/common/task/Priority;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    .locals 4

    .line 117
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->CANCELLED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 118
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    new-instance v1, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-direct {v1, p0, v2}, Lorg/xutils/common/task/TaskProxy$ArgsObj;-><init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V

    const p1, 0x3b9aca06

    invoke-virtual {v0, p1, v1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onError(Ljava/lang/Throwable;Z)V
    .locals 3

    .line 105
    sget-object p2, Lorg/xutils/common/task/AbsTask$State;->ERROR:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, p2}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 106
    sget-object p2, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    new-instance v0, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, v1}, Lorg/xutils/common/task/TaskProxy$ArgsObj;-><init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V

    const p1, 0x3b9aca04

    invoke-virtual {p2, p1, v0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onFinished()V
    .locals 2

    .line 123
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca07

    invoke-virtual {v0, v1, p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onStarted()V
    .locals 2

    .line 93
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->STARTED:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 94
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca02

    invoke-virtual {v0, v1, p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onSuccess(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResultType;)V"
        }
    .end annotation

    .line 99
    sget-object p1, Lorg/xutils/common/task/AbsTask$State;->SUCCESS:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, p1}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 100
    sget-object p1, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v0, 0x3b9aca03

    invoke-virtual {p1, v0, p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected varargs onUpdate(I[Ljava/lang/Object;)V
    .locals 2

    .line 112
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    new-instance v1, Lorg/xutils/common/task/TaskProxy$ArgsObj;

    invoke-direct {v1, p0, p2}, Lorg/xutils/common/task/TaskProxy$ArgsObj;-><init>(Lorg/xutils/common/task/TaskProxy;[Ljava/lang/Object;)V

    const p2, 0x3b9aca05

    invoke-virtual {v0, p2, p1, p1, v1}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method protected onWaiting()V
    .locals 2

    .line 87
    sget-object v0, Lorg/xutils/common/task/AbsTask$State;->WAITING:Lorg/xutils/common/task/AbsTask$State;

    invoke-virtual {p0, v0}, Lorg/xutils/common/task/TaskProxy;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 88
    sget-object v0, Lorg/xutils/common/task/TaskProxy;->sHandler:Lorg/xutils/common/task/TaskProxy$InternalHandler;

    const v1, 0x3b9aca01

    invoke-virtual {v0, v1, p0}, Lorg/xutils/common/task/TaskProxy$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method final setState(Lorg/xutils/common/task/AbsTask$State;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Lorg/xutils/common/task/AbsTask;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    .line 129
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy;->task:Lorg/xutils/common/task/AbsTask;

    invoke-virtual {v0, p1}, Lorg/xutils/common/task/AbsTask;->setState(Lorg/xutils/common/task/AbsTask$State;)V

    return-void
.end method
