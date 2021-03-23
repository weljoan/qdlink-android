.class Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;
.super Ljava/util/TimerTask;
.source "UdpReceiveDataThread.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "current device list size() replayDeviceListTimerTask run():"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->a(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->b(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 322
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->c(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->d(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)I

    move-result v0

    if-nez v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->a(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayDeviceList(Ljava/util/List;)V

    .line 325
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->a(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->b(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;->a:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->b(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
