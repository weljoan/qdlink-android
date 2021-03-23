.class Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;
.super Ljava/lang/Object;
.source "QdriveConnService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getConnectBt(Ljava/lang/String;)V
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

    .line 1872
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;->val$carBtAddress:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4

    .line 1881
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1882
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 1883
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const-string v0, ""

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 1884
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1886
    :try_start_0
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;->val$carBtAddress:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1887
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getConnectBt onServiceConnected btConnected:"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$900()Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1888
    iget-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$800(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result p2

    const/4 v2, 0x2

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 1894
    :cond_1
    iget-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {p2, v2, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V

    goto :goto_1

    .line 1890
    :cond_2
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyToCarAutoBTConnectedState(I)V

    .line 1897
    :goto_1
    invoke-static {v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$902(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    nop

    goto :goto_0

    .line 1903
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getConnectBt btConnected:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$900()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1904
    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$900()Z

    move-result p1

    if-nez p1, :cond_7

    .line 1905
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$800(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_2

    .line 1911
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {p1, p2, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V

    goto :goto_2

    .line 1907
    :cond_5
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyToCarAutoBTConnectedState(I)V

    goto :goto_2

    .line 1916
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getConnectBt mDevices == null || mDevices.size() == 0:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$900()Z

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    const-string p1, "onServiceDisconnected"

    .line 1875
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    return-void
.end method
