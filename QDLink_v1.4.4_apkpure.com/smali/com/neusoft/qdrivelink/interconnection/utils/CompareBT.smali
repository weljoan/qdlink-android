.class public Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;
.super Ljava/lang/Object;
.source "CompareBT.java"


# static fields
.field static a2dp:Landroid/bluetooth/BluetoothA2dp;

.field static cBtAdd:Ljava/lang/String;

.field static flag:Z

.field public static mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field static profile:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field static sbtAddress:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    .line 19
    sput-boolean v0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    const-string v0, ""

    .line 20
    sput-object v0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->cBtAdd:Ljava/lang/String;

    .line 21
    sput-object v0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->sbtAddress:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareBTAddress(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 23
    sput-object p0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->sbtAddress:Ljava/lang/String;

    .line 24
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sbtAddress:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->sbtAddress:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "textwang"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    new-instance p0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT$1;

    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT$1;-><init>()V

    sput-object p0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->profile:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 77
    sget-object p0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    sget-object v1, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->profile:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 78
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "onServiceConnected:a2dp 44444 == null flag:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    sget-boolean p0, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->flag:Z

    return p0
.end method

.method public static replyCompareError()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "QDRIVE_ASSISTANT"

    const-string v3, "COMPARE_ERROR"

    .line 89
    invoke-static {v0, v2, v3, v1}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData== replyCompareError msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompareBT"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V

    return-void
.end method

.method public static replyCompareOK()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "QDRIVE_ASSISTANT"

    const-string v3, "COMPARE_OK"

    .line 83
    invoke-static {v0, v2, v3, v1}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData== replyCompareOK msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompareBT"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V

    return-void
.end method
