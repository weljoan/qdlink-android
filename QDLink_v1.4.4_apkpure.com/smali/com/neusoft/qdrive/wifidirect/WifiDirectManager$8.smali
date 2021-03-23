.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DnsSdServiceResponseListener;


# instance fields
.field private synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDnsSdServiceAvailable(Ljava/lang/String;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 3

    const-string p2, "QDLink_DnsSd_Instance"

    .line 576
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 577
    monitor-enter p0

    .line 578
    :try_start_0
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;

    .line 579
    iget-object v0, p3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v1, p2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;->a:Landroid/net/wifi/p2p/WifiP2pDevice;

    iget-object v1, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;->b:J

    .line 581
    monitor-exit p0

    return-void

    .line 584
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->m(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/util/Collection;

    move-result-object p1

    new-instance p2, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;

    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {p2, v0, p3, v1, v2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$DeviceWithService;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/net/wifi/p2p/WifiP2pDevice;J)V

    invoke-interface {p1, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 585
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 586
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 587
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$8;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onDeviceListUpdate()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 585
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method
