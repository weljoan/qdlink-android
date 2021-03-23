.class Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$4;
.super Ljava/lang/Object;
.source "QdriveConnService.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getBluetoothA2DP()V
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

    .line 1559
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$4;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1564
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$4;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$502(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 1566
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$4;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$600(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
