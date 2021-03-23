.class public Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;
.super Ljava/lang/Thread;
.source "WifiServerSocketThread.java"


# instance fields
.field private a:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

.field public isAccept:Z

.field public isFlag:Z

.field public myTimer:Ljava/util/Timer;

.field public myTimerTask:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->isFlag:Z

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->isAccept:Z

    return-void
.end method

.method static synthetic a(Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;)Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->a:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 47
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 48
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getMirrorPort()I

    move-result v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start wifiserversocketthread run() mirrorPort:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 53
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->isFlag:Z

    if-eqz v1, :cond_1

    .line 54
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    new-instance v2, Ljava/net/ServerSocket;

    invoke-direct {v2, v0}, Ljava/net/ServerSocket;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setWifiServerSocket(Ljava/net/ServerSocket;)V

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start wifiserversocketthread run() 111"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDatagramSocket()Ljava/net/DatagramSocket;

    move-result-object v1

    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getSendPack()Ljava/net/DatagramPacket;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start wifiserversocketthread run() 222"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->startTimer()V

    .line 59
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiServerSocket()Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setWifiSocket(Ljava/net/Socket;)V

    const/4 v1, 0x0

    .line 60
    iput-boolean v1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->isFlag:Z

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start wifiserversocketthread run() 333"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 62
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUuidName(Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "start wifiserversocketthread run() 444"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setTcpNoDelay(Z)V

    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start wifiserversocketthread run() 555"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v1

    const/high16 v3, 0xa00000

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setSendBufferSize(I)V

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "start wifiserversocketthread run() 666"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/net/Socket;->setReceiveBufferSize(I)V

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start wifiserversocketthread run() 777"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/net/Socket;->setKeepAlive(Z)V

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start wifiserversocketthread run() 888"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 72
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    sput-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start wifiserversocketthread run() 999"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "start wifiserversocketthread run() 10101"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 78
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->a:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v1, :cond_0

    const-string v1, "linkConnectionInterface != null onUSBConnected()"

    .line 79
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 80
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 81
    iput-boolean v2, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->isAccept:Z

    .line 82
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->a:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    invoke-interface {v1}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBConnected()V

    .line 83
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->a:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setLinkConnectionInterface(Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "linkConnectionInterface == null onUSBConnected()"

    .line 86
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->a:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v0, :cond_2

    .line 95
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 96
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->a:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBFail()V

    :cond_2
    return-void
.end method

.method public setLinkConnectionInterface(Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->a:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    return-void
.end method

.method public startTimer()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->myTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 106
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->myTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 107
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->myTimer:Ljava/util/Timer;

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->myTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 111
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->myTimerTask:Ljava/util/TimerTask;

    .line 114
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->myTimer:Ljava/util/Timer;

    .line 115
    new-instance v0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread$1;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread$1;-><init>(Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->myTimerTask:Ljava/util/TimerTask;

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->myTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->myTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startTimer() run exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method
