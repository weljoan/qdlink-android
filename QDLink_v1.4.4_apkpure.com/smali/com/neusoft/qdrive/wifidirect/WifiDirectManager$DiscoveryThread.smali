.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# direct methods
.method private constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;B)V
    .locals 0

    .line 448
    invoke-direct {p0, p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "run: DiscoveryThread START!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->c(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->d(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I

    move-result v0

    if-nez v0, :cond_0

    .line 453
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->e(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->f(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->g(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->h(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->k(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->i(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v1

    new-instance v2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread$1;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread$1;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->requestPeers(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;)V

    goto :goto_1

    .line 464
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->e(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->f(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->h(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 465
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->l(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    :cond_1
    :goto_1
    const-wide/16 v0, 0xbb8

    .line 469
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 471
    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run: sleep error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 474
    :cond_2
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DiscoveryThread;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "run: DiscoveryThread END!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
