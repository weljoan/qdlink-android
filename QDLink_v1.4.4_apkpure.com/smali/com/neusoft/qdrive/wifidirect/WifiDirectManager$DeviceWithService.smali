.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"


# instance fields
.field a:Landroid/net/wifi/p2p/WifiP2pDevice;

.field b:J

.field private synthetic c:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pDevice;J)V
    .locals 0

    .line 975
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;->c:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 976
    iput-object p2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 977
    iput-wide p3, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;->b:J

    return-void
.end method
