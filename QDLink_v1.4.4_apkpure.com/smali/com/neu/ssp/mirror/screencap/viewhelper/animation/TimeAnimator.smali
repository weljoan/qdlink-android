.class public Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;
.super Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;
.source "TimeAnimator.java"


# instance fields
.field private h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator$TimeListener;

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/ValueAnimator;-><init>()V

    const-wide/16 v0, -0x1

    .line 15
    iput-wide v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->i:J

    return-void
.end method


# virtual methods
.method final a()V
    .locals 0

    return-void
.end method

.method final a(F)V
    .locals 0

    return-void
.end method

.method final a(J)Z
    .locals 11

    .line 19
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->d:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 20
    iput v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->d:I

    .line 21
    iget-wide v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->c:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_0

    .line 22
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->b:J

    goto :goto_0

    .line 24
    :cond_0
    iget-wide v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->c:J

    sub-long v3, p1, v3

    iput-wide v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->b:J

    const-wide/16 v3, -0x1

    .line 26
    iput-wide v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->c:J

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator$TimeListener;

    if-eqz v0, :cond_3

    .line 30
    iget-wide v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->b:J

    sub-long v7, p1, v3

    .line 31
    iget-wide v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->i:J

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    sub-long v1, p1, v3

    :goto_1
    move-wide v9, v1

    .line 32
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->i:J

    .line 33
    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator$TimeListener;

    move-object v6, p0

    invoke-interface/range {v5 .. v10}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator$TimeListener;->onTimeUpdate(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;JJ)V

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setTimeListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator$TimeListener;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TimeAnimator$TimeListener;

    return-void
.end method
