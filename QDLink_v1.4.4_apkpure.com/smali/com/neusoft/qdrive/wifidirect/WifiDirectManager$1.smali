.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$1;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# instance fields
.field private synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 312
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$1;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$1;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pDeviceList;)V

    return-void
.end method
