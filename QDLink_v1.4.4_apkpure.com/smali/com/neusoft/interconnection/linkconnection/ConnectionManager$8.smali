.class Lcom/neusoft/interconnection/linkconnection/ConnectionManager$8;
.super Ljava/util/TimerTask;
.source "ConnectionManager.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V
    .locals 0

    .line 2794
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$8;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2797
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2798
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$8;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->k(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1388

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 2801
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$8;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "5A5A"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2802
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendHeartBeat():endReadCount - readCount :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$8;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->k(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)J

    move-result-wide v3

    sub-long/2addr v0, v3

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ",LinkConfig.getInstance().getLinkMode():"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2803
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2802
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2805
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2813
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$8;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->closeWifiButton()V

    goto :goto_0

    .line 2809
    :cond_1
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$8;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->closeUsbButton()V

    :cond_2
    :goto_0
    return-void
.end method
