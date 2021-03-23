.class final Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$2;
.super Ljava/lang/Object;
.source "ThreadPoolManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 56
    check-cast p1, Ljava/lang/Runnable;

    check-cast p2, Ljava/lang/Runnable;

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager$2;->compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I

    move-result p1

    return p1
.end method

.method public compare(Ljava/lang/Runnable;Ljava/lang/Runnable;)I
    .locals 2

    .line 59
    instance-of v0, p1, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;

    if-eqz v0, :cond_1

    instance-of v0, p2, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;

    if-eqz v0, :cond_1

    .line 60
    check-cast p1, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;

    .line 61
    check-cast p2, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;

    .line 62
    iget-object v0, p1, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->priority:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->ordinal()I

    move-result v0

    iget-object v1, p2, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->priority:Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/threadmanager/Priority;->ordinal()I

    move-result v1

    sub-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 63
    iget-wide v0, p1, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->SEQ:J

    iget-wide p1, p2, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;->SEQ:J

    sub-long/2addr v0, p1

    long-to-int v0, v0

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
