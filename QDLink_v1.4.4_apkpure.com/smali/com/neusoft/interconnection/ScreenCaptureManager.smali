.class public Lcom/neusoft/interconnection/ScreenCaptureManager;
.super Ljava/lang/Object;
.source "ScreenCaptureManager.java"

# interfaces
.implements Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;


# static fields
.field public static final WIFI_CONNECTED_MODE_DIRECT:I = 0x1

.field public static final WIFI_CONNECTED_MODE_HOTSPOT:I

.field private static i:Lcom/neusoft/interconnection/ScreenCaptureManager;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

.field private c:Ljava/lang/Class;

.field private d:Landroid/view/ViewGroup;

.field private e:I

.field private f:I

.field private g:Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;

.field private h:Ljava/util/concurrent/locks/Lock;

.field private j:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    .line 354
    new-instance v0, Lcom/neusoft/interconnection/ScreenCaptureManager$1;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/ScreenCaptureManager$1;-><init>(Lcom/neusoft/interconnection/ScreenCaptureManager;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->j:Landroid/content/ServiceConnection;

    .line 61
    iput-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/neusoft/interconnection/ScreenCaptureManager;Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/neusoft/interconnection/ScreenCaptureManager;)Ljava/lang/Class;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->c:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic b(Lcom/neusoft/interconnection/ScreenCaptureManager;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    return-object p0
.end method

.method static synthetic c(Lcom/neusoft/interconnection/ScreenCaptureManager;)Landroid/view/ViewGroup;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->d:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;
    .locals 1

    .line 71
    sget-object v0, Lcom/neusoft/interconnection/ScreenCaptureManager;->i:Lcom/neusoft/interconnection/ScreenCaptureManager;

    if-nez v0, :cond_0

    .line 72
    new-instance v0, Lcom/neusoft/interconnection/ScreenCaptureManager;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/ScreenCaptureManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/neusoft/interconnection/ScreenCaptureManager;->i:Lcom/neusoft/interconnection/ScreenCaptureManager;

    .line 74
    :cond_0
    sget-object p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->i:Lcom/neusoft/interconnection/ScreenCaptureManager;

    return-object p0
.end method


# virtual methods
.method public cancelNetworkConnection()V
    .locals 2

    .line 187
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setLinkMode(I)V

    .line 188
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 189
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    :try_start_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 196
    :cond_0
    :goto_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 198
    :try_start_1
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 200
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_2

    .line 208
    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->setCancelNetworkConnection()V

    :cond_2
    return-void
.end method

.method public changeDisplayToArOrFa(Z)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->changeDisplayToArOrFa(Z)V

    :cond_0
    return-void
.end method

.method public changeInApp()V
    .locals 2

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 239
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 240
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const v1, 0xf0011

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->resetPresentationTypeMirror(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public changeOutApp()V
    .locals 2

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 255
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const v1, 0xf0012

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->resetPresentationTypeMirror(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public changeWifiConnectedMode(I)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 282
    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->setWifiConnectedMode(I)V

    :cond_0
    return-void
.end method

.method public connectDevice(Lcom/neusoft/interconnection/bean/SearchDevice;)V
    .locals 1

    .line 271
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->isUsbLink()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 272
    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->addDevice(Lcom/neusoft/interconnection/bean/SearchDevice;)V

    :cond_0
    return-void
.end method

.method public disconnectDevice()V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 335
    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->disconnectDevice()V

    :cond_0
    return-void
.end method

.method public exitScreenCapture(Landroid/view/ViewGroup;)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->getPresentationView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public refreshWifiDevice()Z
    .locals 2

    .line 305
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 306
    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->setWifiDeviceListData(I)V

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public replayDeviceList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/bean/SearchDevice;",
            ">;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->g:Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;

    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0, p1}, Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;->replayDeviceList(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public replyConnectSuccess()V
    .locals 2

    .line 381
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->g:Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;

    if-eqz v0, :cond_0

    .line 382
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setLinkMode(I)V

    .line 383
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->g:Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;

    invoke-interface {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;->replyConnectSuccess()V

    :cond_0
    return-void
.end method

.method public setPresentationView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setPresentationView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public setWifiConnectCallback(Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->g:Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;

    return-void
.end method

.method public startDiscovery()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 317
    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->startDiscovery()V

    :cond_0
    return-void
.end method

.method public startScreenCapture(Ljava/lang/Class;Landroid/view/ViewGroup;)V
    .locals 2

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 91
    iput-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->c:Ljava/lang/Class;

    const/4 p1, 0x1

    .line 95
    sput-boolean p1, Lcom/neusoft/interconnection/utils/ConnConstant;->mainIsCreate:Z

    .line 96
    iput-object p2, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->d:Landroid/view/ViewGroup;

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "startScreenCapture myContext.getResources().getConfiguration().orientation:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",MiConstUtil.VALUE_APP_PORTAIT_OR_LANDSCAPE:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;->VALUE_APP_PORTAIT_OR_LANDSCAPE:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 99
    iget-object p2, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, p1, :cond_0

    const/4 p2, 0x0

    .line 101
    sput p2, Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;->VALUE_APP_PORTAIT_OR_LANDSCAPE:I

    goto :goto_0

    .line 104
    :cond_0
    sput p1, Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;->VALUE_APP_PORTAIT_OR_LANDSCAPE:I

    .line 106
    :goto_0
    iget-object p2, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    if-eqz p2, :cond_1

    .line 107
    new-instance p2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    const-class v1, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-direct {p2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, p2, v1, p1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public startWifiConnect(Landroid/content/Context;)V
    .locals 2

    .line 123
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getCurrentLinkMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 125
    invoke-static {p1}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->startSocketConnect()V

    .line 126
    invoke-static {p1}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->setWifiConnectCallback(Lcom/neusoft/interconnection/wificonnection/WifiConnectCallback;)V

    :cond_0
    return-void
.end method

.method public stopDiscovery()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 326
    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->stopDiscovery()V

    :cond_0
    return-void
.end method

.method public stopNetworkCommunication()V
    .locals 2

    .line 160
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setLinkMode(I)V

    .line 161
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    .line 162
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    :try_start_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    :cond_0
    :goto_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 171
    :try_start_1
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 173
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 176
    :cond_1
    :goto_1
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkConnectionInterface()Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 177
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkConnectionInterface()Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;->onUSBDisconnected()V

    .line 180
    :cond_2
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 181
    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->setDisConnectedWifi()V

    :cond_3
    return-void
.end method

.method public stopScreenCapture()V
    .locals 3

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 136
    sput-boolean v0, Lcom/neusoft/interconnection/utils/ConnConstant;->mainIsCreate:Z

    .line 137
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    const-string v0, "stopScreenCapture() null != myBinder"

    .line 138
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const v1, 0xf0012

    invoke-virtual {v0, v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->resetPresentationTypeMirror(I)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->stopSocketConnect()V

    .line 143
    invoke-virtual {p0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->stopNetworkCommunication()V

    .line 144
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->j:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_1

    const-string v0, "stopScreenCapture() screenCapServiceConnection != null"

    .line 145
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->j:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 149
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopScreenCapture() Exception e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    :goto_1
    iget-object v1, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public stopSearchWifiDevice()Z
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->a:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 293
    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->setWifiDeviceListData(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public updatePresentationView(Landroid/view/ViewGroup;)V
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/neusoft/interconnection/ScreenCaptureManager;->b:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 347
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->updatePresentationView(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method
