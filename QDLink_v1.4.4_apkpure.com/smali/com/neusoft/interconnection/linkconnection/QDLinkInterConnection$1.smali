.class Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection$1;
.super Landroid/content/BroadcastReceiver;
.source "QDLinkInterConnection.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection$1;->a:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 191
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "usb accessory BroadcastReceiver action:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :try_start_0
    const-string v0, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 195
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "accessory"

    .line 196
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbAccessory;

    if-eqz p1, :cond_2

    .line 197
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection$1;->a:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    invoke-static {p2}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->a(Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;)Landroid/hardware/usb/UsbAccessory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 198
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection$1;->a:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->closeAccessory()V

    const-string p1, "UsbManager.ACTION_USB_ACCESSORY_DETACHED usb accessory detached \u65ad\u5f00usb \u9644\u4ef6\u8fde\u63a5"

    .line 199
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 201
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Intent.ACTION_POWER_DISCONNECTED"

    .line 202
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection$1;->a:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->closeAccessory()V

    const-string p1, "Intent.ACTION_POWER_DISCONNECTED usb accessory detached \u65ad\u5f00usb \u9644\u4ef6\u8fde\u63a5"

    .line 204
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "usb accessory BroadcastReceiver Exception:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
