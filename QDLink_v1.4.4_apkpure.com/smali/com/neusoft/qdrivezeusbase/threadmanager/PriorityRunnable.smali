.class public Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;
.super Ljava/lang/Object;
.source "PriorityRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field SEQ:J

.field public final priority:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

.field private final runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;Ljava/lang/Runnable;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 20
    sget-object p1, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->NORMAL:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    :cond_0
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->priority:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    .line 21
    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    sget-object v0, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->NORMAL:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->priority:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    .line 17
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->runnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
