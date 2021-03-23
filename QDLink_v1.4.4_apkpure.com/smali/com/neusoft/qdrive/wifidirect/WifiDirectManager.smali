.class public Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"


# static fields
.field public static final DISCOVERY_MODE_DNSSD:I = 0x1

.field public static final DISCOVERY_MODE_PEERS:I = 0x0

.field public static final DISCOVERY_MODE_UPNP:I = 0x2

.field public static final TO_BE_OWNER_CREATE_GO:I = 0x2

.field public static final TO_BE_OWNER_FALSE:I = 0x0

.field public static final TO_BE_OWNER_TRUE:I = 0x1

.field private static l:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:I

.field private F:I

.field private G:Z

.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private J:Ljava/lang/String;

.field private K:Ljava/lang/String;

.field private final a:Ljava/lang/String;

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:I

.field private m:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/net/wifi/p2p/WifiP2pManager;

.field private o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private p:Landroid/content/BroadcastReceiver;

.field private q:Landroid/content/IntentFilter;

.field private r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

.field private s:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/Timer;

.field private v:Ljava/util/TimerTask;

.field private w:Ljava/lang/Thread;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-class v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 47
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b:I

    const/4 v1, 0x1

    .line 48
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->c:I

    const/4 v1, 0x2

    .line 49
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->d:I

    const/4 v1, 0x3

    .line 51
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->e:I

    const/16 v1, 0x3c

    .line 52
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->f:I

    const/16 v1, 0xf

    .line 54
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->g:I

    .line 55
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->h:I

    const-string v1, "QDLink_DnsSd_Instance"

    .line 57
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->i:Ljava/lang/String;

    const-string v1, "QDLink_UPnP_Device"

    .line 58
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->j:Ljava/lang/String;

    const/16 v1, 0x1e

    .line 60
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->k:I

    const/4 v1, 0x0

    .line 73
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    .line 74
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    const/4 v2, -0x1

    .line 78
    iput v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->x:I

    .line 79
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->y:Ljava/lang/String;

    .line 80
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    .line 81
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    .line 87
    iput-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->C:Z

    .line 88
    iput-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    .line 89
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    .line 90
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->q:Landroid/content/IntentFilter;

    .line 101
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->q:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 103
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->q:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->q:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->q:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->q:Landroid/content/IntentFilter;

    const-string v2, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 108
    new-instance v1, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;

    invoke-direct {v1, p0, v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;B)V

    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->p:Landroid/content/BroadcastReceiver;

    .line 109
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->t:Ljava/util/Collection;

    .line 110
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;

    invoke-direct {v2, p0, v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;B)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->w:Ljava/lang/Thread;

    return-void
.end method

.method static synthetic a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;I)I
    .locals 0

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    return p1
.end method

