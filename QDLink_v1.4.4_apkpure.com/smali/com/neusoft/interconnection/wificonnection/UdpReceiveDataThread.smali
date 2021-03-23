.class public Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;
.super Ljava/lang/Thread;
.source "UdpReceiveDataThread.java"

# interfaces
.implements Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;


# static fields
.field private static final b:Ljava/lang/String; = "UdpReceiveDataThread"

.field private static final d:I = 0x481f

.field private static final e:I = 0x4820

.field private static final f:Ljava/lang/String; = "QDrive_SSPLink_UDP_MSG"

.field private static final g:Ljava/lang/String; = "Connect_Broadcast"

.field private static final h:Ljava/lang/String; = "Broadcast_ACK"


# instance fields
.field a:I

.field private c:Ljava/net/DatagramSocket;

.field private i:Z

.field private j:Ljava/lang/String;

.field private k:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

.field private l:Ljava/util/Timer;

.field private m:Ljava/util/TimerTask;

.field public mirrorPort:I

.field private n:Landroid/content/Context;

.field private o:I

.field private p:I

.field private q:Landroid/net/wifi/WifiManager;

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/bean/SearchDevice;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/util/concurrent/locks/Lock;

.field private t:Ljava/util/concurrent/locks/Lock;

.field private u:Ljava/util/concurrent/locks/Lock;

.field private v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/bean/SearchDevice;",
            ">;"
        }
    .end annotation
.end field

.field private y:Ljava/util/concurrent/locks/Lock;


