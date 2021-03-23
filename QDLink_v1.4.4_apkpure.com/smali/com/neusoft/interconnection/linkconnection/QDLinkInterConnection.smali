.class public Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;
.super Ljava/lang/Object;
.source "QDLinkInterConnection.java"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/hardware/usb/UsbManager;

.field private c:I

.field private d:Landroid/hardware/usb/UsbAccessory;

.field private e:Landroid/os/ParcelFileDescriptor;

.field private f:Ljava/io/FileInputStream;

.field private g:Ljava/io/FileOutputStream;

.field private h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

.field private i:Landroid/content/BroadcastReceiver;

.field private j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->c:I

    .line 188
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection$1;

    invoke-direct {v1, p0}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection$1;-><init>(Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;)V

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->i:Landroid/content/BroadcastReceiver;

    .line 212
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->j:Z

    const-string v0, "QDLinkInterConnection (Context context)"

    .line 76
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->a:Landroid/content/Context;

    const-string v0, "usb"

    .line 78
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->b:Landroid/hardware/usb/UsbManager;

    return-void
.end method

.method static synthetic a(Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;)Landroid/hardware/usb/UsbAccessory;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->d:Landroid/hardware/usb/UsbAccessory;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 94
    :goto_0
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    .line 95
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 96
    aget-object v0, v0, v2

    :goto_1
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->d:Landroid/hardware/usb/UsbAccessory;

    .line 97
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->d:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_2

    .line 98
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v2, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "mUsbManger.hasPermission: true"

    .line 99
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "ACTION_USB_PERMISSION"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 102
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 103
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v2, 0x3e8

    .line 104
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 105
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->b()V

    goto :goto_2

    :cond_1
    const-string v0, "mUsbManger.hasPermission: false fail"

    .line 109
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 110
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v0, :cond_3

    .line 111
    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBFail()V

    goto :goto_2

    .line 116
    :cond_2
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->c:I

    const-wide/16 v0, 0x32

    .line 118
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    .line 125
    :cond_3
    :goto_2
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->c:I

    if-le v0, v1, :cond_4

    .line 127
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v0, :cond_4

    .line 128
    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBFail()V

    :cond_4
    return-void
.end method

.method private b()V
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->b:Landroid/hardware/usb/UsbManager;

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->d:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Landroid/hardware/usb/UsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;

    .line 135
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->f:Ljava/io/FileInputStream;

    .line 138
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->g:Ljava/io/FileOutputStream;

    .line 139
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->f:Ljava/io/FileInputStream;

    sput-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileInputStream:Ljava/io/FileInputStream;

    .line 140
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->g:Ljava/io/FileOutputStream;

    sput-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    const-string v0, "\u9644\u4ef6\u8fde\u63a5\u6210\u529f usb accessory success"

    .line 143
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 145
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->j:Z

    .line 146
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "linkConnectionInterface != null flagConnect:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 147
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 148
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    invoke-interface {v1}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBConnected()V

    .line 149
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUsbLink(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "\u9644\u4ef6\u8fde\u63a5\u5931\u8d25 usb accessory fail"

    .line 154
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v0, :cond_2

    .line 156
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 157
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBFail()V

    :cond_2
    return-void
.end method


# virtual methods
.method public closeAccessory()V
    .locals 4

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeAccessory start flagConnect:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 263
    iget-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->j:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->j:Z

    .line 265
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->f:Ljava/io/FileInputStream;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 267
    :try_start_0
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 268
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->f:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 270
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 274
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->g:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_1

    .line 276
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 277
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->g:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 279
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 283
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;

    if-eqz v1, :cond_2

    :try_start_2
    const-string v1, "mParcelFileDescriptor != null close()"

    .line 285
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 286
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 287
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 289
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 298
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->i:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_3

    const-string v1, "mUsbReceiver != null unregisterReceiver"

    .line 299
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 301
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->i:Landroid/content/BroadcastReceiver;

    .line 304
    :cond_3
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v1, :cond_4

    .line 305
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUsbLink(Z)V

    .line 306
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 307
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBDisconnected()V

    :cond_4
    return-void
.end method

.method public closeAccessoryCancel()V
    .locals 3

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeAccessoryCancel start flagConnect:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->j:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 216
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->f:Ljava/io/FileInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 219
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->f:Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 221
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 225
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->g:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_1

    .line 227
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 228
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->g:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 230
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 234
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    :try_start_2
    const-string v0, "mParcelFileDescriptor != null close()"

    .line 236
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 238
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->i:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    const-string v0, "mUsbReceiver != null unregisterReceiver"

    .line 250
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 252
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->i:Landroid/content/BroadcastReceiver;

    :cond_3
    return-void
.end method

.method public initAccessory()V
    .locals 6

    .line 1094
    :goto_0
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->c:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_4

    .line 1095
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getAccessoryList()[Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    .line 1096
    :cond_0
    aget-object v0, v0, v2

    :goto_1
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->d:Landroid/hardware/usb/UsbAccessory;

    .line 1097
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->d:Landroid/hardware/usb/UsbAccessory;

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 1098
    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->b:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v4, v0}, Landroid/hardware/usb/UsbManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "mUsbManger.hasPermission: true"

    .line 1099
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1101
    new-instance v0, Landroid/content/IntentFilter;

    const-string v4, "ACTION_USB_PERMISSION"

    invoke-direct {v0, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v4, "android.hardware.usb.action.USB_ACCESSORY_DETACHED"

    .line 1102
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.ACTION_POWER_DISCONNECTED"

    .line 1103
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v4, 0x3e8

    .line 1104
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 1105
    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->a:Landroid/content/Context;

    iget-object v5, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->i:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1134
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->b:Landroid/hardware/usb/UsbManager;

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->d:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;

    .line 1135
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->e:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    .line 1136
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 1137
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->f:Ljava/io/FileInputStream;

    .line 1138
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v4, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->g:Ljava/io/FileOutputStream;

    .line 1139
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->f:Ljava/io/FileInputStream;

    sput-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileInputStream:Ljava/io/FileInputStream;

    .line 1140
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->g:Ljava/io/FileOutputStream;

    sput-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    const-string v0, "\u9644\u4ef6\u8fde\u63a5\u6210\u529f usb accessory success"

    .line 1143
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1144
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v0, :cond_4

    .line 1145
    iput-boolean v3, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->j:Z

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "linkConnectionInterface != null flagConnect:"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->j:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1147
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 1148
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBConnected()V

    .line 1149
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUsbLink(Z)V

    goto :goto_2

    :cond_1
    const-string v0, "\u9644\u4ef6\u8fde\u63a5\u5931\u8d25 usb accessory fail"

    .line 1154
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1155
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v0, :cond_4

    .line 1156
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 1157
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBFail()V

    goto :goto_2

    :cond_2
    const-string v0, "mUsbManger.hasPermission: false fail"

    .line 1109
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1110
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v0, :cond_4

    .line 1111
    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBFail()V

    goto :goto_2

    .line 1116
    :cond_3
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->c:I

    const-wide/16 v0, 0x32

    .line 1118
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    nop

    goto/16 :goto_0

    .line 1125
    :cond_4
    :goto_2
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->c:I

    if-le v0, v1, :cond_5

    .line 1127
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    if-eqz v0, :cond_5

    .line 1128
    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBFail()V

    :cond_5
    return-void
.end method

.method public setLinkConnectionInterface(Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->h:Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    return-void
.end method
