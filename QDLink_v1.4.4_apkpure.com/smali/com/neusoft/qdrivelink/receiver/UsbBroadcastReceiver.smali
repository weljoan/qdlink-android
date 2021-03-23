.class public Lcom/neusoft/qdrivelink/receiver/UsbBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UsbBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 14
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "usbrec action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "yby"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.hardware.usb.action.USB_STATE"

    .line 16
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "connected"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "cn"

    const-string p2, "usb connected"

    .line 18
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p1, "usb disconnected"

    .line 20
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object p1, Lcom/neusoft/qdrivelink/MainActivity;->customLoadingDialog:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    if-eqz p1, :cond_1

    .line 30
    sget-object p1, Lcom/neusoft/qdrivelink/MainActivity;->customLoadingDialog:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->dismissCustomDialog()V

    :cond_1
    :goto_0
    return-void
.end method
