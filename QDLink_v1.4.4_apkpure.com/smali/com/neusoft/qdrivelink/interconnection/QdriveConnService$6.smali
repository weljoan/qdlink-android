.class Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;
.super Ljava/lang/Object;
.source "QdriveConnService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getConnectBt001(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

.field final synthetic val$carBtAddress:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/lang/String;)V
    .locals 0

    .line 1783
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;->val$carBtAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 5

    .line 1791
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    const-string p2, ""

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    .line 1792
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 1793
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 1794
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1796
    :try_start_0
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;->val$carBtAddress:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1797
    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$800(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    if-eq v2, v1, :cond_1

    goto :goto_1

    .line 1803
    :cond_1
    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {v2, v3, p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V

    goto :goto_1

    .line 1799
    :cond_2
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyToCarAutoBTConnectedState(I)V

    .line 1806
    :goto_1
    invoke-static {v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$902(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    goto :goto_0

    .line 1812
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectBt001 btConnected:"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$900()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1813
    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$900()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1814
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$800(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_2

    .line 1820
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {p1, v0, p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V

    goto :goto_2

    .line 1816
    :cond_5
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyToCarAutoBTConnectedState(I)V

    goto :goto_2

    .line 1825
    :cond_6
    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$900()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1826
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$800(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result p1

    if-eqz p1, :cond_8

    if-eq p1, v1, :cond_7

    goto :goto_2

    .line 1832
    :cond_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {p1, v0, p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V

    goto :goto_2

    .line 1828
    :cond_8
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyToCarAutoBTConnectedState(I)V

    :cond_9
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    const-string p1, "onServiceDisconnected"

    .line 1786
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method
