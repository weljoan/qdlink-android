.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread$1;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# instance fields
.field private synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread$1;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread$1;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;

    iget-object v0, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->e(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread$1;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;

    iget-object v0, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->f(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread$1;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;

    iget-object v0, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->g(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread$1;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;

    iget-object v0, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pDeviceList;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 458
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread$1;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;

    iget-object p1, p1, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->j(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    :cond_0
    return-void
.end method
