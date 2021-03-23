.class public abstract Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
.super Ljava/lang/Object;
.source "Animator.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method public clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
    .locals 6

    .line 192
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    .line 193
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 194
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    .line 195
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    .line 196
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 198
    iget-object v4, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 203
    :catch_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;

    move-result-object v0

    return-object v0
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public abstract getDuration()J
.end method

.method public getListeners()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public abstract getStartDelay()J
.end method

.method public abstract isRunning()Z
.end method

.method public isStarted()Z
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->isRunning()Z

    move-result v0

    return v0
.end method

.method public removeAllListeners()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    return-void

    .line 161
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 162
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 163
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;->a:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method

.method public abstract setDuration(J)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Animator;
.end method

.method public abstract setInterpolator(Landroid/view/animation/Interpolator;)V
.end method

.method public abstract setStartDelay(J)V
.end method

.method public setTarget(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setupEndValues()V
    .locals 0

    return-void
.end method

.method public setupStartValues()V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method
