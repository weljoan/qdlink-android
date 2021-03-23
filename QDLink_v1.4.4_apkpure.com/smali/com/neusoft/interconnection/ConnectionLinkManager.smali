.class public Lcom/neusoft/interconnection/ConnectionLinkManager;
.super Ljava/lang/Object;
.source "ConnectionLinkManager.java"


# static fields
.field private static a:Lcom/neusoft/interconnection/ConnectionLinkManager;

.field private static b:Ljava/util/concurrent/locks/Lock;

.field private static c:Ljava/util/concurrent/locks/Lock;


# instance fields
.field private d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

.field private e:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/neusoft/interconnection/ConnectionLinkManager;->b:Ljava/util/concurrent/locks/Lock;

    .line 23
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/neusoft/interconnection/ConnectionLinkManager;->c:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCurrentLinkMode()I
    .locals 1

    .line 156
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getCurrentLinkMode()I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;
    .locals 1

    .line 45
    sget-object v0, Lcom/neusoft/interconnection/ConnectionLinkManager;->a:Lcom/neusoft/interconnection/ConnectionLinkManager;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lcom/neusoft/interconnection/ConnectionLinkManager;

    invoke-direct {v0}, Lcom/neusoft/interconnection/ConnectionLinkManager;-><init>()V

    sput-object v0, Lcom/neusoft/interconnection/ConnectionLinkManager;->a:Lcom/neusoft/interconnection/ConnectionLinkManager;

    .line 49
    :cond_0
    sget-object v0, Lcom/neusoft/interconnection/ConnectionLinkManager;->a:Lcom/neusoft/interconnection/ConnectionLinkManager;

    return-object v0
.end method

.method public static setDeviceInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 166
    sget-object v0, Lcom/neusoft/interconnection/ConnectionLinkManager;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 168
    :try_start_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neusoft/interconnection/utils/LinkConfig;->setDeviceUUID(Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setDeviceName(Ljava/lang/String;)V

    .line 170
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/neusoft/interconnection/utils/LinkConfig;->setPassistMobileNum(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 172
    sget-object p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p0

    sget-object p1, Lcom/neusoft/interconnection/ConnectionLinkManager;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p0
.end method

.method public static setNotificationId(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 183
    sput p0, Lcom/neusoft/interconnection/utils/LinkConfig;->notificationId:I

    .line 184
    sput-object p1, Lcom/neusoft/interconnection/utils/LinkConfig;->CHANNEL_ONE_ID:Ljava/lang/String;

    .line 185
    sput-object p2, Lcom/neusoft/interconnection/utils/LinkConfig;->CHANNEL_ONE_NAME:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public disConnectedLink()V
    .locals 1

    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/neusoft/interconnection/ConnectionLinkManager;->a:Lcom/neusoft/interconnection/ConnectionLinkManager;

    return-void
.end method

.method public replyAppMessage([B)V
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 131
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendAppMessage([B)V

    :cond_0
    return-void
.end method

.method public replyCarBackground()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {v0}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendToCarAppBackground()V

    :cond_0
    return-void
.end method

.method public replyCarForeground()V
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 101
    invoke-virtual {v0}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendToCarAppForeground()V

    :cond_0
    return-void
.end method

.method public replyCustomData(B[B)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 83
    array-length v1, p2

    invoke-virtual {v0, p1, p2, v1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendToCarCustomData(B[BI)V

    :cond_0
    return-void
.end method

.method public replyLegalAppOn(I)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendLegalAppOn(I)V

    :cond_0
    return-void
.end method

.method public replySpeechStatusControlStart()V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {v0}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendSpeechStatusControlStart()V

    :cond_0
    return-void
.end method

.method public replySpeechStatusControlStop()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendSpeechStatusControlStop()V

    :cond_0
    return-void
.end method

.method public replyToCarAutoBTConnectedState(I)V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendToCarAutoBTConnectedState(I)V

    :cond_0
    return-void
.end method

.method public replyToCarDisconnectRSP(I)V
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendToCarDisconnectRSP(I)V

    :cond_0
    return-void
.end method

.method public setRotateScreenServiceAction(Ljava/lang/String;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->sendSetAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startConnectionLink(Landroid/content/Context;Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;)V
    .locals 1

    .line 30
    sget-object v0, Lcom/neusoft/interconnection/ConnectionLinkManager;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 32
    :try_start_0
    iput-object p2, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->e:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    .line 33
    invoke-static {p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/connectmanager/LinkManager;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    .line 34
    iget-object p1, p0, Lcom/neusoft/interconnection/ConnectionLinkManager;->d:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    invoke-virtual {p1, p2}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->setInterConnectionCallback(Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    sget-object p1, Lcom/neusoft/interconnection/ConnectionLinkManager;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    sget-object p2, Lcom/neusoft/interconnection/ConnectionLinkManager;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method
