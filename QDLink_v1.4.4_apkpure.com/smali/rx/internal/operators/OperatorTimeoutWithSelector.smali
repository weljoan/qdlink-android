.class public Lrx/internal/operators/OperatorTimeoutWithSelector;
.super Lrx/internal/operators/OperatorTimeoutBase;
.source "OperatorTimeoutWithSelector.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/internal/operators/OperatorTimeoutBase<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lrx/functions/Func0;Lrx/functions/Func1;Lrx/Observable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/functions/Func0<",
            "+",
            "Lrx/Observable<",
            "TU;>;>;",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Observable<",
            "TV;>;>;",
            "Lrx/Observable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 40
    new-instance v0, Lrx/internal/operators/OperatorTimeoutWithSelector$1;

    invoke-direct {v0, p1}, Lrx/internal/operators/OperatorTimeoutWithSelector$1;-><init>(Lrx/functions/Func0;)V

    new-instance p1, Lrx/internal/operators/OperatorTimeoutWithSelector$2;

    invoke-direct {p1, p2}, Lrx/internal/operators/OperatorTimeoutWithSelector$2;-><init>(Lrx/functions/Func1;)V

    invoke-static {}, Lrx/schedulers/Schedulers;->immediate()Lrx/Scheduler;

    move-result-object p2

    invoke-direct {p0, v0, p1, p3, p2}, Lrx/internal/operators/OperatorTimeoutBase;-><init>(Lrx/internal/operators/OperatorTimeoutBase$FirstTimeoutStub;Lrx/internal/operators/OperatorTimeoutBase$TimeoutStub;Lrx/Observable;Lrx/Scheduler;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lrx/Subscriber;)Lrx/Subscriber;
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lrx/internal/operators/OperatorTimeoutBase;->call(Lrx/Subscriber;)Lrx/Subscriber;

    move-result-object p1

    return-object p1
.end method
