.class Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;
.super Ljava/lang/Object;
.source "UdpReceiveDataThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/bean/SearchDevice;

.field private synthetic b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;Lcom/neusoft/interconnection/bean/SearchDevice;)V
    .locals 0

    .line 468
    iput-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    iput-object p2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->a:Lcom/neusoft/interconnection/bean/SearchDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "UdpReceiveDataThread"

    .line 471
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->f(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 473
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->getNoUseLocalPort()I

    move-result v2

    iput v2, v1, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->a:I

    .line 474
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    iget v2, v2, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->a:I

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setMirrorPort(I)V

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wifidirect deviceUUID:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",deviceName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 475
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "ControlPort"

    const/4 v3, 0x0

    .line 479
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "MirrorPort"

    .line 480
    iget-object v4, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    iget v4, v4, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->a:I

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "AudioPort"

    .line 481
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "OS"

    .line 482
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "DeviceName"

    .line 483
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "DeviceUUID"

    .line 484
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 485
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "PassistMobileNum"

    .line 486
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/interconnection/utils/LinkConfig;->getPassistMobileNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "DeviceFeature"

    .line 487
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 490
    :try_start_2
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 494
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 495
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addDevice wifiDirect:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2d

    .line 497
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    .line 499
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "addDeviceRun \u5f53\u524d\u8fde\u63a5\u7684 mirrorPort:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    iget v3, v3, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",carIp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->a:Lcom/neusoft/interconnection/bean/SearchDevice;

    invoke-virtual {v3}, Lcom/neusoft/interconnection/bean/SearchDevice;->getDeviceIp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 500
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QDrive_SSPLink_UDP_MSG"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Utilities;->getHexStringFour(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Utilities;->getHexStringTwo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Broadcast_ACK"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Utilities;->getHexStringFour(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 501
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 503
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->a:Lcom/neusoft/interconnection/bean/SearchDevice;

    invoke-virtual {v1}, Lcom/neusoft/interconnection/bean/SearchDevice;->getDeviceIp()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    .line 504
    new-instance v2, Ljava/net/DatagramPacket;

    array-length v3, v0

    const/16 v4, 0x4820

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 505
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setSendPack(Ljava/net/DatagramPacket;)V

    .line 507
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayUdpMessageSuccess()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 521
    :cond_0
    :goto_1
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->f(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    .line 516
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "IOException e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 517
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 518
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayUdpMessageFail()V

    goto :goto_1

    :catch_2
    move-exception v0

    .line 511
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UnknownHostException e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 513
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayUdpMessageFail()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 521
    :goto_2
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;->b:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->f(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
