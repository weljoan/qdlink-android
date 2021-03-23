.class Lcom/neusoft/interconnection/linkconnection/ConnectionManager$7;
.super Ljava/util/TimerTask;
.source "ConnectionManager.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V
    .locals 0

    .line 2743
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$7;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2746
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2748
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendHeartBeat():endWriteCount-writeCount:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$7;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2750
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$7;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    return-void
.end method
