.class public Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;
.super Ljava/lang/Object;
.source "WifiConnectManager.java"

# interfaces
.implements Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;


# static fields
.field public static final RETURN_DEVICE_DATA_NO:I = 0x1

.field public static final RETURN_DEVICE_DATA_YES:I = 0x0

.field private static a:Lcom/neusoft/interconnection/wificonnection/WifiConnectManager; = null

.field public static final bufferSize:I = 0xa00000


# instance fields
.field private b:Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;

.field private c:Landroid/content/Context;

.field private d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->c:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;
    .locals 1

    .line 48
    sget-object v0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->a:Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->a:Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    .line 51
    :cond_0
    sget-object p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->a:Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    return-object p0
.end method

.method public static getNoUseLocalPort()I
    .locals 5

    const-string v0, "ranwang"

    .line 180
    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    const v3, 0xd8ef

    .line 183
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2711

    .line 186
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3, v1}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SocketException:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    .line 192
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "UdpRecThread getNoUseLocalPort() falg"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",random:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    return v1
.end method


# virtual methods
.method public addDevice(Lcom/neusoft/interconnection/bean/SearchDevice;)V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->addDevice(ILcom/neusoft/interconnection/bean/SearchDevice;)V

    :cond_0
    return-void
.end method

.method public disconnectDevice()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->disconnectDevice()V

    :cond_0
    return-void
.end method

.method public replayDeviceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/bean/SearchDevice;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->b:Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;

    if-eqz v0, :cond_0

    .line 168
    invoke-interface {v0, p1}, Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;->replayDeviceList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public replayUdpMessageFail()V
    .locals 0

    return-void
.end method

.method public replayUdpMessageSuccess()V
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->b:Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;

    if-eqz v0, :cond_0

    .line 156
    invoke-interface {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;->replyConnectSuccess()V

    :cond_0
    return-void
.end method

.method public setCancelNetworkConnection()V
    .locals 2

    .line 125
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 126
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->setCancelUdpNetworkConnection()V

    :cond_0
    return-void
.end method

.method public setDisConnectedWifi()V
    .locals 2

    .line 117
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 118
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->setDisConnectedWifi()V

    :cond_0
    return-void
.end method

.method public setWifiConnectCallback(Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->b:Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;

    return-void
.end method

.method public setWifiConnectedMode(I)V
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    if-eqz v0, :cond_0

    .line 98
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->setWifiConnectedMode(I)V

    :cond_0
    return-void
.end method

.method public setWifiDeviceListData(I)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->setReturnWifiDeviceListData(I)V

    :cond_0
    return-void
.end method

.method public startDiscovery()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->startDiscovery()V

    :cond_0
    return-void
.end method

.method public startSocketConnect()V
    .locals 3

    .line 64
    new-instance v0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->c:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;-><init>(ILandroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    .line 65
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-virtual {v0, p0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->setUdpReceiveListener(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;)V

    .line 66
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->start()V

    return-void
.end method

.method public stopDiscovery()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    if-eqz v0, :cond_0

    .line 139
    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->stopDiscovery()V

    :cond_0
    return-void
.end method

.method public stopSocketConnect()V
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 74
    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->setReceiveFlag(Z)V

    .line 75
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->stopReplyDeviceListTimer()V

    .line 76
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->interrupt()V

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->d:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    :cond_0
    return-void
.end method
