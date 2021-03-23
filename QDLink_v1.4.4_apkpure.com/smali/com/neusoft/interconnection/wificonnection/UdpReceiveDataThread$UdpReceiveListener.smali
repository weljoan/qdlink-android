.class interface abstract Lcom/neusoft/interconnection/wificonnection/UdpReceiveDataThread$UdpReceiveListener;
.super Ljava/lang/Object;
.source "UdpReceiveDataThread.java"


# virtual methods
.method public abstract replayDeviceList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/bean/SearchDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract replayUdpMessageFail()V
.end method

.method public abstract replayUdpMessageSuccess()V
.end method
