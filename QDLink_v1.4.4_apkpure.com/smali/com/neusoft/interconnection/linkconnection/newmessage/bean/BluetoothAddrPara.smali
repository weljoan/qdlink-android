.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;
.super Ljava/lang/Object;
.source "BluetoothAddrPara.java"


# instance fields
.field private BluetoothAddr:Ljava/lang/String;

.field private BluetoothStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBluetoothAddr()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;->BluetoothAddr:Ljava/lang/String;

    return-object v0
.end method

.method public getBluetoothStatus()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;->BluetoothStatus:I

    return v0
.end method

.method public setBluetoothAddr(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;->BluetoothAddr:Ljava/lang/String;

    return-void
.end method

.method public setBluetoothStatus(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;->BluetoothStatus:I

    return-void
.end method
