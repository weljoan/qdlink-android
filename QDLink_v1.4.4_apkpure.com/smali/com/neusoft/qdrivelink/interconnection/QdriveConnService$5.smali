.class Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;
.super Landroid/content/BroadcastReceiver;
.source "QdriveConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->initBluetoothReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V
    .locals 0

    .line 1598
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 1602
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, -0x1

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_2
    const-string v0, "android.bluetooth.device.action.FOUND"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    const-string v0, ""

    const-string v7, "android.bluetooth.profile.extra.STATE"

    const-string v8, "android.bluetooth.device.extra.DEVICE"

    if-eqz p1, :cond_a

    const/16 v9, 0xa

    if-eq p1, v6, :cond_7

    if-eq p1, v5, :cond_11

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    .line 1708
    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const-string p1, "BluetoothAdapter is turning off."

    .line 1726
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    const-string p1, "BluetoothAdapter is on."

    .line 1714
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1716
    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$900()Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$700(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 1717
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$700(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtstate()I

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "getConnectBt    0001"

    .line 1718
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1719
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$700(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtmac()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1500(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1721
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1600(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V

    goto/16 :goto_3

    :pswitch_2
    const-string p1, "BluetoothAdapter is turning on."

    .line 1711
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_3
    const-string p1, "BluetoothAdapter is off."

    .line 1729
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    const-string p1, "android.bluetooth.device.extra.BOND_STATE"

    .line 1666
    invoke-virtual {p2, p1, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1667
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    const-string v2, "Device:"

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_3

    .line 1670
    :pswitch_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " bonded."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1671
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1672
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1100(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 1673
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1200(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Landroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_3

    .line 1677
    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " bonding."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1680
    :pswitch_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not bonded."

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1683
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$500(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    if-eqz p1, :cond_11

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 1684
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1300(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result p1

    if-le p1, v3, :cond_6

    .line 1685
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1, v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1302(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;I)I

    .line 1686
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$800(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result p1

    if-eqz p1, :cond_5

    if-eq p1, v6, :cond_4

    goto/16 :goto_3

    .line 1692
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {p1, v6, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V

    goto/16 :goto_3

    .line 1688
    :cond_5
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p1

    invoke-virtual {p1, v6}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyToCarAutoBTConnectedState(I)V

    goto/16 :goto_3

    .line 1697
    :cond_6
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1400(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V

    .line 1698
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$1308(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    goto/16 :goto_3

    .line 1649
    :cond_7
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v9, :cond_9

    const/16 p2, 0xb

    if-eq p1, p2, :cond_8

    const-string p1, "state: unkown"

    .line 1658
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_8
    const-string p1, "state: not playing"

    .line 1655
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_9
    const-string p1, "state: playing."

    .line 1652
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1605
    :cond_a
    invoke-virtual {p2, v7, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v1, "device: "

    if-eqz p1, :cond_10

    if-eq p1, v6, :cond_f

    if-eq p1, v5, :cond_c

    if-eq p1, v3, :cond_b

    goto/16 :goto_3

    .line 1635
    :cond_b
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_11

    .line 1637
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " disconnecting"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1613
    :cond_c
    :try_start_0
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_11

    .line 1615
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " connected"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1616
    iget-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$700(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$700(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtmac()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_11

    const-string p1, "btConnected = true;"

    .line 1617
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1618
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$800(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result p1

    if-eqz p1, :cond_e

    if-eq p1, v6, :cond_d

    goto :goto_2

    .line 1624
    :cond_d
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-virtual {p1, v5, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V

    goto :goto_2

    .line 1620
    :cond_e
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyToCarAutoBTConnectedState(I)V

    .line 1627
    :goto_2
    invoke-static {v6}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$902(Z)Z

    .line 1628
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$702(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1607
    :cond_f
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_11

    .line 1609
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " connecting"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    goto :goto_3

    .line 1640
    :cond_10
    invoke-virtual {p2, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_11

    .line 1642
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " disconnected"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    :catch_0
    :cond_11
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5b36f014 -> :sswitch_4
        -0x32fde36c -> :sswitch_3
        0x459717c3 -> :sswitch_2
        0x4a286686 -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
