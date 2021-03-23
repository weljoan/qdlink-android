.class final Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT$1;
.super Ljava/lang/Object;
.source "CompareBT.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->compareBTAddress(Ljava/lang/String;Landroid/content/Context;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 37
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    sput-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 38
    sget-object p1, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    const/4 p2, 0x0

    const-string v0, "textwang"

    if-eqz p1, :cond_5

    const-string p1, "onServiceConnected:a2dp != null"

    .line 39
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    sget-object p1, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 42
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceConnected:a2dp 11111 == null flag:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->replyCompareError()V

    .line 46
    sput-boolean p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    .line 49
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_1

    .line 51
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->cBtAdd:Ljava/lang/String;

    .line 52
    sget-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->cBtAdd:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 53
    sget-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->cBtAdd:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->cBtAdd:Ljava/lang/String;

    .line 55
    :cond_2
    sget-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->sbtAddress:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 56
    sget-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->sbtAddress:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->sbtAddress:Ljava/lang/String;

    .line 59
    :cond_3
    sget-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->cBtAdd:Ljava/lang/String;

    if-eqz p2, :cond_1

    sget-object p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->cBtAdd:Ljava/lang/String;

    sget-object v1, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->sbtAddress:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 60
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected:a2dp 22222 == null flag:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->replyCompareOK()V

    const/4 p2, 0x1

    .line 62
    sput-boolean p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    goto :goto_0

    .line 67
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected:a2dp 33333 == null flag:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    :cond_5
    sput-boolean p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    .line 70
    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->replyCompareError()V

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onServiceConnected:a2dp == null flag:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    const-string p1, "textwang"

    const-string v0, "onServiceDisconnected:"

    .line 32
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 33
    sput-object p1, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->a2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method
