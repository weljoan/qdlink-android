.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WifiDirectManager.java"


# instance fields
.field private synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# direct methods
.method private constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;B)V
    .locals 0

    .line 198
    invoke-direct {p0, p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;-><init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 200
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    .line 204
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "android.net.wifi.p2p.STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "android.net.wifi.p2p.DISCOVERY_STATE_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "android.net.wifi.p2p.PEERS_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "android.net.wifi.p2p.CONNECTION_STATE_CHANGE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x3

    :cond_1
    :goto_0
    if-eqz v0, :cond_a

    if-eq v0, v6, :cond_9

    if-eq v0, v5, :cond_8

    if-eq v0, v4, :cond_7

    if-eq v0, v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string p1, "wifi_state"

    .line 219
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 220
    iget-object p2, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u70ed\u70b9\u5f00\u5173\u72b6\u6001\uff1astate= "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0xd

    const/4 v0, 0x0

    if-ne p1, p2, :cond_3

    .line 222
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u70ed\u70b9\u5df2\u5f00\u542f"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1, v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Ljava/util/Collection;)Ljava/util/Collection;

    .line 225
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 227
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onDeviceListUpdate()V

    return-void

    :catchall_0
    move-exception p1

    .line 225
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    const/16 p2, 0xb

    if-ne p1, p2, :cond_4

    .line 230
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u70ed\u70b9\u5df2\u5173\u95ed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/16 p2, 0xa

    if-ne p1, p2, :cond_5

    .line 232
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u70ed\u70b9\u6b63\u5728\u5173\u95ed"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    const/16 p2, 0xc

    if-ne p1, p2, :cond_6

    .line 234
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u70ed\u70b9\u6b63\u5728\u5f00\u542f"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    monitor-enter p0

    .line 236
    :try_start_2
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1, v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Ljava/util/Collection;)Ljava/util/Collection;

    .line 237
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 238
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 239
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onDeviceListUpdate()V

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 237
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1

    :cond_6
    :goto_1
    return-void

    .line 215
    :cond_7
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1, p2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->d(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/content/Intent;)V

    return-void

    .line 212
    :cond_8
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1, p2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->c(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/content/Intent;)V

    return-void

    .line 209
    :cond_9
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1, p2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/content/Intent;)V

    return-void

    .line 206
    :cond_a
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$WifiDirectBroadcastReceiver;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1, p2}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;Landroid/content/Intent;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x69a8390a -> :sswitch_4
        -0x532207c3 -> :sswitch_3
        -0x4f589d4a -> :sswitch_2
        0x186f64d7 -> :sswitch_1
        0x6511c17d -> :sswitch_0
    .end sparse-switch
.end method
