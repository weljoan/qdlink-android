.class Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread$1;
.super Ljava/util/TimerTask;
.source "WifiServerSocketThread.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread$1;->a:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startTimer() run exception: isAccept:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread$1;->a:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

    iget-boolean v1, v1, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->isAccept:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread$1;->a:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

    iget-boolean v0, v0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->isAccept:Z

    if-nez v0, :cond_0

    .line 122
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 123
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread$1;->a:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->a(Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;)Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread$1;->a:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->a(Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;)Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBDisconnected()V

    :cond_0
    return-void
.end method