.method private a(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;
    .locals 2

    .line 948
    iget v0, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 950
    :cond_0
    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    const/4 v1, 0x0

    .line 951
    iput v1, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->status:I

    goto :goto_0

    .line 955
    :cond_1
    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    .line 956
    iput v1, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->status:I

    goto :goto_0

    .line 960
    :cond_2
    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    const/4 v1, 0x2

    .line 961
    iput v1, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->status:I

    .line 968
    :goto_0
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    iput-object v1, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->deviceName:Ljava/lang/String;

    .line 969
    iget-object v1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v1, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->deviceAddress:Ljava/lang/String;

    .line 970
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDevice;->isGroupOwner()Z

    move-result p1

    iput-boolean p1, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;->isOwner:Z

    return-object v0
.end method

.method static synthetic a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->s:Ljava/util/Collection;

    return-object p1
.end method

.method private a()V
    .locals 3

    .line 491
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 494
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    .line 495
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "discoverPeers: call discoverPeers!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$4;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$4;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x1

    const-string v1, "wifi_p2p_state"

    .line 250
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_8

    .line 252
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v3, "processStateBroadcast: Wifi P2P Enable"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-boolean p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez p1, :cond_a

    .line 254
    iput-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    .line 255
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->cancelDeviceConnect()V

    .line 256
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->disconnectDevice()V

    .line 1850
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const/4 v4, 0x3

    if-lt p1, v3, :cond_1

    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->y:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1854
    :cond_0
    :try_start_0
    const-class p1, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v3, "setDeviceName"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v6, v5, v1

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1856
    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->y:Ljava/lang/String;

    aput-object v6, v5, v0

    new-instance v6, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$19;

    invoke-direct {v6, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$19;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    aput-object v6, v5, v1

    invoke-virtual {p1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1868
    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setDeviceName: throws exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1873
    :cond_1
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt p1, v3, :cond_3

    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->x:I

    if-gez p1, :cond_2

    goto :goto_1

    .line 1877
    :cond_2
    :try_start_1
    const-class p1, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v3, "setWifiP2pChannels"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v7, v6, v4

    invoke-virtual {p1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 1879
    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v6, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$20;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$20;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    aput-object v0, v5, v4

    invoke-virtual {p1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1891
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOperatingChannel: throws exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_3
    :goto_1
    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-nez p1, :cond_4

    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-eq v1, p1, :cond_5

    :cond_4
    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-eqz p1, :cond_7

    .line 2511
    :cond_5
    iget-boolean p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    if-eqz p1, :cond_6

    goto :goto_2

    .line 2514
    :cond_6
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v0, "createGroup: call createGroup"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2515
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$5;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$5;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 263
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->startDiscovery()V

    return-void

    :cond_8
    if-ne p1, v0, :cond_a

    .line 266
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v0, "processStateBroadcast: Wifi P2P Disable"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-boolean p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz p1, :cond_a

    .line 268
    iput-boolean v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    .line 269
    iget-boolean p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->C:Z

    if-eqz p1, :cond_9

    .line 270
    invoke-direct {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m()V

    .line 271
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->stopDiscovery()V

    .line 273
    :cond_9
    iput v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 274
    iput v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    .line 275
    iput-boolean v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    const/4 p1, 0x0

    .line 276
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    .line 277
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    .line 278
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    .line 279
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    .line 280
    monitor-enter p0

    .line 281
    :try_start_2
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->s:Ljava/util/Collection;

    .line 282
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->t:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 283
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_a
    return-void
.end method

.method private a(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0

    .line 323
    monitor-enter p0

    .line 324
    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->s:Ljava/util/Collection;

    .line 325
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    if-eqz p1, :cond_0

    .line 327
    invoke-interface {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onDeviceListUpdate()V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 325
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/content/Intent;)V
    .locals 8

    const/4 v0, 0x1

    const-string v1, "wifi_p2p_state"

    .line 6250
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v1, :cond_8

    .line 6252
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v3, "processStateBroadcast: Wifi P2P Enable"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6253
    iget-boolean p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez p1, :cond_a

    .line 6254
    iput-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    .line 6255
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->cancelDeviceConnect()V

    .line 6256
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->disconnectDevice()V

    .line 6850
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    const/4 v4, 0x3

    if-lt p1, v3, :cond_1

    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->y:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 6854
    :cond_0
    :try_start_0
    const-class p1, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v3, "setDeviceName"

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v6, v5, v2

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v0

    const-class v6, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v6, v5, v1

    invoke-virtual {p1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 6856
    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v6, v5, v2

    iget-object v6, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->y:Ljava/lang/String;

    aput-object v6, v5, v0

    new-instance v6, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$19;

    invoke-direct {v6, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$19;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    aput-object v6, v5, v1

    invoke-virtual {p1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6868
    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setDeviceName: throws exception: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6873
    :cond_1
    :goto_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt p1, v3, :cond_3

    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->x:I

    if-gez p1, :cond_2

    goto :goto_1

    .line 6877
    :cond_2
    :try_start_1
    const-class p1, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v3, "setWifiP2pChannels"

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    const-class v7, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    aput-object v7, v6, v4

    invoke-virtual {p1, v3, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 6879
    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v6, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->x:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$20;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$20;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    aput-object v0, v5, v4

    invoke-virtual {p1, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 6891
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOperatingChannel: throws exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6259
    :cond_3
    :goto_1
    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-nez p1, :cond_4

    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-eq v1, p1, :cond_5

    :cond_4
    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-eqz p1, :cond_7

    .line 7511
    :cond_5
    iget-boolean p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz p1, :cond_7

    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    if-eqz p1, :cond_6

    goto :goto_2

    .line 7514
    :cond_6
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v0, "createGroup: call createGroup"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7515
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$5;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$5;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 6263
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->startDiscovery()V

    return-void

    :cond_8
    if-ne p1, v0, :cond_a

    .line 6266
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v0, "processStateBroadcast: Wifi P2P Disable"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6267
    iget-boolean p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz p1, :cond_a

    .line 6268
    iput-boolean v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    .line 6269
    iget-boolean p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->C:Z

    if-eqz p1, :cond_9

    .line 6270
    invoke-direct {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m()V

    .line 6271
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->stopDiscovery()V

    .line 6273
    :cond_9
    iput v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 6274
    iput v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    .line 6275
    iput-boolean v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    const/4 p1, 0x0

    .line 6276
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    .line 6277
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    .line 6278
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    .line 6279
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    .line 6280
    monitor-enter p0

    .line 6281
    :try_start_2
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->s:Ljava/util/Collection;

    .line 6282
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->t:Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 6283
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_a
    return-void
.end method

.method static synthetic a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    return-void
.end method

.method static synthetic b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;I)I
    .locals 0

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    return p1
.end method

.method static synthetic b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 511
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    if-eqz v0, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "createGroup: call createGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$5;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$5;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Intent;)V
    .locals 2

    .line 290
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const-string v1, "discoveryState"

    .line 293
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "processDiscoveryChangedBroadcast: Discovery Start!"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    return-void

    .line 298
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v0, "processDiscoveryChangedBroadcast: Discovery Stop!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 299
    iput p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    return-void
.end method

.method static synthetic b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/content/Intent;)V
    .locals 2

    .line 8290
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    const-string v1, "discoveryState"

    .line 8293
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-ne v0, p1, :cond_0

    .line 8295
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "processDiscoveryChangedBroadcast: Discovery Start!"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8296
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    return-void

    .line 8298
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v0, "processDiscoveryChangedBroadcast: Discovery Stop!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 8299
    iput p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    :cond_1
    return-void
.end method

.method private b(Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z
    .locals 2

    .line 479
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 482
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 483
    iget v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v1, v0, :cond_1

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z
    .locals 1

    .line 8479
    iget p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    .line 8482
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 8483
    iget p1, p1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    if-ne v0, p1, :cond_1

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private c()V
    .locals 3

    .line 530
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 534
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$6;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$6;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 2

    .line 304
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 307
    :cond_0
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-nez v0, :cond_2

    .line 308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const-string v0, "wifiP2pDeviceList"

    .line 309
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 310
    invoke-direct {p0, p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    return-void

    .line 312
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$1;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$1;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/content/Intent;)V
    .locals 2

    .line 8304
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_1

    .line 8307
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-nez v0, :cond_1

    .line 8308
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const-string v0, "wifiP2pDeviceList"

    .line 8309
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .line 8310
    invoke-direct {p0, p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    return-void

    .line 8312
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v1, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$1;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$1;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->C:Z

    return p0
.end method

.method static synthetic d(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    return p0
.end method

.method private d()V
    .locals 4

    .line 549
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "_ssplink._tcp"

    const-string v2, "QDLink_DnsSd_Instance"

    .line 553
    invoke-static {v2, v1, v0}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$7;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$7;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private d(Landroid/content/Intent;)V
    .locals 9

    .line 332
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "wifiP2pInfo"

    .line 335
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 336
    iget-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_2

    .line 337
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "processConnectionBroadcast: in the Group! groupOwnerAddress: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", groupFormed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isGroupOwner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    invoke-direct {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m()V

    .line 339
    iget-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    iput-boolean v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    .line 340
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    .line 341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    const-string v0, "p2pGroupInfo"

    .line 342
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 343
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    .line 347
    :cond_1
    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    if-eq p1, v2, :cond_5

    .line 348
    iput v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 349
    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    if-eqz v3, :cond_5

    .line 350
    iget-boolean v4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    iget-object v5, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    iget-object v6, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    iget-object v7, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    iget-object v8, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onJoinGroupSucceed(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 354
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v0, "processConnectionBroadcast: out of Group!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 355
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    .line 356
    invoke-direct {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m()V

    .line 357
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 358
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    if-eqz p1, :cond_4

    .line 359
    invoke-interface {p1, v1, v1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onJoinGroupFail(II)V

    goto :goto_0

    :cond_3
    if-ne v2, v0, :cond_4

    .line 362
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 363
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    if-eqz p1, :cond_4

    .line 364
    invoke-interface {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onLeaveGroup()V

    .line 367
    :cond_4
    :goto_0
    iput-boolean v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    const/4 p1, 0x0

    .line 368
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    .line 369
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    .line 370
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    .line 371
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method static synthetic d(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/content/Intent;)V
    .locals 9

    .line 8332
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_4

    const-string v0, "wifiP2pInfo"

    .line 8335
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pInfo;

    .line 8336
    iget-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    .line 8337
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "processConnectionBroadcast: in the Group! groupOwnerAddress: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", groupFormed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupFormed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isGroupOwner: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8338
    invoke-direct {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m()V

    .line 8339
    iget-boolean v1, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->isGroupOwner:Z

    iput-boolean v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    .line 8340
    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pInfo;->groupOwnerAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    .line 8341
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const-string v0, "p2pGroupInfo"

    .line 8342
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pGroup;

    .line 8343
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    .line 8344
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getNetworkName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    .line 8345
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getPassphrase()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    .line 8347
    :cond_0
    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    if-eq p1, v2, :cond_4

    .line 8348
    iput v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 8349
    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    if-eqz v3, :cond_4

    .line 8350
    iget-boolean v4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    iget-object v5, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    iget-object v6, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    iget-object v7, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    iget-object v8, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    invoke-interface/range {v3 .. v8}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onJoinGroupSucceed(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 8354
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v0, "processConnectionBroadcast: out of Group!"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 8355
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    .line 8356
    invoke-direct {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m()V

    .line 8357
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 8358
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    if-eqz p1, :cond_3

    .line 8359
    invoke-interface {p1, v1, v1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onJoinGroupFail(II)V

    goto :goto_0

    :cond_2
    if-ne v2, v0, :cond_3

    .line 8362
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 8363
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    if-eqz p1, :cond_3

    .line 8364
    invoke-interface {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onLeaveGroup()V

    .line 8367
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    const/4 p1, 0x0

    .line 8368
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    .line 8369
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    .line 8370
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    .line 8371
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    :cond_4
    return-void
.end method

.method private e()V
    .locals 4

    .line 569
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 572
    :cond_0
    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    .line 592
    new-instance v1, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$9;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$9;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    .line 598
    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v3, v0, v1}, Landroid/net/wifi/p2p/WifiP2pManager;->setDnsSdResponseListeners(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V

    .line 600
    invoke-static {}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;->newInstance()Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;

    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$10;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$10;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method static synthetic e(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    return p0
.end method

.method private f()V
    .locals 4

    .line 616
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 619
    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "QDLink_UPnP_Device"

    invoke-static {v0, v2, v1}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;

    move-result-object v0

    .line 620
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$11;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$11;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method static synthetic f(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->B:Z

    return p0
.end method

.method static synthetic g(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    return p0
.end method

.method private g()V
    .locals 4

    .line 635
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 638
    :cond_0
    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    .line 661
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1, v2, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->setUpnpServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V

    .line 663
    invoke-static {}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;->newInstance()Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$13;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$13;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public static getInstance()Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;
    .locals 1

    .line 114
    sget-object v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->l:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;-><init>()V

    sput-object v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->l:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    .line 117
    :cond_0
    sget-object v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->l:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    return-object v0
.end method

.method static synthetic h(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    return p0
.end method

.method private h()V
    .locals 3

    .line 679
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 682
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$14;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$14;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method static synthetic i(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    return-object p0
.end method

.method private i()V
    .locals 3

    .line 697
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$15;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$15;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->clearServiceRequests(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method private j()V
    .locals 8

    .line 850
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->y:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 854
    :cond_0
    :try_start_0
    const-class v0, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v1, "setDeviceName"

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const-class v4, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 856
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v3, v2, v5

    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->y:Ljava/lang/String;

    aput-object v3, v2, v6

    new-instance v3, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$19;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$19;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 868
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setDeviceName: throws exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 3

    .line 8491
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 8494
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    .line 8495
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "discoverPeers: call discoverPeers!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8496
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$4;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$4;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    return-object p0
.end method

.method private k()V
    .locals 9

    .line 873
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->x:I

    if-gez v0, :cond_0

    goto :goto_0

    .line 877
    :cond_0
    :try_start_0
    const-class v0, Landroid/net/wifi/p2p/WifiP2pManager;

    const-string v1, "setWifiP2pChannels"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const-class v4, Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    const/4 v8, 0x3

    aput-object v4, v3, v8

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 879
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    aput-object v3, v2, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    iget v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->x:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$20;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$20;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 891
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "setOperatingChannel: throws exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private l()V
    .locals 4

    .line 896
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 898
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    .line 900
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 901
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 902
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    .line 904
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    .line 905
    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    .line 931
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic l(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 3

    .line 8530
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_0

    .line 8534
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$6;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$6;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_0
    return-void
.end method

.method static synthetic m(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/util/Collection;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->t:Ljava/util/Collection;

    return-object p0
.end method

.method private m()V
    .locals 2

    .line 935
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "stopCancelConnectTimer: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 937
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 938
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    .line 940
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 941
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 942
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method static synthetic n(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m()V

    return-void
.end method


# virtual methods
.method public cancelDeviceConnect()V
    .locals 3

    .line 756
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 759
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "cancelDeviceConnect: call cancelConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    invoke-direct {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m()V

    const/4 v0, 0x1

    .line 761
    iget v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 762
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 764
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$17;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$17;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public connectDevice(Ljava/lang/String;)V
    .locals 3

    .line 714
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    const/4 v1, 0x1

    if-eq v1, v0, :cond_6

    if-eqz p1, :cond_6

    const-string v0, ""

    .line 715
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 718
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v2, "connectDevice: called!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    if-nez v0, :cond_1

    .line 720
    iput v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 721
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    if-eqz v0, :cond_1

    .line 722
    invoke-interface {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onJoinGroupStart()V

    .line 725
    :cond_1
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pConfig;

    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pConfig;-><init>()V

    .line 726
    iput-object p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    .line 727
    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-nez p1, :cond_3

    .line 728
    iget p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-ne v1, p1, :cond_2

    const/16 p1, 0xf

    .line 729
    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 731
    iput p1, v0, Landroid/net/wifi/p2p/WifiP2pConfig;->groupOwnerIntent:I

    .line 734
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {p1, v1, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->connect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pConfig;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 5896
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 5897
    invoke-virtual {p1}, Ljava/util/TimerTask;->cancel()Z

    .line 5898
    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    .line 5900
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    if-eqz p1, :cond_5

    .line 5901
    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 5902
    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    .line 5904
    :cond_5
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    .line 5905
    new-instance p1, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    .line 5931
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->u:Ljava/util/Timer;

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->v:Ljava/util/TimerTask;

    const-wide/32 v1, 0xea60

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_6
    :goto_1
    return-void
.end method

.method public disconnectDevice()V
    .locals 3

    .line 778
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 781
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "disconnectDevice: call removeGroup"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$18;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$18;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method

.method public getDeviceList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;",
            ">;"
        }
    .end annotation

    .line 796
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 797
    monitor-enter p0

    .line 798
    :try_start_0
    iget v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-nez v1, :cond_2

    .line 799
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->s:Ljava/util/Collection;

    if-nez v1, :cond_0

    .line 800
    monitor-exit p0

    return-object v0

    .line 802
    :cond_0
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->s:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 803
    invoke-direct {p0, v2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 807
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 810
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 811
    iget-object v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->t:Ljava/util/Collection;

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 812
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 813
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;

    .line 814
    iget-wide v5, v4, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;->b:J

    sub-long v5, v1, v5

    const-wide/16 v7, 0x7530

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    .line 815
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 818
    :cond_3
    iget-object v4, v4, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    invoke-direct {p0, v4}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Landroid/net/wifi/p2p/WifiP2pDevice;)Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$Device;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 822
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 825
    :cond_5
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getGroupNetworkName()Ljava/lang/String;
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupOwnerIp()Ljava/lang/String;
    .locals 1

    .line 838
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupOwnerMac()Ljava/lang/String;
    .locals 1

    .line 834
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupPassphrase()Ljava/lang/String;
    .locals 1

    .line 846
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;IIILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V
    .locals 7

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    .line 163
    invoke-virtual/range {v0 .. v6}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->initialize(Landroid/content/Context;ILjava/lang/String;IILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;IILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v5, p3

    move-object v6, p4

    .line 155
    invoke-virtual/range {v0 .. v6}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->initialize(Landroid/content/Context;ILjava/lang/String;IILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;ILjava/lang/String;IILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->C:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->C:Z

    .line 125
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "initialize: start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m:Ljava/lang/ref/WeakReference;

    .line 127
    iput p2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->x:I

    .line 128
    iput-object p3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->y:Ljava/lang/String;

    .line 129
    iput p4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    .line 130
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x10

    if-lt p1, p2, :cond_1

    .line 131
    iput p5, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    .line 133
    :cond_1
    iput-object p6, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    .line 134
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    const-string p3, "wifip2p"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 135
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object p3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Context;

    iget-object p4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/content/Context;

    invoke-virtual {p4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    const/4 p5, 0x0

    invoke-virtual {p1, p3, p4, p5}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 136
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iget-object p3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->p:Landroid/content/BroadcastReceiver;

    iget-object p4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->q:Landroid/content/IntentFilter;

    invoke-virtual {p1, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 137
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p1, p2, :cond_2

    .line 138
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->w:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->isAlive()Z

    move-result p1

    if-nez p1, :cond_2

    .line 140
    :try_start_0
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->w:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 142
    :catch_0
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string p2, "mDiscoveryThread start again!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;B)V

    invoke-direct {p1, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->w:Ljava/lang/Thread;

    .line 144
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->w:Ljava/lang/Thread;

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method public initialize(Landroid/content/Context;ILjava/lang/String;ILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V
    .locals 7

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v5, p4

    move-object v6, p5

    .line 159
    invoke-virtual/range {v0 .. v6}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->initialize(Landroid/content/Context;ILjava/lang/String;IILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V

    return-void
.end method

.method public initialize(Landroid/content/Context;Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V
    .locals 7

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v6, p2

    .line 151
    invoke-virtual/range {v0 .. v6}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->initialize(Landroid/content/Context;ILjava/lang/String;IILcom/neusoft/qdrive/wifidirect/WifiDirectListener;)V

    return-void
.end method

.method public isGroupOwner()Z
    .locals 1

    .line 830
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    return v0
.end method

.method public startDiscovery()V
    .locals 6

    .line 376
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-nez v0, :cond_0

    return-void

    .line 379
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "startDiscovery: called! mDiscoveryMode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    const/4 v1, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-eq v0, v1, :cond_1

    .line 381
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v2, "startDiscovery: call discoverPeers!"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v3, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$2;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$2;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v2, v3}, Landroid/net/wifi/p2p/WifiP2pManager;->discoverPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 394
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v0, v2, :cond_8

    .line 395
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v3, v0, :cond_3

    .line 396
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-nez v0, :cond_2

    .line 2569
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_5

    .line 2572
    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    .line 2592
    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$9;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$9;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    .line 2598
    iget-object v4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v5, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v4, v5, v0, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setDnsSdResponseListeners(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;)V

    .line 2600
    invoke-static {}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;->newInstance()Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceRequest;

    move-result-object v0

    .line 2601
    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$10;

    invoke-direct {v5, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$10;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v2, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 3549
    :cond_2
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_5

    const-string v0, "_ssplink._tcp"

    const-string v4, "QDLink_DnsSd_Instance"

    .line 3553
    invoke-static {v4, v0, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/net/wifi/p2p/nsd/WifiP2pDnsSdServiceInfo;

    move-result-object v0

    .line 3554
    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$7;

    invoke-direct {v5, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$7;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v2, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_5

    .line 402
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-nez v0, :cond_4

    .line 3635
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_5

    .line 3638
    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    .line 3661
    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v2, v4, v0}, Landroid/net/wifi/p2p/WifiP2pManager;->setUpnpServiceResponseListener(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;)V

    .line 3663
    invoke-static {}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;->newInstance()Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceRequest;

    move-result-object v0

    .line 3664
    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$13;

    invoke-direct {v5, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$13;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v2, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->addServiceRequest(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceRequest;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    goto :goto_0

    .line 4616
    :cond_4
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_5

    .line 4619
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "QDLink_UPnP_Device"

    invoke-static {v0, v4, v2}, Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;->newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Landroid/net/wifi/p2p/nsd/WifiP2pUpnpServiceInfo;

    move-result-object v0

    .line 4620
    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v4, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v5, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$11;

    invoke-direct {v5, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$11;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v2, v4, v0, v5}, Landroid/net/wifi/p2p/WifiP2pManager;->addLocalService(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/nsd/WifiP2pServiceInfo;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 408
    :cond_5
    :goto_0
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-nez v0, :cond_6

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-ne v0, v1, :cond_7

    :cond_6
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-nez v0, :cond_8

    .line 410
    :cond_7
    iput-boolean v3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->B:Z

    :cond_8
    return-void
.end method

.method public stopDiscovery()V
    .locals 3

    .line 416
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_6

    .line 417
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    const/4 v1, 0x2

    if-nez v0, :cond_0

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    .line 419
    iput-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->B:Z

    .line 421
    :cond_2
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_6

    .line 422
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-eq v0, v1, :cond_3

    .line 423
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    if-eqz v0, :cond_6

    .line 424
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v1, "stopPeersDiscovery: call stopPeerDiscovery!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$3;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$3;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->stopPeerDiscovery(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void

    .line 438
    :cond_3
    iget v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    if-nez v0, :cond_5

    .line 4697
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_4

    .line 4700
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$15;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$15;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->clearServiceRequests(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_4
    return-void

    .line 5679
    :cond_5
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    if-eqz v0, :cond_6

    .line 5682
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$14;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$14;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->clearLocalServices(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_6
    return-void
.end method

.method public uninitialize()V
    .locals 3

    .line 167
    iget-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->C:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 170
    iput-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->C:Z

    .line 171
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a:Ljava/lang/String;

    const-string v2, "uninitialize call"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->stopDiscovery()V

    .line 173
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->cancelDeviceConnect()V

    .line 174
    invoke-virtual {p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->disconnectDevice()V

    .line 175
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->p:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 176
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1b

    if-lt v1, v2, :cond_1

    .line 177
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->o:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    invoke-virtual {v1}, Landroid/net/wifi/p2p/WifiP2pManager$Channel;->close()V

    .line 179
    :cond_1
    iput-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->D:Z

    .line 180
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->F:I

    .line 181
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->E:I

    .line 182
    iput-boolean v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->G:Z

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->H:Ljava/lang/String;

    .line 184
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->I:Ljava/lang/String;

    .line 185
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->J:Ljava/lang/String;

    .line 186
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->K:Ljava/lang/String;

    const/4 v2, -0x1

    .line 187
    iput v2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->x:I

    .line 188
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->y:Ljava/lang/String;

    .line 189
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->z:I

    .line 190
    iput v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->A:I

    .line 191
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->r:Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iput-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->s:Ljava/util/Collection;

    .line 194
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->t:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 195
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
