.class public Lcom/neusoft/interconnection/connectmanager/LinkManager;
.super Ljava/lang/Object;
.source "LinkManager.java"

# interfaces
.implements Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;


# static fields
.field private static d:Ljava/util/concurrent/locks/Lock;

.field private static j:Lcom/neusoft/interconnection/connectmanager/LinkManager;


# instance fields
.field private a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

.field private b:Lcom/neusoft/interconnection/MirrorActivity;

.field private c:Lcom/neusoft/interconnection/connectmanager/LinkManagerCallback;

.field private e:Z

.field private f:Z

.field private g:Ljava/util/concurrent/locks/Lock;

.field private h:Ljava/util/concurrent/locks/Lock;

.field private i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

.field private k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->d:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->e:Z

    .line 42
    iput-boolean v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->f:Z

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->g:Ljava/util/concurrent/locks/Lock;

    .line 52
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->h:Ljava/util/concurrent/locks/Lock;

    const-string v0, "initLinkManager start"

    .line 1140
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1141
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-nez v0, :cond_0

    const-string v0, "initLinkManager middle myConnectionManager == null"

    .line 1142
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1143
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-direct {v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    .line 1144
    iget-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {p1, p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->setConnectManagerCallback(Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;)V

    :cond_0
    const-string p1, "initLinkManager end"

    .line 1146
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a()V
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 479
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyUsbDisconnected()V

    :cond_0
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "initLinkManager start"

    .line 140
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 141
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-nez v0, :cond_0

    const-string v0, "initLinkManager middle myConnectionManager == null"

    .line 142
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 143
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-direct {v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    .line 144
    iget-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {p1, p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->setConnectManagerCallback(Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;)V

    :cond_0
    const-string p1, "initLinkManager end"

    .line 146
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkStartConnect receiveSetInterface:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",receiveStartConnect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 354
    iget-boolean p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->e:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->f:Z

    if-eqz p1, :cond_0

    .line 355
    iget-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz p1, :cond_0

    const-string p1, "sendStartConnect() interConnectionCallback != null"

    .line 356
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 357
    iget-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyStartConnect()V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 488
    iput-object v1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    .line 491
    :cond_0
    sget-object v0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->j:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_1

    .line 492
    sput-object v1, Lcom/neusoft/interconnection/connectmanager/LinkManager;->j:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    :cond_1
    const/4 v0, 0x0

    .line 494
    iput-boolean v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->e:Z

    .line 495
    iput-boolean v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->f:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/connectmanager/LinkManager;
    .locals 2

    const-string v0, "LinkManager getInstance end"

    .line 106
    sget-object v1, Lcom/neusoft/interconnection/connectmanager/LinkManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 108
    :try_start_0
    sget-object v1, Lcom/neusoft/interconnection/connectmanager/LinkManager;->j:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-nez v1, :cond_0

    const-string v1, "LinkManger getInstance"

    .line 109
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 110
    new-instance v1, Lcom/neusoft/interconnection/connectmanager/LinkManager;

    invoke-direct {v1, p0}, Lcom/neusoft/interconnection/connectmanager/LinkManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/neusoft/interconnection/connectmanager/LinkManager;->j:Lcom/neusoft/interconnection/connectmanager/LinkManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :cond_0
    sget-object p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 114
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 116
    sget-object p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->j:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    return-object p0

    :catchall_0
    move-exception p0

    .line 113
    sget-object v1, Lcom/neusoft/interconnection/connectmanager/LinkManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 114
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getMyConnectionManager()Lcom/neusoft/interconnection/linkconnection/ConnectionManager;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    return-object v0
.end method

.method public getWifiSendThread()V
    .locals 0

    return-void
.end method

.method public receiveMirrorPlayOrPause(Ljava/lang/String;IIIIIILjava/lang/String;I)V
    .locals 11

    move-object v0, p0

    .line 315
    iget-object v1, v0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->c:Lcom/neusoft/interconnection/connectmanager/LinkManagerCallback;

    if-eqz v1, :cond_0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    .line 316
    invoke-interface/range {v1 .. v10}, Lcom/neusoft/interconnection/connectmanager/LinkManagerCallback;->receiveMirrorPlayOrPause(Ljava/lang/String;IIIIIILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public receiveScreenCaptureSupport()V
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->c:Lcom/neusoft/interconnection/connectmanager/LinkManagerCallback;

    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/LinkManagerCallback;->requestScreenCaptureSupport()V

    :cond_0
    return-void
.end method

.method public requestScreenCaptureSupport(Z)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 272
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->replyScreenCaptureSupport(Z)V

    :cond_0
    return-void
.end method

.method public requestSettingCanDrawOverlays()V
    .locals 1

    .line 462
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 463
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifySettingCanDrawOverlays()V

    :cond_0
    return-void
.end method

.method public requestUserScreenCancelPermission()V
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 281
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyUserCancelScreenPermission()V

    :cond_0
    return-void
.end method

.method public sendAppMessage([B)V
    .locals 1

    .line 237
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendToCarAppMessageData([B)V

    :cond_0
    return-void
.end method

.method public sendAppSendPhoneReady()V
    .locals 1

    const-string v0, "LinkManager sendAppSendPhoneReady() 1111111111111"

    .line 411
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    const-string v0, "LinkManager sendAppSendPhoneReady() 22222222222"

    .line 413
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyAppSendPhoneReady()V

    :cond_0
    return-void
.end method

.method public sendBTinfoAutoConnected(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;)V
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 391
    invoke-interface {v0, p1}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyBTinfoAutoConnected(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;)V

    :cond_0
    return-void
.end method

.method public sendConnectFail()V
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 368
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyConnectFail()V

    :cond_0
    return-void
.end method

.method public sendCustomData(I[BI)V
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 375
    invoke-interface {v0, p1, p2, p3}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyCustomData(I[BI)V

    :cond_0
    return-void
.end method

.method public sendCustomDataStatus(I)V
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    invoke-interface {v0, p1}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifySendCustomDataStatus(I)V

    return-void
.end method

.method public sendDisconnect_REQ()V
    .locals 1

    .line 397
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 398
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyDisconnect_REQ()V

    :cond_0
    return-void
.end method

.method public sendHuMsgData([B)V
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 405
    invoke-interface {v0, p1}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyHuMsgData([B)V

    :cond_0
    return-void
.end method

.method public sendIsLegal(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;)V
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 470
    invoke-interface {v0, p1}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyIsLegal(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;)V

    :cond_0
    return-void
.end method

.method public sendLegalAppOn(I)V
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 254
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendLegalAppOn(I)V

    :cond_0
    return-void
.end method

.method public sendMusicMuteContro()V
    .locals 1

    .line 455
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 456
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyMusicMuteContro()V

    :cond_0
    return-void
.end method

.method public sendMusicNext()V
    .locals 1

    .line 448
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyMusicNext()V

    :cond_0
    return-void
.end method

.method public sendMusicPlayControl()V
    .locals 1

    .line 420
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 421
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyMusicPlayControl()V

    :cond_0
    return-void
.end method

.method public sendMusicPlayControlPause()V
    .locals 1

    .line 434
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 435
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyMusicPlayControlPause()V

    :cond_0
    return-void
.end method

.method public sendMusicPlayControlPlay()V
    .locals 1

    .line 427
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 428
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyMusicPlayControlPlay()V

    :cond_0
    return-void
.end method

.method public sendMusicPrev()V
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 442
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyMusicPrev()V

    :cond_0
    return-void
.end method

.method public sendSetAction(Ljava/lang/String;)V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 248
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->setRoateAction(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public sendSpeechPcmData([BI)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 333
    invoke-interface {v0, p1, p2}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifySpeechPcmData([BI)V

    :cond_0
    return-void
.end method

.method public sendSpeechStatusControlStart()V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendSpeechStatusControlStart()V

    :cond_0
    return-void
.end method

.method public sendSpeechStatusControlStop()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendSpeechStatusControlStop()V

    :cond_0
    return-void
.end method

.method public sendSspHome()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 326
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyChangeInApp()V

    :cond_0
    return-void
.end method

.method public sendStartConnect()V
    .locals 2

    .line 342
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 344
    :try_start_0
    iput-boolean v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->f:Z

    const-string v0, "sendStartConnect"

    .line 345
    invoke-direct {p0, v0}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->h:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public sendToCarAppBackground()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendToCarAppBackground()V

    :cond_0
    return-void
.end method

.method public sendToCarAppForeground()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendToCarAppForeground()V

    :cond_0
    return-void
.end method

.method public sendToCarAutoBTConnectedState(I)V
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 218
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendToCarBTAutoConnectedStatus(I)V

    :cond_0
    return-void
.end method

.method public sendToCarCustomData(B[BI)V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0, p1, p2, p3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendCustomData(B[BI)V

    :cond_0
    return-void
.end method

.method public sendToCarDisconnectRSP(I)V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz v0, :cond_0

    .line 228
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendToCarWifiDisconnectRSP(I)V

    :cond_0
    return-void
.end method

.method public sendUsbDisConnected()V
    .locals 2

    .line 1487
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1488
    iput-object v1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    .line 1491
    :cond_0
    sget-object v0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->j:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_1

    .line 1492
    sput-object v1, Lcom/neusoft/interconnection/connectmanager/LinkManager;->j:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    :cond_1
    const/4 v0, 0x0

    .line 1494
    iput-boolean v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->e:Z

    .line 1495
    iput-boolean v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->f:Z

    .line 304
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->b:Lcom/neusoft/interconnection/MirrorActivity;

    if-eqz v0, :cond_2

    const-string v0, "usb disconnected Activity finish()"

    .line 305
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->b:Lcom/neusoft/interconnection/MirrorActivity;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/MirrorActivity;->destroyMirrorActivity()V

    .line 307
    iput-object v1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->b:Lcom/neusoft/interconnection/MirrorActivity;

    .line 2478
    :cond_2
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_3

    .line 2479
    invoke-interface {v0}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyUsbDisconnected()V

    :cond_3
    return-void
.end method

.method public setInterConnectionCallback(Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x1

    .line 72
    :try_start_0
    iput-boolean v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->e:Z

    .line 73
    iput-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    const-string p1, "setInterConnectionCallback"

    .line 74
    invoke-direct {p0, p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :catch_0
    iget-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setLinkManagerCallback(Lcom/neusoft/interconnection/connectmanager/LinkManagerCallback;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->c:Lcom/neusoft/interconnection/connectmanager/LinkManagerCallback;

    return-void
.end method

.method public setMirrorActivity(Lcom/neusoft/interconnection/MirrorActivity;)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->b:Lcom/neusoft/interconnection/MirrorActivity;

    return-void
.end method

.method public setScreenCaptureBinder(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)V
    .locals 1

    .line 154
    iput-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const-string p1, "setScreenCaptureBinder start"

    .line 155
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    if-eqz p1, :cond_0

    const-string p1, "setScreenCaptureBinder middle myConnectionManager != null"

    .line 157
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->k:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->setMyBinder(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)V

    :cond_0
    const-string p1, "setScreenCaptureBinder end"

    .line 160
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setScreenMirrorStart(II)V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/neusoft/interconnection/connectmanager/LinkManager;->i:Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;

    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1, p2}, Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;->notifyConnectSuccess(II)V

    :cond_0
    return-void
.end method
