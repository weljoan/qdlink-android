.class Lorg/xutils/common/task/TaskProxy$1;
.super Ljava/lang/Object;
.source "TaskProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/common/task/TaskProxy;->doBackground()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/common/task/TaskProxy;


# direct methods
.method constructor <init>(Lorg/xutils/common/task/TaskProxy;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 50
    :try_start_0
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v0}, Lorg/xutils/common/task/TaskProxy;->access$100(Lorg/xutils/common/task/TaskProxy;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, ""

    if-nez v0, :cond_2

    :try_start_1
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 55
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->onStarted()V

    .line 57
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 62
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v0}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v0

    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v2}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/common/task/AbsTask;->doBackground()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xutils/common/task/AbsTask;->setResult(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    iget-object v2, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v2}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v2

    invoke-virtual {v2}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/xutils/common/task/TaskProxy;->setResult(Ljava/lang/Object;)V

    .line 66
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-static {v1}, Lorg/xutils/common/task/TaskProxy;->access$200(Lorg/xutils/common/task/TaskProxy;)Lorg/xutils/common/task/AbsTask;

    move-result-object v1

    invoke-virtual {v1}, Lorg/xutils/common/task/AbsTask;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/common/task/TaskProxy;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 67
    :cond_0
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_1
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_2
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v1}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Lorg/xutils/common/Callback$CancelledException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    .line 75
    :try_start_2
    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/xutils/common/task/TaskProxy;->onError(Ljava/lang/Throwable;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 73
    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v1, v0}, Lorg/xutils/common/task/TaskProxy;->onCancelled(Lorg/xutils/common/Callback$CancelledException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    :goto_0
    iget-object v0, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v0}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lorg/xutils/common/task/TaskProxy$1;->this$0:Lorg/xutils/common/task/TaskProxy;

    invoke-virtual {v1}, Lorg/xutils/common/task/TaskProxy;->onFinished()V

    throw v0
.end method