# direct methods
.method public constructor <init>(ILandroid/content/Context;)V
    .locals 3

    .line 160
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->i:Z

    const-string v0, ""

    .line 66
    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->j:Ljava/lang/String;

    const/4 v0, 0x0

    .line 68
    iput v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->mirrorPort:I

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;

    .line 75
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->m:Ljava/util/TimerTask;

    .line 82
    iput v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->o:I

    .line 87
    iput v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->p:I

    .line 130
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    .line 166
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->s:Ljava/util/concurrent/locks/Lock;

    .line 167
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->t:Ljava/util/concurrent/locks/Lock;

    .line 168
    new-instance v2, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v2}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->u:Ljava/util/concurrent/locks/Lock;

    .line 459
    iput v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->a:I

    .line 541
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    .line 588
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->x:Ljava/util/List;

    .line 589
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->y:Ljava/util/concurrent/locks/Lock;

    .line 161
    iput p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->mirrorPort:I

    .line 162
    iput-object p2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->n:Landroid/content/Context;

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "new UdpReceiveDataThread this.mirrorPort:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->mirrorPort:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/List;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .locals 7

    const-string v0, "UdpReceiveDataThread initWiFiDirectGroupOwner()"

    .line 548
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->getInstance()Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    .line 550
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->n:Landroid/content/Context;

    const/16 v3, 0x30

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-virtual/range {v1 .. v6}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->initialize(Landroid/content/Context;IIILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V

    return-void
.end method

.method static synthetic b(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->t:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method private b()V
    .locals 1

    const-string v0, "UdpReceiveDataThread unInitialize()"

    .line 581
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 582
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    if-eqz v0, :cond_0

    const-string v0, "UdpReceiveDataThread unInitialize()111"

    .line 583
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-virtual {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->uninitialize()V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->o:I

    return p0
.end method

.method static synthetic d(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)I
    .locals 0

    .line 37
    iget p0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->p:I

    return p0
.end method

.method static synthetic e(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->k:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    return-object p0
.end method

.method static synthetic f(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)Ljava/util/concurrent/locks/Lock;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->u:Ljava/util/concurrent/locks/Lock;

    return-object p0
.end method

.method public static getNoUseLocalPort()I
    .locals 5

    const-string v0, "ranwang"

    .line 655
    :goto_0
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    const/4 v2, 0x0

    const v3, 0xd8ef

    .line 658
    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit16 v1, v1, 0x2711

    .line 661
    :try_start_0
    new-instance v3, Ljava/net/DatagramSocket;

    invoke-direct {v3, v1}, Ljava/net/DatagramSocket;-><init>(I)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 663
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

    .line 667
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
.method public addDevice(ILcom/neusoft/interconnection/bean/SearchDevice;)V
    .locals 1

    .line 466
    invoke-virtual {p2}, Lcom/neusoft/interconnection/bean/SearchDevice;->getResourceId()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    iget-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    if-eqz p1, :cond_1

    .line 528
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object p1

    invoke-virtual {p2}, Lcom/neusoft/interconnection/bean/SearchDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUuidName(Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/bean/SearchDevice;->getDeviceUUID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->connectDevice(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    .line 468
    :cond_2
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;

    invoke-direct {v0, p0, p2}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$3;-><init>(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;Lcom/neusoft/interconnection/bean/SearchDevice;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 524
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public addDevice(ILjava/lang/String;)V
    .locals 2

    .line 401
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$2;-><init>(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;ILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 456
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public disconnectDevice()V
    .locals 1

    .line 572
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->disconnectDevice()V

    :cond_0
    return-void
.end method

.method public onDeviceListUpdate()V
    .locals 3

    .line 597
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 599
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-virtual {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->getDeviceList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->w:Ljava/util/List;

    .line 600
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->w:Ljava/util/List;

    if-eqz v0, :cond_1

    const-string v0, "directThread onDeviceListUpdate() directDeviceList != null"

    .line 601
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->x:Ljava/util/List;

    const/4 v0, 0x0

    .line 604
    :goto_0
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 605
    new-instance v1, Lcom/neusoft/interconnection/bean/SearchDevice;

    invoke-direct {v1}, Lcom/neusoft/interconnection/bean/SearchDevice;-><init>()V

    const/4 v2, 0x2

    .line 606
    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/bean/SearchDevice;->setResourceId(I)V

    .line 607
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;

    iget-object v2, v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/bean/SearchDevice;->setDeviceUUID(Ljava/lang/String;)V

    .line 608
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;

    iget-object v2, v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->deviceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/bean/SearchDevice;->setDeviceName(Ljava/lang/String;)V

    .line 609
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;

    iget v2, v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->status:I

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/bean/SearchDevice;->setStatus(I)V

    .line 610
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->w:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;

    iget-boolean v2, v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->isOwner:Z

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/bean/SearchDevice;->setOwner(Z)V

    .line 611
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->x:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 613
    :cond_0
    iget v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->p:I

    if-nez v0, :cond_2

    .line 614
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->k:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    if-eqz v0, :cond_2

    .line 615
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->k:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->x:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayDeviceList(Ljava/util/List;)V

    goto :goto_1

    :cond_1
    const-string v0, "directThread onDeviceListUpdate() directDeviceList == null"

    .line 619
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 622
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->y:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onJoinGroupFail(II)V
    .locals 2

    .line 639
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "directThread onJoinGroupFail() reasonCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",errorNumber:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onJoinGroupStart()V
    .locals 1

    const-string v0, "directThread onJoinGroupStart()"

    .line 628
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onJoinGroupSucceed(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 633
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "directThread onJoinGroupSucceed() isGroupOwner:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",groupOwnerMac:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",groupOwnerIp:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",groupNetworkName:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",groupPassphrase:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onLeaveGroup()V
    .locals 1

    const-string v0, "directThread onLeaveGroup()"

    .line 644
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 8

    const-string v0, "receive data:"

    .line 172
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 175
    invoke-virtual {p0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->startReplyDeviceListTimer()V

    const-string v1, "UdpReceiveDataThread initWiFiDirectGroupOwner()"

    .line 1548
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1549
    invoke-static {}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->getInstance()Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    move-result-object v1

    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    .line 1550
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    iget-object v3, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->n:Landroid/content/Context;

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->initialize(Landroid/content/Context;IIILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V

    .line 177
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->c:Ljava/net/DatagramSocket;

    if-nez v1, :cond_4

    const-string v1, "UdpReceiveDataThread"

    const-string v2, "UdpReceiveDataThread run()"

    .line 178
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    new-instance v2, Ljava/net/DatagramSocket;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljava/net/DatagramSocket;-><init>(Ljava/net/SocketAddress;)V

    iput-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->c:Ljava/net/DatagramSocket;

    .line 181
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    iget-object v3, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->setDatagramSocket(Ljava/net/DatagramSocket;)V

    .line 182
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->c:Ljava/net/DatagramSocket;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/net/DatagramSocket;->setReuseAddress(Z)V

    .line 183
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->c:Ljava/net/DatagramSocket;

    new-instance v4, Ljava/net/InetSocketAddress;

    const/16 v5, 0x481f

    invoke-direct {v4, v5}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v2, v4}, Ljava/net/DatagramSocket;->bind(Ljava/net/SocketAddress;)V

    const/16 v2, 0x400

    new-array v4, v2, [B

    .line 185
    new-instance v5, Ljava/net/DatagramPacket;

    invoke-direct {v5, v4, v2}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 187
    :goto_0
    iget-boolean v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->i:Z

    if-eqz v2, :cond_3

    .line 189
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 191
    :try_start_1
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->c:Ljava/net/DatagramSocket;

    invoke-virtual {v2, v5}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 193
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getData()[B

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getLength()I

    move-result v7

    invoke-direct {v2, v4, v6, v7}, Ljava/lang/String;-><init>([BII)V

    .line 194
    invoke-virtual {v5}, Ljava/net/DatagramPacket;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->j:Ljava/lang/String;

    .line 195
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",host ip is carIp:= :"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->j:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",receiveFlag:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->i:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x31

    .line 199
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 203
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "DeviceUUID"

    .line 204
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "DeviceName"

    .line 205
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 207
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",deviceName :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",uuidName:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v7

    invoke-virtual {v7}, Lcom/neusoft/interconnection/utils/LinkConfig;->getUuidName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v6

    invoke-virtual {v6}, Lcom/neusoft/interconnection/utils/LinkConfig;->getUuidName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "contains:name \u5305\u542b:"

    .line 209
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getCurrentLinkMode()I

    move-result v2

    if-eq v2, v3, :cond_2

    .line 212
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    if-eqz v2, :cond_0

    .line 213
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-virtual {v2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->stopDiscovery()V

    .line 215
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->getNoUseLocalPort()I

    move-result v2

    iput v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->mirrorPort:I

    .line 216
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    iget v4, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->mirrorPort:I

    invoke-virtual {v2, v4}, Lcom/neusoft/interconnection/utils/LinkConfig;->setMirrorPort(I)V

    .line 217
    iget v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->mirrorPort:I

    iget-object v4, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->j:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->addDevice(ILjava/lang/String;)V

    .line 218
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    goto :goto_1

    :cond_1
    const-string v4, "contains:name \u4e0d\u5305\u542b:"

    .line 221
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "QDrive_SSPLink_UDP_MSG"

    const-string v6, "Connect_Broadcast"

    .line 222
    iget-object v7, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->j:Ljava/lang/String;

    invoke-virtual {p0, v2, v4, v6, v7}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->searchDeviceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 228
    :cond_2
    :goto_1
    :try_start_2
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->s:Ljava/util/concurrent/locks/Lock;

    :goto_2
    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V
    :try_end_2
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v2

    .line 225
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "receive data exception:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 228
    :try_start_4
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->s:Ljava/util/concurrent/locks/Lock;

    goto :goto_2

    :goto_3
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->s:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    return-void

    :catch_1
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_2
    move-exception v0

    .line 233
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "new DatagramSocket SocketException e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/SocketException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    return-void
.end method

.method public searchDeviceList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 241
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    add-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x2

    add-int/lit8 p2, p2, 0x4

    .line 245
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 249
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "DeviceUUID"

    .line 250
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "DeviceName"

    .line 251
    invoke-virtual {p2, p3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 252
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "searchDeviceList,DeviceUUID:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",DeviceName:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",ip:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 253
    new-instance p3, Lcom/neusoft/interconnection/bean/SearchDevice;

    invoke-direct {p3}, Lcom/neusoft/interconnection/bean/SearchDevice;-><init>()V

    .line 254
    invoke-virtual {p3, p1}, Lcom/neusoft/interconnection/bean/SearchDevice;->setDeviceUUID(Ljava/lang/String;)V

    .line 255
    invoke-virtual {p3, p2}, Lcom/neusoft/interconnection/bean/SearchDevice;->setDeviceName(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p3, p4}, Lcom/neusoft/interconnection/bean/SearchDevice;->setDeviceIp(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 257
    invoke-virtual {p3, p1}, Lcom/neusoft/interconnection/bean/SearchDevice;->setResourceId(I)V

    .line 259
    iget-object p2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    .line 261
    iget-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "currentDevice1===:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 265
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p4, "currentDevice2===:"

    invoke-direct {p2, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p4, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/4 p2, 0x0

    const/4 p4, 0x0

    .line 266
    :goto_0
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_2

    .line 267
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/interconnection/bean/SearchDevice;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/bean/SearchDevice;->getDeviceUUID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/neusoft/interconnection/bean/SearchDevice;->getDeviceUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/interconnection/bean/SearchDevice;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/bean/SearchDevice;->getDeviceIp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/neusoft/interconnection/bean/SearchDevice;->getDeviceIp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 269
    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "currentDevice3===:"

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/4 p4, 0x1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    if-nez p4, :cond_3

    .line 275
    iget-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->r:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 279
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method public setCancelUdpNetworkConnection()V
    .locals 8

    const-string v0, "unInitialize"

    const-string v1, "setCancelUdpNetworkConnection()"

    .line 102
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUuidName(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->b()V

    .line 105
    invoke-static {}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->getInstance()Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    move-result-object v1

    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    .line 106
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    iget-object v3, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->n:Landroid/content/Context;

    const/16 v4, 0x30

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v7, p0

    invoke-virtual/range {v2 .. v7}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->initialize(Landroid/content/Context;IIILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V

    .line 107
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    if-eqz v1, :cond_0

    const-string v1, "setCancelUdpNetworkConnection() 222"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-virtual {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->startDiscovery()V

    :cond_0
    return-void
.end method

.method public setDisConnectedWifi()V
    .locals 2

    .line 117
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUuidName(Ljava/lang/String;)V

    const-string v0, "udp receiveDataThread auto disConnectedWifi"

    .line 118
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->stopDiscovery()V

    .line 121
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-virtual {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->startDiscovery()V

    :cond_0
    return-void
.end method

.method public setReceiveFlag(Z)V
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->i:Z

    .line 96
    invoke-direct {p0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->b()V

    return-void
.end method

.method public setReturnWifiDeviceListData(I)V
    .locals 1

    .line 390
    iput p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->p:I

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set wifi is return device list type:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->p:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 392
    iget p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->o:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->p:I

    if-nez p1, :cond_0

    .line 394
    iget-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->k:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 395
    invoke-interface {p1, v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayDeviceList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public setUdpReceiveListener(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->k:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    return-void
.end method

.method public setWifiConnectedMode(I)V
    .locals 1

    .line 375
    iput p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->o:I

    .line 376
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "set wifi connected mode type:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->o:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 377
    iget p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->o:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->p:I

    if-nez p1, :cond_0

    .line 379
    iget-object p1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->k:Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->x:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 380
    invoke-interface {p1, v0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;->replayDeviceList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public startDiscovery()V
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->startDiscovery()V

    :cond_0
    return-void
.end method

.method public startReplyDeviceListTimer()V
    .locals 7

    const-string v0, "Exception e:"

    const/4 v1, 0x0

    .line 295
    :try_start_0
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 296
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 297
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 298
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 301
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 305
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->m:Ljava/util/TimerTask;

    if-eqz v2, :cond_1

    .line 306
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->m:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    .line 307
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->m:Ljava/util/TimerTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 310
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 313
    :cond_1
    :goto_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;

    .line 315
    new-instance v0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$1;-><init>(Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->m:Ljava/util/TimerTask;

    .line 335
    :try_start_2
    iget-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->m:Ljava/util/TimerTask;

    const-wide/16 v3, 0x7d0

    const-wide/16 v5, 0x7d0

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method

.method public stopDiscovery()V
    .locals 1

    .line 566
    iget-object v0, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->v:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    if-eqz v0, :cond_0

    .line 567
    invoke-virtual {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->stopDiscovery()V

    :cond_0
    return-void
.end method

.method public stopReplyDeviceListTimer()V
    .locals 4

    const-string v0, "Exception e:"

    const/4 v1, 0x0

    .line 350
    :try_start_0
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;

    if-eqz v2, :cond_0

    .line 351
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->purge()I

    .line 352
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;

    invoke-virtual {v2}, Ljava/util/Timer;->cancel()V

    .line 353
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->l:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 356
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 360
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->m:Ljava/util/TimerTask;

    if-eqz v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->m:Ljava/util/TimerTask;

    invoke-virtual {v2}, Ljava/util/TimerTask;->cancel()Z

    .line 362
    iput-object v1, p0, Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread;->m:Ljava/util/TimerTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method
