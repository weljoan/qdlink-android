.class Lcom/neusoft/interconnection/linkconnection/ConnectionManager$1;
.super Ljava/util/TimerTask;
.source "ConnectionManager.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$1;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$1;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    iget-object v0, v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    const-string v0, "sendAppStatusTimer sendAppStatusTimer != null"

    .line 267
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$1;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->StartReceiveData()V

    .line 269
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$1;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    .line 271
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$1;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->startWriteHeartBeat()V

    .line 272
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$1;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->startReadHeartBeat()V

    return-void

    :cond_0
    const-string v0, "sendAppStatusTimer sendAppStatusTimer == null"

    .line 274
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method
