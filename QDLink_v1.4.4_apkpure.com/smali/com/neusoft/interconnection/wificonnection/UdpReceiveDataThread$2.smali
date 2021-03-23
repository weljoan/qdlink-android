.class Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;
.super Ljava/lang/Object;
.source "UdpReceiveDataThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:I

.field private synthetic b:Ljava/lang/String;

.field private synthetic c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;ILjava/lang/String;)V
    .locals 0

    .line 401
    iput-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    iput p2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->a:I

    iput-object p3, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "UdpReceiveDataThread"

    const-string v1, ""

    .line 404
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v2}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->f(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 406
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "port deviceUUID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",deviceName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 407
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 406
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "ControlPort"

    const/4 v4, 0x0

    .line 411
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "MirrorPort"

    .line 412
    iget v5, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->a:I

    invoke-virtual {v2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "AudioPort"

    .line 413
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "OS"

    .line 414
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "DeviceName"

    .line 415
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "DeviceUUID"

    .line 416
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "PassistMobileNum"

    .line 418
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neusoft/interconnection/utils/LinkConfig;->getPassistMobileNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "DeviceFeature"

    .line 419
    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    .line 421
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 425
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 426
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addDevice port:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x2d

    .line 428
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v0, v3

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "addDeviceRun \u5f53\u524d\u8fde\u63a5\u7684 mirrorPort:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",carIp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "QDrive_SSPLink_UDP_MSG"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Utilities;->getHexStringFour(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xd

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Utilities;->getHexStringTwo(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Broadcast_ACK"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Utilities;->getHexStringFour(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 432
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 434
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->b:Ljava/lang/String;

    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    .line 435
    new-instance v3, Ljava/net/DatagramPacket;

    array-length v4, v0

    const/16 v5, 0x4820

    invoke-direct {v3, v0, v4, v2, v5}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 436
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->setSendPack(Ljava/net/DatagramPacket;)V

    .line 438
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayUdpMessageSuccess()V
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 452
    :cond_0
    :goto_1
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUuidName(Ljava/lang/String;)V

    .line 453
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->f(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    .line 447
    :goto_2
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IOException e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayUdpMessageFail()V

    goto :goto_1

    .line 442
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UnknownHostException e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayUdpMessageFail()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 452
    :goto_4
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUuidName(Ljava/lang/String;)V

    .line 453
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;->c:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;

    invoke-static {v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->f(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
