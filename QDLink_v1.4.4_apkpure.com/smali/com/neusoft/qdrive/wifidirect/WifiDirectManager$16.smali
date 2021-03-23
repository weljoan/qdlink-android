.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# instance fields
.field private synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 734
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 742
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onFailure: connect, errorCode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->n(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V

    .line 744
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->h(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 745
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;I)I

    .line 746
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 747
    iget-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {p1}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->b(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;

    move-result-object p1

    invoke-interface {p1, v0, v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectListener;->onJoinGroupFail(II)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$16;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-static {v0}, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;->a(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onSuccess: connect"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
