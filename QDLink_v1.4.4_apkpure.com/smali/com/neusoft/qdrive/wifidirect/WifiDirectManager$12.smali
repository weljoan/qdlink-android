.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$UpnpServiceResponseListener;


# instance fields
.field private synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 638
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpnpServiceAvailable(Ljava/util/List;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ")V"
        }
    .end annotation

    .line 642
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "QDLink_UPnP_Device"

    .line 643
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    monitor-enter p0

    .line 645
    :try_start_0
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;

    .line 646
    iget-object v1, p2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 647
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;->b:J

    .line 648
    monitor-exit p0

    return-void

    .line 651
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/util/Collection;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;

    iget-object v1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v1, p2, v2, v3}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pDevice;J)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 652
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 654
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$12;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onDeviceListUpdate()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 652
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void
.end method
