.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;
.super Ljava/util/TimerTask;
.source "WifiDirectManager.java"


# instance fields
.field final synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 905
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 908
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CancelConnect: TIMEOUT!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->e(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 912
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->h(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I

    move-result v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 913
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0, v2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;I)I

    .line 915
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 916
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object v0

    invoke-interface {v0, v2, v2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onJoinGroupFail(II)V

    .line 918
    :cond_2
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->k(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->i(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21$1;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21$1;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$21;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->cancelConnect(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    return-void
.end method
