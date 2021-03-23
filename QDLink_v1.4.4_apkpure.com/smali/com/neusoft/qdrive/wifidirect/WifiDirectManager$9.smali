.class Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$9;
.super Ljava/lang/Object;
.source "WifiDirectManager.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$DnsSdTxtRecordListener;


# instance fields
.field private synthetic a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;)V
    .locals 0

    .line 592
    iput-object p1, p0, Lcom/neusoft/qdrive/wifidirect/WifiDirectManager$9;->a:Lcom/neusoft/qdrive/wifidirect/WifiDirectManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDnsSdTxtRecordAvailable(Ljava/lang/String;Ljava/util/Map;Landroid/net/wifi/p2p/WifiP2pDevice;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/wifi/p2p/WifiP2pDevice;",
            ")V"
        }
    .end annotation

    return-void
.end method
