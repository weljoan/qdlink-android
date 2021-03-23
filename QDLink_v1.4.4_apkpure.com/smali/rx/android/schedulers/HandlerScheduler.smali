.class public final Lrx/android/schedulers/HandlerScheduler;
.super Lrx/Scheduler;
.source "HandlerScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/android/schedulers/HandlerScheduler$HandlerWorker;
    }
.end annotation


# instance fields
.field private final handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Lrx/Scheduler;-><init>()V

    .line 38
    iput-object p1, p0, Lrx/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    return-void
.end method

.method public static from(Landroid/os/Handler;)Lrx/android/schedulers/HandlerScheduler;
    .locals 1

    if-eqz p0, :cond_0

    .line 32
    new-instance v0, Lrx/android/schedulers/HandlerScheduler;

    invoke-direct {v0, p0}, Lrx/android/schedulers/HandlerScheduler;-><init>(Landroid/os/Handler;)V

    return-object v0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "handler == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public createWorker()Lrx/Scheduler$Worker;
    .locals 2

    .line 43
    new-instance v0, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;

    iget-object v1, p0, Lrx/android/schedulers/HandlerScheduler;->handler:Landroid/os/Handler;

    invoke-direct {v0, v1}, Lrx/android/schedulers/HandlerScheduler$HandlerWorker;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method
