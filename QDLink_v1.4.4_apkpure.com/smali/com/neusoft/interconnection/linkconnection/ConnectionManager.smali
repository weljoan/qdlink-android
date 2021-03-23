.class public Lcom/neusoft/interconnection/linkconnection/ConnectionManager;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;
.implements Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;


# static fields
.field private static final O:J = 0xbb8L

.field private static final P:J = 0x1388L

.field private static final T:I = 0x200

.field private static final U:I = 0x0

.field private static final V:I = 0x32

.field private static final W:I = 0x10

.field private static final ad:I = 0x4

.field private static final ae:I = 0x1c

.field private static final af:I = 0x44


# instance fields
.field private A:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

.field private B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

.field private C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

.field private D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

.field private E:Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

.field private F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

.field private G:Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;

.field private H:Ljava/util/Timer;

.field private I:Ljava/util/TimerTask;

.field private J:I

.field private K:J

.field private L:J

.field private M:J

.field private N:J

.field private Q:[B

.field private R:J

.field private S:J

.field private X:Ljava/lang/String;

.field private Y:[B

.field private Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

.field a:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

.field private aA:Ljava/util/TimerTask;

.field private aB:Ljava/util/Timer;

.field private aC:Ljava/util/TimerTask;

.field private aa:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;

.field private ab:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;

.field private ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

.field private ag:Lcom/neusoft/interconnection/linkconnection/message/LandMode;

.field private ah:Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;

.field private ai:Ljava/lang/String;

.field private aj:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

.field private ak:Ljava/lang/String;

.field private al:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;

.field private am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

.field private an:Lcom/neusoft/interconnection/linkconnection/message/AppMessage;

.field private ao:Ljava/lang/String;

.field private ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

.field private aq:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/WhitelistAppOnPara;

.field private ar:I

.field private as:I

.field private at:I

.field private au:I

.field private av:I

.field private aw:J

.field private ax:J

.field private ay:J

.field private az:Ljava/util/Timer;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field public checkDataTask:Ljava/util/TimerTask;

.field public checkTimer:Ljava/util/Timer;

.field public customStatus:Lcom/neusoft/interconnection/linkconnection/message/CustomStatus;

.field private d:Ljava/util/concurrent/locks/Lock;

.field private e:Ljava/util/concurrent/locks/Lock;

.field private f:Ljava/util/concurrent/locks/Lock;

.field private g:Ljava/util/concurrent/locks/Lock;

.field private h:I

.field private i:Landroid/content/Context;

.field private j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

.field private k:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

.field private l:Z

.field private m:Z

.field private n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

.field private o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field public sendAppStatusTimer:Ljava/util/Timer;

.field public sendAppStatusTimerTask:Ljava/util/TimerTask;

.field private t:Z

.field private u:Ljava/util/concurrent/locks/Lock;

.field private v:Ljava/util/concurrent/locks/Lock;

.field private w:Landroid/os/PowerManager;

.field private x:Landroid/os/PowerManager$WakeLock;

.field private y:Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;

.field private z:Lcom/neusoft/interconnection/linkconnection/message/Speech;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d:Ljava/util/concurrent/locks/Lock;

    .line 84
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->e:Ljava/util/concurrent/locks/Lock;

    .line 85
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    .line 89
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    .line 94
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    const/4 v1, 0x1

    .line 104
    iput-boolean v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->l:Z

    const/4 v2, 0x0

    .line 107
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->checkDataTask:Ljava/util/TimerTask;

    .line 108
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->m:Z

    .line 115
    new-instance v3, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    invoke-direct {v3}, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    .line 120
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->p:I

    .line 124
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->q:I

    .line 128
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->r:I

    .line 130
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->s:Z

    .line 132
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->t:Z

    .line 137
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->u:Ljava/util/concurrent/locks/Lock;

    .line 141
    new-instance v3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->v:Ljava/util/concurrent/locks/Lock;

    .line 146
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->w:Landroid/os/PowerManager;

    .line 151
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->x:Landroid/os/PowerManager$WakeLock;

    .line 187
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->E:Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

    .line 224
    new-instance v3, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;

    invoke-direct {v3}, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->G:Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;

    .line 243
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    .line 244
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimerTask:Ljava/util/TimerTask;

    const/4 v3, -0x1

    .line 362
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    const-wide/16 v3, 0x0

    .line 363
    iput-wide v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    .line 364
    iput-wide v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->L:J

    .line 366
    iput-wide v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    .line 367
    iput-wide v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->N:J

    const v5, 0x4b000

    new-array v5, v5, [B

    .line 643
    iput-object v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Q:[B

    .line 644
    iput-wide v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    .line 645
    iput-wide v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->S:J

    const-string v3, "DEFULT"

    .line 862
    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    const/16 v3, 0x10

    new-array v3, v3, [B

    .line 1018
    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Y:[B

    .line 1065
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1067
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aa:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;

    .line 1437
    new-instance v3, Lcom/neusoft/interconnection/linkconnection/message/LandMode;

    invoke-direct {v3}, Lcom/neusoft/interconnection/linkconnection/message/LandMode;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ag:Lcom/neusoft/interconnection/linkconnection/message/LandMode;

    .line 1439
    new-instance v3, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;

    invoke-direct {v3}, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ah:Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;

    const-string v3, "{\"CMD\":\"HEARTBEAT\"}"

    .line 1876
    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ai:Ljava/lang/String;

    .line 2109
    new-instance v3, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aj:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    .line 2284
    new-instance v3, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    .line 2361
    new-instance v3, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const-string v3, ""

    .line 2362
    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->b:Ljava/lang/String;

    .line 2423
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->an:Lcom/neusoft/interconnection/linkconnection/message/AppMessage;

    const-string v3, "com.neusoft.ssplink.creencontrol.rotateScreenService"

    .line 2448
    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ao:Ljava/lang/String;

    .line 2453
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    .line 2454
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aq:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/WhitelistAppOnPara;

    .line 2490
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ar:I

    .line 2491
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    .line 2492
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->at:I

    .line 2493
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->au:I

    .line 2494
    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->av:I

    .line 190
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    .line 191
    new-instance p1, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;

    invoke-direct {p1}, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;-><init>()V

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->y:Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;

    .line 192
    new-instance p1, Lcom/neusoft/interconnection/linkconnection/message/Speech;

    invoke-direct {p1}, Lcom/neusoft/interconnection/linkconnection/message/Speech;-><init>()V

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->z:Lcom/neusoft/interconnection/linkconnection/message/Speech;

    .line 193
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f53\u524d\u542f\u52a8\u7684\u662f\uff1a"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result p1

    if-eqz p1, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance p1, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

    invoke-direct {p1}, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;-><init>()V

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->k:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

    .line 208
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->k:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

    invoke-virtual {p1, p0}, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->setLinkConnectionInterface(Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;)V

    .line 209
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->k:Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/wificonnection/WifiServerSocketThread;->start()V

    .line 210
    sput-boolean v0, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    goto :goto_0

    .line 198
    :cond_1
    new-instance p1, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-direct {p1, v1}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    .line 200
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    invoke-virtual {p1, p0}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->setLinkConnectionInterface(Lcom/neusoft/interconnection/linkconnection/conninterface/LinkConnectionInterface;)V

    const-string p1, "qdLinkInterConnection \u8bbe\u7f6e\u4e86\u76d1\u542c"

    .line 201
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 203
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->initAccessory()V

    .line 213
    :goto_0
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->w:Landroid/os/PowerManager;

    .line 214
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->w:Landroid/os/PowerManager;

    const/16 v1, 0x1a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->x:Landroid/os/PowerManager$WakeLock;

    .line 215
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 216
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->x:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    return-void
.end method

.method static synthetic a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;[BI)I
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B)I

    move-result p0

    return p0
.end method

.method private a([B)I
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "receive===dataType111111111:"

    .line 1449
    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 1451
    invoke-static {v0, v2}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v3

    .line 1452
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "receive===dataType:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/4 v4, 0x2

    const/16 v5, 0x44

    const/16 v6, 0x1c

    const/16 v7, 0xc

    const/4 v8, 0x3

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v3, :cond_c

    const/16 v11, 0x40

    if-eq v3, v9, :cond_6

    const/4 v2, -0x1

    if-eq v3, v8, :cond_3

    const/16 v5, 0xa

    const/16 v6, 0x200

    if-eq v3, v5, :cond_2

    if-eq v3, v7, :cond_0

    goto/16 :goto_7

    .line 1682
    :cond_0
    iget-object v3, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->z:Lcom/neusoft/interconnection/linkconnection/message/Speech;

    invoke-virtual {v3, v0}, Lcom/neusoft/interconnection/linkconnection/message/Speech;->setValueByBuffer([B)V

    .line 1683
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "speechStatus====== DataType.speechStatus :12,dataSize:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->z:Lcom/neusoft/interconnection/linkconnection/message/Speech;

    iget v3, v3, Lcom/neusoft/interconnection/linkconnection/message/Speech;->SpeechDataSize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->z:Lcom/neusoft/interconnection/linkconnection/message/Speech;

    iget v3, v3, Lcom/neusoft/interconnection/linkconnection/message/Speech;->totalsize:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1684
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->z:Lcom/neusoft/interconnection/linkconnection/message/Speech;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/Speech;->totalsize:I

    .line 1686
    iget-object v3, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->z:Lcom/neusoft/interconnection/linkconnection/message/Speech;

    iget v3, v3, Lcom/neusoft/interconnection/linkconnection/message/Speech;->SpeechDataSize:I

    sub-int/2addr v0, v6

    .line 1688
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "speechStatus======humsg dataBlockSize"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "dataSize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1689
    new-array v4, v3, [B

    .line 1690
    new-array v5, v0, [B

    move v7, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_1

    .line 1694
    invoke-virtual {v1, v5, v6, v7}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Read([BII)I

    move-result v8

    if-eq v8, v2, :cond_1

    add-int/2addr v6, v8

    sub-int/2addr v7, v8

    goto :goto_0

    .line 1701
    :cond_1
    invoke-static {v5, v10, v4, v10, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1702
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v0, :cond_16

    .line 1703
    invoke-interface {v0, v4, v3}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendSpeechPcmData([BI)V

    goto/16 :goto_7

    .line 1653
    :cond_2
    new-instance v2, Lcom/neusoft/interconnection/linkconnection/message/InputControl;

    invoke-direct {v2}, Lcom/neusoft/interconnection/linkconnection/message/InputControl;-><init>()V

    .line 1654
    invoke-virtual {v2}, Lcom/neusoft/interconnection/linkconnection/message/InputControl;->getHeader()Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    move-result-object v2

    .line 1655
    invoke-virtual {v2, v0, v6}, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->setValueByBuffer([BI)V

    .line 1657
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "inputControl KeyEvent===inAction:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1658
    iget-short v0, v2, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_type:S

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v15, 0x1

    goto :goto_1

    :pswitch_1
    const/4 v15, 0x2

    goto :goto_1

    :pswitch_2
    const/4 v15, 0x0

    .line 1673
    :goto_1
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_16

    .line 1674
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "KeyEvent====== myBinder != null x:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v3, v2, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_value0:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ";y"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v3, v2, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_value1:S

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":action:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1675
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    iget-short v3, v2, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_value0:S

    int-to-float v3, v3

    iget-short v2, v2, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->event_value1:S

    int-to-float v2, v2

    const/16 v18, 0x0

    move/from16 v16, v3

    move/from16 v17, v2

    invoke-static/range {v11 .. v18}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->onTouchApplication(Landroid/view/MotionEvent;)V

    goto/16 :goto_7

    .line 1612
    :cond_3
    invoke-static {v0, v6}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v3

    .line 1613
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "huMsg==action:"

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    if-ne v3, v9, :cond_5

    const/16 v3, 0x8

    .line 1615
    invoke-static {v0, v3}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v3

    .line 1616
    invoke-static {v0, v7}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v4

    .line 1617
    invoke-static {v0, v11}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    sub-int/2addr v3, v4

    .line 1619
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "huMsg== dataSize"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "dataBlockSize"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1620
    new-array v4, v0, [B

    .line 1621
    new-array v5, v3, [B

    move v7, v3

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v3, :cond_4

    .line 1625
    invoke-virtual {v1, v5, v6, v7}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Read([BII)I

    move-result v8

    if-eq v8, v2, :cond_4

    add-int/2addr v6, v8

    sub-int/2addr v7, v8

    goto :goto_2

    .line 1634
    :cond_4
    invoke-static {v5, v10, v4, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1642
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v0, :cond_16

    .line 1643
    invoke-interface {v0, v4}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendHuMsgData([B)V

    goto/16 :goto_7

    :cond_5
    if-ne v3, v4, :cond_16

    .line 1646
    invoke-static {v0, v5}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    .line 1647
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "huMsg==ResponseStatus"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1540
    :cond_6
    invoke-static {v0, v6}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v3

    .line 1541
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "receive===screenCapAction:"

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/16 v4, 0x12

    const-string v6, ",frameInterval:"

    const-string v7, ",bitRate:"

    const-string v9, ",frameRate:"

    if-eq v3, v4, :cond_b

    .line 1544
    iget-object v4, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    invoke-virtual {v4, v0}, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->setValueByBuffer([B)V

    .line 1545
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureWidth:I

    .line 1546
    iget-object v4, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v4, v4, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureHeight:I

    .line 1547
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v11, "myScreenHeader.getEncodingType():"

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    invoke-virtual {v11}, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->getEncodingType()I

    move-result v11

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1548
    iget-object v5, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    invoke-virtual {v5}, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->getEncodingType()I

    move-result v5

    if-ne v5, v8, :cond_7

    .line 1550
    iget-object v5, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iput v0, v5, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureWidth:I

    .line 1551
    iput v4, v5, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureHeight:I

    .line 1557
    :cond_7
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameRate:I

    if-nez v0, :cond_8

    .line 1558
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    const/16 v4, 0x18

    iput v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameRate:I

    .line 1559
    iput v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureFrameRate:I

    goto :goto_3

    .line 1561
    :cond_8
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameRate:I

    iput v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureFrameRate:I

    .line 1564
    :goto_3
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameRate:I

    iput v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->p:I

    .line 1569
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureBitRate:I

    if-nez v0, :cond_9

    .line 1570
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth:I

    iget-object v5, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v5, v5, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight:I

    mul-int v4, v4, v5

    mul-int/lit8 v4, v4, 0x3

    iput v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureBitRate:I

    .line 1571
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth:I

    iget-object v5, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v5, v5, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight:I

    mul-int v4, v4, v5

    mul-int/lit8 v4, v4, 0x3

    iput v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureBitRate:I

    goto :goto_4

    .line 1573
    :cond_9
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureBitRate:I

    iput v4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureBitRate:I

    .line 1576
    :goto_4
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureBitRate:I

    iput v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->q:I

    .line 1581
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameInterval:I

    if-nez v0, :cond_a

    .line 1582
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iput v2, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameInterval:I

    .line 1583
    iput v2, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureFrameInterval:I

    goto :goto_5

    .line 1585
    :cond_a
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v2, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameInterval:I

    iput v2, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureFrameInterval:I

    .line 1588
    :goto_5
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureFrameInterval:I

    iput v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->r:I

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "receive screenCapAction screenCapAction1:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1593
    invoke-virtual/range {p0 .. p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->replySpeedParms()V

    goto/16 :goto_7

    .line 1600
    :cond_b
    invoke-static {v0, v11}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v2

    iput v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->p:I

    .line 1602
    invoke-static {v0, v5}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v2

    iput v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->q:I

    const/16 v2, 0x48

    .line 1604
    invoke-static {v0, v2}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v0

    iput v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->r:I

    .line 1605
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "receive screenCapAction screenCapAction:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->p:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->q:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->r:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1456
    :cond_c
    invoke-static {v0, v6}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v2

    .line 1457
    invoke-static {v0, v5}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v3

    .line 1458
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "receive===commandAction:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",===cmd:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    if-ne v2, v9, :cond_16

    if-eq v3, v8, :cond_15

    const/4 v2, 0x5

    if-eq v3, v2, :cond_14

    if-eq v3, v7, :cond_10

    const/16 v2, 0x14

    if-eq v3, v2, :cond_f

    const/16 v2, 0x10

    if-eq v3, v2, :cond_e

    const/16 v0, 0x11

    if-eq v3, v0, :cond_d

    goto/16 :goto_7

    .line 1528
    :cond_d
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_16

    .line 1529
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->reSendSps()V

    goto/16 :goto_7

    .line 1502
    :cond_e
    iget-object v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->G:Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;

    invoke-virtual {v2, v0}, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->setValueByBuffer([B)V

    .line 1503
    invoke-direct/range {p0 .. p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g()V

    .line 1506
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v0, :cond_16

    const-string v0, "ConnectionManager connectManagerCallback != null"

    .line 1507
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1508
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendAppSendPhoneReady()V

    goto/16 :goto_7

    .line 1514
    :cond_f
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v0, :cond_16

    .line 1515
    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendSspHome()V

    goto/16 :goto_7

    .line 1470
    :cond_10
    new-instance v2, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;

    invoke-direct {v2}, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;-><init>()V

    .line 1471
    invoke-virtual {v2, v0}, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->setValueByBuffer([B)V

    .line 1472
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "PlayStatus.value:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v2, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->value:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1473
    iget v0, v2, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->value:I

    if-ne v0, v9, :cond_13

    .line 1475
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    if-eqz v0, :cond_12

    .line 1476
    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureWidth:I

    if-nez v0, :cond_11

    .line 1477
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    const/16 v2, 0x320

    iput v2, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureWidth:I

    .line 1479
    :cond_11
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureHeight:I

    if-nez v0, :cond_12

    .line 1480
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    const/16 v2, 0x1e0

    iput v2, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureHeight:I

    .line 1484
    :cond_12
    iget-object v11, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v11, :cond_16

    .line 1485
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v13, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureWidth:I

    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    iget v14, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->mCaptureHeight:I

    iget v15, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->p:I

    iget v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->q:I

    iget v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->r:I

    iget-object v3, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    .line 1491
    invoke-virtual {v3}, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->getEncodingType()I

    move-result v18

    iget-object v3, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    .line 1493
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v20

    const-string v12, "play"

    move/from16 v16, v0

    move/from16 v17, v2

    move-object/from16 v19, v3

    .line 1485
    invoke-interface/range {v11 .. v20}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->receiveMirrorPlayOrPause(Ljava/lang/String;IIIIIILjava/lang/String;I)V

    goto :goto_7

    .line 1496
    :cond_13
    iget v0, v2, Lcom/neusoft/interconnection/linkconnection/message/PlayStatus;->value:I

    goto :goto_7

    .line 1521
    :cond_14
    iget-object v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ag:Lcom/neusoft/interconnection/linkconnection/message/LandMode;

    invoke-virtual {v2, v0}, Lcom/neusoft/interconnection/linkconnection/message/LandMode;->setValueByBuffer([B)V

    .line 1522
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "receiveFormatBinary landMode.value:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ag:Lcom/neusoft/interconnection/linkconnection/message/LandMode;

    iget v2, v2, Lcom/neusoft/interconnection/linkconnection/message/LandMode;->value:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1523
    iget-object v0, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ag:Lcom/neusoft/interconnection/linkconnection/message/LandMode;

    iget v0, v0, Lcom/neusoft/interconnection/linkconnection/message/LandMode;->value:I

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->changeRotateScreen(I)V

    goto :goto_7

    .line 4747
    :cond_15
    :try_start_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/DataFormatManager;->getInstance()Lcom/neusoft/interconnection/utils/DataFormatManager;

    move-result-object v2

    iget-object v3, v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {v2, v0, v3}, Lcom/neusoft/interconnection/utils/DataFormatManager;->sendVersion([BLcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)[B

    move-result-object v0

    .line 4748
    array-length v2, v0

    invoke-virtual {v1, v0, v10, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v0

    .line 4750
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "==Exception e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 4813
    :goto_6
    :try_start_1
    invoke-static {}, Lcom/neusoft/interconnection/utils/DataFormatManager;->getInstance()Lcom/neusoft/interconnection/utils/DataFormatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/DataFormatManager;->sendUpGrade()[B

    move-result-object v0

    .line 4814
    array-length v2, v0

    invoke-virtual {v1, v0, v10, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    .line 4816
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "==Exception e:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :cond_16
    :goto_7
    return v10

    nop

    :pswitch_data_0
    .packed-switch -0x8000
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;J)J
    .locals 0

    const-wide/16 p1, 0x0

    .line 79
    iput-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->N:J

    return-wide p1
.end method

.method static synthetic a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 4

    .line 348
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->H:Ljava/util/Timer;

    .line 349
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$2;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$2;-><init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->I:Ljava/util/TimerTask;

    .line 356
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->H:Ljava/util/Timer;

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->I:Ljava/util/TimerTask;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method static synthetic a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->c()V

    return-void
.end method

.method static synthetic a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;[B[B)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    return-void
.end method

.method private a(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;)V
    .locals 5

    .line 1759
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 1760
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;

    invoke-direct {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;-><init>()V

    .line 1761
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v2, :cond_1

    .line 1763
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarWidth()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarHeight()I

    move-result v2

    if-nez v2, :cond_0

    .line 1764
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const/16 v3, 0x320

    const/16 v4, 0x1e0

    invoke-virtual {v2, v3, v4}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->calcWidthAndHeight(II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v2

    goto :goto_0

    .line 1766
    :cond_0
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarHeight()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->calcWidthAndHeight(II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v2

    .line 1768
    :goto_0
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth1()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneWidth(I)V

    .line 1769
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight1()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneHeight(I)V

    .line 1772
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcWidth()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorWidth(I)V

    .line 1773
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorHeight(I)V

    .line 1774
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneWidthInApp(I)V

    .line 1775
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneHeightInApp(I)V

    .line 1776
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorWidthInApp(I)V

    .line 1777
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorHeightInApp(I)V

    .line 1779
    :cond_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "PassistMobileNum"

    .line 1781
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/interconnection/utils/LinkConfig;->getPassistMobileNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1783
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 1785
    :goto_1
    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneFeature(Ljava/lang/Object;)V

    .line 1787
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneUUID(Ljava/lang/String;)V

    .line 1788
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneName(Ljava/lang/String;)V

    .line 1789
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/ConnConstant;->packageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setVersion(Ljava/lang/String;)V

    .line 1790
    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneBrand(Ljava/lang/String;)V

    .line 1791
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneModel(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1792
    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPlatform(I)V

    .line 1793
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPlatformVersion(Ljava/lang/String;)V

    .line 1794
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getMirrorTypeReq()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorTypeSupport(I)V

    .line 1796
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    const-string v3, "PHONE_INFO"

    invoke-virtual {p1, v3, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sendVersionNewProtocol PhoneInfo strData:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1798
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 1799
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 1800
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 1801
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 1802
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    const/4 v1, 0x1

    .line 1803
    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 1805
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkStartReceiveData receiveMyBinder:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->s:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",receiveUsbConnect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->t:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",method:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 304
    iget-boolean p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->t:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->s:Z

    if-eqz p1, :cond_4

    .line 306
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_0

    const-string p1, "checkStartReceiveData() connectManagerCallback != null"

    .line 307
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 308
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendStartConnect()V

    .line 312
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getCurrentLinkMode()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-wide/16 v0, 0x1b58

    goto :goto_0

    .line 315
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/neusoft/interconnection/utils/LinkConfig;->checkSendAppStatus:J

    sub-long/2addr v0, v2

    .line 317
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "checkStartReceiveData endTimer:"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 318
    sget-wide v2, Lcom/neusoft/interconnection/utils/LinkConfig;->timeInterval:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 320
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->StartReceiveData()V

    .line 321
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->c()V

    .line 323
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->startWriteHeartBeat()V

    .line 324
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->startReadHeartBeat()V

    return-void

    :cond_2
    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3

    .line 335
    invoke-virtual {p0, v2, v3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer(J)V

    return-void

    .line 337
    :cond_3
    sget-wide v2, Lcom/neusoft/interconnection/utils/LinkConfig;->timeInterval:J

    sub-long/2addr v2, v0

    invoke-virtual {p0, v2, v3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer(J)V

    :cond_4
    return-void
.end method

.method private a([BIIIIIIII)V
    .locals 2

    .line 2584
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aw:J

    .line 2586
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    if-nez v0, :cond_0

    .line 2587
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    .line 2591
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setExtendHeaderType(B)V

    .line 2594
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    invoke-virtual {v0, p5}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setWidth(I)V

    .line 2595
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    invoke-virtual {v0, p6}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setHeight(I)V

    .line 2596
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    int-to-short p4, p4

    invoke-virtual {v0, p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setOrientation(S)V

    .line 2597
    iget-object p4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    int-to-byte p3, p3

    invoke-virtual {p4, p3}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setLandMode(B)V

    .line 2598
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    iget-object p4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    invoke-virtual {p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getEncodingType()I

    move-result p4

    int-to-byte p4, p4

    invoke-virtual {p3, p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setEncodingType(B)V

    .line 2599
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    iget-object p4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    invoke-virtual {p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getFrameRate()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setFrameRate(I)V

    .line 2600
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    iget-object p4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    invoke-virtual {p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getBitRate()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setBitRate(I)V

    .line 2601
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    iget-object p4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    invoke-virtual {p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getFrameInterval()I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setFrameInterval(I)V

    .line 2603
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    int-to-byte p4, p9

    invoke-virtual {p3, p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->setInOutApp(B)V

    .line 2606
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    if-nez p3, :cond_1

    .line 2607
    new-instance p3, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {p3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    iput-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    .line 2609
    :cond_1
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p3, p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2610
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    iget-object p4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    invoke-virtual {p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getExtendHeaderSize()S

    move-result p4

    invoke-virtual {p3, p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2611
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p3, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2612
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/4 p4, 0x0

    invoke-virtual {p3, p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2613
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p3, p4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 2614
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/4 v0, 0x2

    invoke-virtual {p3, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2615
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ax:J

    .line 2616
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sendMirrorDataBytesH264NewProtocol "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getTotalSize()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n,screenCaptureExtendHeader.getWidth():"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    .line 2617
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getWidth()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n,screenCaptureExtendHeader.getHeight():"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    .line 2618
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getHeight()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\n,phoneWidth:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, "\n,phoneHeight:"

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p7, "\n,dataWidth:"

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, "\n,dataHeight:"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p5, ",start02:"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ax:J

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, ",start01:"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aw:J

    invoke-virtual {p3, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 2616
    invoke-static {p3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2621
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->B:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object p3

    const/16 p5, 0x10

    invoke-static {p3, p4, p1, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2623
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    invoke-virtual {p3}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getBuffer()[B

    move-result-object p3

    iget-object p6, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->C:Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;

    invoke-virtual {p6}, Lcom/neusoft/interconnection/linkconnection/newmessage/ScreenCaptureExtendHeader;->getBuffer()[B

    move-result-object p6

    array-length p6, p6

    invoke-static {p3, p4, p1, p5, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2624
    array-length p3, p1

    invoke-virtual {p0, p1, p4, p3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->WriteScreenData([BII)I

    .line 2625
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ay:J

    .line 2626
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "sendMirrorDataBytesH264NewProtocol ,start03-start01:"

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide p4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ay:J

    iget-wide p6, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aw:J

    sub-long/2addr p4, p6

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ",data.length :"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",end:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",iAppCapture:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private a([B[B)V
    .locals 4

    .line 1999
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2014
    :cond_0
    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    .line 2015
    new-array v2, v0, [B

    .line 2016
    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2017
    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2018
    invoke-virtual {p0, v2, v1, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I

    :goto_0
    return-void

    .line 2002
    :cond_1
    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    .line 2003
    rem-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_2

    rsub-int v2, v2, 0x200

    :cond_2
    add-int/2addr v0, v2

    .line 2007
    new-array v0, v0, [B

    .line 2008
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2009
    array-length p1, p1

    array-length v2, p2

    invoke-static {p2, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2010
    array-length p1, v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 7

    .line 2855
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 2856
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 2858
    :try_start_0
    const-class v1, Landroid/provider/Settings;

    const-string v2, "canDrawOverlays"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    .line 2859
    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    .line 2860
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 2862
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2865
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2867
    invoke-static {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->isMiuiFloatWindowOpAllowed(Landroid/content/Context;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 2870
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private a([BIIIIIIIII)[B
    .locals 2

    .line 2542
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->o:Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;

    array-length v1, p1

    iput v1, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->totalsize:I

    const/16 v1, 0x780

    .line 2543
    iput v1, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth0:I

    const/16 v1, 0x438

    .line 2544
    iput v1, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight0:I

    .line 2545
    iput p2, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureDataSize:I

    const/4 p2, 0x3

    .line 2546
    iput p2, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureEncodingType:I

    .line 2548
    iput p5, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenOrientation:I

    .line 2549
    iput p8, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenWidth:I

    .line 2550
    iput p9, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenHeight:I

    .line 2551
    iput p6, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureWidth:I

    .line 2552
    iput p7, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oCaptureHeight:I

    .line 2553
    iput p5, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenOrientation:I

    .line 2554
    iput p4, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oScreenDirect:I

    .line 2556
    iput p10, v0, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->oInOutApp:I

    .line 2557
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/ScreenHeader;->getBuffer()[B

    move-result-object p2

    .line 2558
    array-length p4, p2

    const/4 p5, 0x0

    invoke-static {p2, p5, p1, p5, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2559
    :goto_0
    array-length p2, p1

    if-ge p3, p2, :cond_0

    .line 2560
    aput-byte p5, p1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private static b(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;
    .locals 5

    const-string v0, "legalAppWatch:"

    .line 1846
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;

    invoke-direct {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;-><init>()V

    .line 1848
    :try_start_0
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarFeature()Ljava/lang/Object;

    move-result-object v2

    .line 1849
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isLegalAppWatch object:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1850
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "legal_app_watch"

    .line 1851
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1852
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 1854
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "isLegalAppWatch Exception e:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 1859
    :goto_0
    :try_start_1
    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->setLegal_app_watch(I)V

    .line 1860
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarFactory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->setCarFactory(Ljava/lang/String;)V

    .line 1861
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->setCarType(Ljava/lang/String;)V

    .line 1862
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getHUFactory()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->setHuFactory(Ljava/lang/String;)V

    .line 1864
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getLegal_app_watch()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",legalApp.getCarFactory():"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1865
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarFactory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",legalApp.getCarType():"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1866
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",legalApp.getHuFactory():"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1867
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getHuFactory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1864
    invoke-static {p0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-object v1
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 839
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->l:Z

    .line 840
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->E:Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->E:Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->interrupt()V

    const/4 v0, 0x0

    .line 842
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->E:Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V
    .locals 0

    .line 79
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g()V

    return-void
.end method

.method private b([B)V
    .locals 2

    .line 1747
    :try_start_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/DataFormatManager;->getInstance()Lcom/neusoft/interconnection/utils/DataFormatManager;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {v0, p1, v1}, Lcom/neusoft/interconnection/utils/DataFormatManager;->sendVersion([BLcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)[B

    move-result-object p1

    const/4 v0, 0x0

    .line 1748
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1750
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "==Exception e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private b([B[B)V
    .locals 4

    .line 2029
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2044
    :cond_0
    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    .line 2045
    new-array v2, v0, [B

    .line 2046
    array-length v3, p1

    invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2047
    array-length p1, p1

    array-length v3, p2

    invoke-static {p2, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2048
    invoke-virtual {p0, v2, v1, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->WriteCustomData([BII)I

    :goto_0
    return-void

    .line 2032
    :cond_1
    array-length v0, p1

    array-length v2, p2

    add-int/2addr v0, v2

    .line 2033
    rem-int/lit16 v2, v0, 0x200

    if-eqz v2, :cond_2

    rsub-int v2, v2, 0x200

    :cond_2
    add-int/2addr v0, v2

    .line 2037
    new-array v0, v0, [B

    .line 2038
    array-length v2, p1

    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2039
    array-length p1, p1

    array-length v2, p2

    invoke-static {p2, v1, v0, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2040
    array-length p1, v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->WriteCustomData([BII)I

    return-void
.end method

.method private c()V
    .locals 3

    .line 1733
    :try_start_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/DataFormatManager;->getInstance()Lcom/neusoft/interconnection/utils/DataFormatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/DataFormatManager;->sendAppStatus()[B

    move-result-object v0

    .line 1734
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendAppStatus() sendBuffer.length:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1735
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1737
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==Exception e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->l:Z

    return p0
.end method

.method public static checkOp(Landroid/content/Context;I)Z
    .locals 9

    .line 2892
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x13

    if-lt v0, v2, :cond_0

    const-string v0, "appops"

    .line 2895
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 2898
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "checkOp"

    const/4 v4, 0x3

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const-class v6, Ljava/lang/String;

    const/4 v8, 0x2

    aput-object v6, v5, v8

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    .line 2899
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v7

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v3, v8

    invoke-virtual {v2, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_0

    return v7

    :catch_0
    :cond_0
    return v1
.end method

.method static synthetic d(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    return-object p0
.end method

.method private d()V
    .locals 3

    .line 1813
    :try_start_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/DataFormatManager;->getInstance()Lcom/neusoft/interconnection/utils/DataFormatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/DataFormatManager;->sendUpGrade()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 1814
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1816
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==Exception e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic e(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aj:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 1824
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 1826
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;

    invoke-direct {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;-><init>()V

    const/4 v2, 0x5

    .line 1827
    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;->setUpdateStatus(I)V

    .line 1828
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object v2

    const-string v3, "UPDATE_NOTIFY"

    invoke-virtual {v2, v3, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1829
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendUpGradeNewProtocol UpdateNotify strData:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1830
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    const/4 v2, 0x0

    .line 1831
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 1832
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 1833
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 1834
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    const/4 v2, 0x1

    .line 1835
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 1836
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    return-void
.end method

.method static synthetic f(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Ljava/lang/String;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ak:Ljava/lang/String;

    return-object p0
.end method

.method private f()V
    .locals 13

    const-string v0, "usb_write== finally end len:"

    .line 1881
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 1883
    :try_start_0
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 1884
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ai:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 1885
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendHeartBeat:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ai:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",strHeartBeat.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",LinkConfig.getInstance().getLinkMode():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x10

    .line 1886
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    const/4 v3, 0x0

    .line 1887
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 1888
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 1889
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 1890
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    const/4 v4, 0x1

    .line 1891
    invoke-virtual {v1, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 1892
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, ",buffer.length:"

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    if-eq v5, v4, :cond_0

    goto/16 :goto_2

    .line 1930
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v2

    .line 1931
    new-array v4, v0, [B

    .line 1932
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v5, v3, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1933
    iget-object v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ai:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v5, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1936
    :try_start_2
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 1937
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wifi_write== in 2 checkDataCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1938
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 1939
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wifi_write==(startTime - lastTime):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    iget-wide v11, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->S:J

    sub-long/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1941
    iget-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    iput-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->S:J

    .line 1970
    sget-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 1971
    sget-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 1972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    goto/16 :goto_2

    :cond_1
    const-string v0, "wifi_writeConnConstant.wifiOutputStream == null"

    .line 1974
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 1977
    :try_start_3
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->closeWifiButton()V

    .line 1978
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wifi_write== fail catch exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1979
    sput-boolean v3, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    .line 1980
    iput v7, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 1981
    sput-object v8, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    .line 1982
    sput-object v8, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    goto/16 :goto_2

    .line 1895
    :cond_2
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v4, v2

    .line 1896
    rem-int/lit16 v5, v4, 0x200

    if-eqz v5, :cond_3

    rsub-int v5, v5, 0x200

    :cond_3
    add-int/2addr v4, v5

    .line 1900
    new-array v4, v4, [B

    .line 1901
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v5, v3, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1902
    iget-object v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ai:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v5, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "usb_write== in 1"

    .line 1905
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1907
    :try_start_4
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_4

    .line 1908
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "usb_write== in 2 checkDataCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1909
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 1910
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    array-length v2, v4

    invoke-virtual {v1, v4, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 1911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    .line 1912
    iget-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iput-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    .line 1913
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "usb_write==(startTimeWrite - lastTimeWrite):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iget-wide v9, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->L:J

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1914
    iget-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iput-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->L:J

    .line 1915
    array-length v1, v4

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    goto :goto_0

    :cond_4
    const-string v1, "usb_writeConnConstant.connFileOutputStream == null"

    .line 1917
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1924
    :goto_0
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 1920
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "usb_write== fail catch exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1921
    iput v7, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 1922
    sput-object v8, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1924
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 1989
    :catch_2
    :goto_2
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 1924
    :goto_3
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    .line 1989
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic g(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->G:Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;

    return-object p0
.end method

.method private g()V
    .locals 3

    .line 2092
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2093
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->h264SupportCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2095
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v0, :cond_2

    const-string v0, "sendScreenCaptureSupport receiveScreenCaptureSupport()"

    .line 2096
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2097
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->receiveScreenCaptureSupport()V

    return-void

    .line 2101
    :cond_0
    invoke-virtual {p0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->replyScreenCaptureSupport(Z)V

    return-void

    .line 2105
    :cond_1
    invoke-virtual {p0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->replyScreenCaptureSupport(Z)V

    :cond_2
    return-void
.end method

.method static synthetic h(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    return-object p0
.end method

.method private h()V
    .locals 1

    .line 2703
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2704
    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    .line 2706
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->x:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    .line 2707
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    return-wide v0
.end method

.method private i()V
    .locals 1

    const-string v0, "ConnectionManager qdLinkInterConnection start"

    .line 2712
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2713
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    if-eqz v0, :cond_0

    const-string v0, "ConnectionManager qdLinkInterConnection != null"

    .line 2714
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2715
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->closeAccessoryCancel()V

    :cond_0
    return-void
.end method

.method public static isMiuiFloatWindowOpAllowed(Landroid/content/Context;)Z
    .locals 2

    .line 2879
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    const/16 v0, 0x18

    .line 2881
    invoke-static {p0, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->checkOp(Landroid/content/Context;I)Z

    move-result p0

    return p0

    .line 2883
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v0, 0x8000000

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic j(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V
    .locals 13

    const-string v0, "usb_write== finally end len:"

    .line 5881
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 5883
    :try_start_0
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 5884
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ai:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 5885
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendHeartBeat:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ai:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",strHeartBeat.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",LinkConfig.getInstance().getLinkMode():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    add-int/lit8 v3, v2, 0x10

    .line 5886
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    const/4 v3, 0x0

    .line 5887
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 5888
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 5889
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 5890
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    const/4 v4, 0x1

    .line 5891
    invoke-virtual {v1, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 5892
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v6, ",buffer.length:"

    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    if-eq v5, v4, :cond_0

    goto/16 :goto_2

    .line 5930
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    array-length v0, v0

    add-int/2addr v0, v2

    .line 5931
    new-array v4, v0, [B

    .line 5932
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v5, v3, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5933
    iget-object v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ai:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v5, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5936
    :try_start_2
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_1

    if-lez v0, :cond_1

    .line 5937
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wifi_write== in 2 checkDataCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5938
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 5939
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    .line 5940
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wifi_write==(startTime - lastTime):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v9, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    iget-wide v11, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->S:J

    sub-long/2addr v9, v11

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5941
    iget-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    iput-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->S:J

    .line 5970
    sget-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write([B)V

    .line 5971
    sget-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 5972
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    goto/16 :goto_2

    :cond_1
    const-string v0, "wifi_writeConnConstant.wifiOutputStream == null"

    .line 5974
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/16 :goto_2

    :catch_0
    move-exception v0

    .line 5977
    :try_start_3
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->closeWifiButton()V

    .line 5978
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wifi_write== fail catch exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5979
    sput-boolean v3, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    .line 5980
    iput v7, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 5981
    sput-object v8, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    .line 5982
    sput-object v8, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    goto/16 :goto_2

    .line 5895
    :cond_2
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v4, v2

    .line 5896
    rem-int/lit16 v5, v4, 0x200

    if-eqz v5, :cond_3

    rsub-int v5, v5, 0x200

    :cond_3
    add-int/2addr v4, v5

    .line 5900
    new-array v4, v4, [B

    .line 5901
    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v9

    array-length v9, v9

    invoke-static {v5, v3, v4, v3, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5902
    iget-object v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ai:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v1

    array-length v1, v1

    invoke-static {v5, v3, v4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string v1, "usb_write== in 1"

    .line 5905
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 5907
    :try_start_4
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_4

    .line 5908
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "usb_write== in 2 checkDataCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5909
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 5910
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    array-length v2, v4

    invoke-virtual {v1, v4, v3, v2}, Ljava/io/FileOutputStream;->write([BII)V

    .line 5911
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    .line 5912
    iget-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iput-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    .line 5913
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "usb_write==(startTimeWrite - lastTimeWrite):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iget-wide v9, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->L:J

    sub-long/2addr v2, v9

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5914
    iget-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iput-wide v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->L:J

    .line 5915
    array-length v1, v4

    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    goto :goto_0

    :cond_4
    const-string v1, "usb_writeConnConstant.connFileOutputStream == null"

    .line 5917
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 5924
    :goto_0
    :try_start_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    .line 5920
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "usb_write== fail catch exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5921
    iput v7, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 5922
    sput-object v8, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 5924
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    .line 5989
    :catch_2
    :goto_2
    iget-object p0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    .line 5924
    :goto_3
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    .line 5989
    iget-object p0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method static synthetic k(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)J
    .locals 2

    .line 79
    iget-wide v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->N:J

    return-wide v0
.end method


# virtual methods
.method public Read([BII)I
    .locals 5

    const-string v0, "wifi_read==finally end len:"

    const-string v1, "usb_read==finally end len:"

    .line 688
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x1

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    if-eq v2, v1, :cond_0

    goto/16 :goto_5

    .line 711
    :cond_0
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    if-eqz v1, :cond_1

    .line 712
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 714
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "wifi_read==in checkDataCount:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 715
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 716
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 717
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->N:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 726
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 727
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    const/4 p1, -0x1

    .line 719
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->closeWifiButton()V

    .line 720
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "wifi_read==fail catch exception:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x0

    .line 722
    :try_start_3
    sput-object p1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    .line 723
    sput-object p1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 726
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 727
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    :catchall_1
    move-exception p2

    move v4, p1

    .line 726
    :goto_1
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 727
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-wide/16 p1, 0x0

    .line 730
    iput-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->N:J

    const-string p1, "wifi_read== ConnConstant.wifiInputStream == null"

    .line 731
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 690
    :cond_2
    sget-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileInputStream:Ljava/io/FileInputStream;

    if-eqz v0, :cond_3

    .line 691
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 693
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "usb_read==in checkDataCount:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 694
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 695
    sget-object v0, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 696
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->N:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 702
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 703
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :goto_2
    move v4, p1

    goto :goto_5

    :catch_2
    move-exception p2

    goto :goto_3

    :catchall_2
    move-exception p2

    const/4 p1, -0x1

    goto :goto_4

    :catch_3
    move-exception p2

    const/4 p1, -0x1

    .line 698
    :goto_3
    :try_start_6
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "usb_read==fail catch exception:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 702
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 703
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_5

    :catchall_3
    move-exception p2

    .line 702
    :goto_4
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p3}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 703
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    throw p2

    :cond_3
    const-string p1, "usb_read==ConnConstant.connFileInputStream == null"

    .line 706
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :goto_5
    return v4
.end method

.method public StartReceiveData()V
    .locals 2

    const/4 v0, 0x1

    .line 827
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->l:Z

    .line 828
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->E:Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

    if-nez v0, :cond_0

    .line 829
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;-><init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->E:Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

    .line 830
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->E:Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->start()V

    .line 831
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->E:Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$ReceiveUsbDataThread;->setPriority(I)V

    :cond_0
    return-void
.end method

.method public Write([BII)I
    .locals 10

    const-string v0, "usb_write== finally end len:"

    const/4 v1, -0x1

    .line 380
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 381
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v2

    const-string v3, ",buffer.length:"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const/4 p2, 0x1

    if-eq v2, p2, :cond_0

    goto/16 :goto_4

    .line 412
    :cond_0
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 414
    :try_start_0
    sget-object p2, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    array-length p2, p1

    if-lez p2, :cond_1

    .line 415
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "wifi_write== in 2 checkDataCount:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 416
    iput v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 417
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    .line 418
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "wifi_write==(startTime - lastTime):"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    iget-wide v8, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->S:J

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 419
    iget-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    iput-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->S:J

    .line 448
    sget-object p2, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 449
    sget-object p1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 450
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    goto :goto_0

    :cond_1
    const-string p1, "wifi_writeConnConstant.wifiOutputStream == null"

    .line 452
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :goto_0
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto/16 :goto_4

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 455
    :try_start_1
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->closeWifiButton()V

    .line 456
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "wifi_write== fail catch exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 457
    sput-boolean v5, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    .line 458
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 459
    sput-object v4, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    .line 460
    sput-object v4, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 462
    :goto_1
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    .line 384
    :cond_2
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->lock()V

    const-string v2, "usb_write== in 1"

    .line 385
    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 387
    :try_start_2
    sget-object v2, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_3

    .line 388
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "usb_write== in 2 checkDataCount:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 389
    iput v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 390
    sget-object v2, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 391
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    .line 392
    iget-wide v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iput-wide v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    .line 393
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "usb_write==(startTimeWrite - lastTimeWrite):"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iget-wide v7, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->L:J

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 394
    iget-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iput-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->L:J

    .line 395
    iput p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    goto :goto_2

    :cond_3
    const-string p1, "usb_writeConnConstant.connFileOutputStream == null"

    .line 397
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 404
    :goto_2
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_1
    move-exception p1

    .line 400
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "usb_write== fail catch exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 401
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 402
    sput-object v4, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 404
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 405
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    .line 467
    :goto_4
    iget p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    return p1

    .line 404
    :goto_5
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->d:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 405
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    throw p1
.end method

.method public WriteCustomData([BII)I
    .locals 6

    const-string v0, "usb_write_custom== finally end len:"

    const-string v1, "wifi_write_custom== finally end len:"

    const/4 v2, -0x1

    .line 571
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 572
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_6

    const/4 p2, 0x1

    if-eq v3, p2, :cond_0

    goto/16 :goto_8

    .line 608
    :cond_0
    :try_start_0
    sget-object p2, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    array-length p2, p1

    if-lez p2, :cond_1

    .line 609
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "wifi_write_custom== in 2 checkDataCount:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 610
    iput v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 611
    sget-object p2, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 612
    sget-object p1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 613
    iput p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    goto :goto_0

    :cond_1
    const-string p1, "wifi_write_customConnConstant.wifiOutputStream == null"

    .line 615
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 624
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 625
    iget p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    if-eq p1, v2, :cond_2

    .line 627
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_a

    .line 628
    :goto_1
    invoke-interface {p1, v5}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendCustomDataStatus(I)V

    goto/16 :goto_8

    .line 632
    :cond_2
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_a

    .line 633
    :goto_2
    invoke-interface {p1, v2}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendCustomDataStatus(I)V

    goto/16 :goto_8

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 618
    :try_start_1
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->closeWifiButton()V

    .line 619
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "wifi_write_custom== fail catch exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 620
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 621
    sput-object v4, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    .line 622
    sput-object v4, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 624
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 625
    iget p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    if-eq p1, v2, :cond_3

    .line 627
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_a

    goto :goto_1

    .line 632
    :cond_3
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_a

    goto :goto_2

    .line 624
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 625
    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    if-eq p2, v2, :cond_4

    .line 627
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p2, :cond_5

    .line 628
    invoke-interface {p2, v5}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendCustomDataStatus(I)V

    goto :goto_4

    .line 632
    :cond_4
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p2, :cond_5

    .line 633
    invoke-interface {p2, v2}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendCustomDataStatus(I)V

    :cond_5
    :goto_4
    throw p1

    :cond_6
    const-string v1, "usb_write_custom== in 1"

    .line 575
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 577
    :try_start_2
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v1, :cond_7

    .line 578
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "usb_write_custom== in 2 checkDataCount:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 579
    iput v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 580
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 581
    iput p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    goto :goto_5

    :cond_7
    const-string p1, "usb_write_customConnConstant.connFileOutputStream == null"

    .line 583
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 590
    :goto_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 591
    iget p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    if-eq p1, v2, :cond_8

    .line 593
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_a

    .line 594
    :goto_6
    invoke-interface {p1, v5}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendCustomDataStatus(I)V

    goto :goto_8

    .line 598
    :cond_8
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_a

    .line 599
    :goto_7
    invoke-interface {p1, v2}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendCustomDataStatus(I)V

    goto :goto_8

    :catchall_1
    move-exception p1

    goto :goto_9

    :catch_1
    move-exception p1

    .line 586
    :try_start_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "usb_write_custom== fail catch exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 587
    iput v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 588
    sput-object v4, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 590
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 591
    iget p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    if-eq p1, v2, :cond_9

    .line 593
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_a

    goto :goto_6

    .line 598
    :cond_9
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_a

    goto :goto_7

    .line 640
    :cond_a
    :goto_8
    iget p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    return p1

    .line 590
    :goto_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 591
    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    if-eq p2, v2, :cond_b

    .line 593
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p2, :cond_c

    .line 594
    invoke-interface {p2, v5}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendCustomDataStatus(I)V

    goto :goto_a

    .line 598
    :cond_b
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p2, :cond_c

    .line 599
    invoke-interface {p2, v2}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendCustomDataStatus(I)V

    :cond_c
    :goto_a
    throw p1
.end method

.method public WriteScreenData([BII)I
    .locals 10

    const-string v0, "usb_write== finally end len:"

    const/4 v1, -0x1

    .line 478
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 479
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v2

    const-string v3, ",buffer.length:"

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const/4 p2, 0x1

    if-eq v2, p2, :cond_0

    goto/16 :goto_2

    .line 509
    :cond_0
    :try_start_0
    sget-object p2, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    array-length p2, p1

    if-lez p2, :cond_1

    .line 510
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "wifi_write== in 2 checkDataCount:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 511
    iput v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 512
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    .line 513
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "wifi_write==(startTime - lastTime):"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    iget-wide v8, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->S:J

    sub-long/2addr v6, v8

    invoke-virtual {p2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p3, p1

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 514
    iget-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->R:J

    iput-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->S:J

    .line 543
    sget-object p2, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 544
    sget-object p1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 545
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    goto/16 :goto_2

    :cond_1
    const-string p1, "wifi_writeConnConstant.wifiOutputStream == null"

    .line 547
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    :catch_0
    move-exception p1

    .line 550
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->closeWifiButton()V

    .line 551
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "wifi_write== fail catch exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 552
    sput-boolean v5, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    .line 553
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 554
    sput-object v4, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;

    .line 555
    sput-object v4, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    goto/16 :goto_2

    :cond_2
    const-string v2, "usb_write== in 1"

    .line 482
    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 484
    :try_start_1
    sget-object v2, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    if-eqz v2, :cond_3

    .line 485
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "usb_write== in 2 checkDataCount:"

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 486
    iput v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 487
    sget-object v2, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 488
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    .line 489
    iget-wide v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iput-wide v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->M:J

    .line 490
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "usb_write==(startTimeWrite - lastTimeWrite):"

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iget-wide v7, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->L:J

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 491
    iget-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->K:J

    iput-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->L:J

    .line 492
    iput p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    goto :goto_0

    :cond_3
    const-string p1, "usb_writeConnConstant.connFileOutputStream == null"

    .line 494
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 501
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 497
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "usb_write== fail catch exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 498
    iput v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    .line 499
    sput-object v4, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileOutputStream:Ljava/io/FileOutputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 501
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 560
    :goto_2
    iget p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    return p1

    .line 501
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->J:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    throw p1
.end method

.method public changeRotateScreen(I)V
    .locals 3

    .line 1330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x17

    if-lt v0, v2, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1335
    invoke-virtual {p0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendRotateScreenService(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    .line 1339
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v0, :cond_2

    .line 1340
    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->requestSettingCanDrawOverlays()V

    goto :goto_0

    .line 1346
    :cond_1
    invoke-virtual {p0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendRotateScreenService(I)V

    .line 1348
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "changeRotateScreen landMode:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "permission values:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",current android sdk:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1350
    invoke-virtual {p0, p1, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendRotateScreenToCar(II)V

    return-void
.end method

.method public closeConnect()V
    .locals 1

    const-string v0, "ConnectionManager closeConnect()"

    .line 2848
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2849
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->b()V

    const-string v0, "ConnectionManager qdLinkInterConnection start"

    .line 5712
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5713
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    if-eqz v0, :cond_0

    const-string v0, "ConnectionManager qdLinkInterConnection != null"

    .line 5714
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5715
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->closeAccessoryCancel()V

    .line 2851
    :cond_0
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h()V

    return-void
.end method

.method public closeUsbButton()V
    .locals 1

    .line 2693
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->j:Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;

    if-eqz v0, :cond_0

    .line 2694
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/QDLinkInterConnection;->closeAccessory()V

    :cond_0
    return-void
.end method

.method public closeWifiButton()V
    .locals 2

    const-string v0, "closeWifiButton()"

    .line 651
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->onUSBDisconnected()V

    .line 653
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->setLinkMode(I)V

    .line 654
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiSocket()Ljava/net/Socket;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
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

    .line 658
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 661
    :cond_0
    :goto_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->getWifiServerSocket()Ljava/net/ServerSocket;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 663
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

    .line 665
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 672
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    if-eqz v0, :cond_2

    const-string v0, "closeWifiButton context != null"

    .line 673
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 674
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/wificonnection/WifiConnectManager;->setDisConnectedWifi()V

    :cond_2
    return-void
.end method

.method public onUSBConnected()V
    .locals 2

    .line 2631
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    const-string v0, "onUSBConnected \u8fde\u63a5\u9644\u4ef6\u6210\u529f"

    .line 2633
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 2634
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->t:Z

    const-string v0, "==onUSBConnected"

    .line 2635
    invoke-direct {p0, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2637
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->v:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onUSBDisconnected()V
    .locals 4

    const-string v0, "onUSBDisconnected \u65ad\u5f00\u8fde\u63a5\u9644\u4ef6"

    .line 2651
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2653
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    const/4 v0, 0x0

    .line 2654
    sput-boolean v0, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    .line 2655
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sput-wide v1, Lcom/neusoft/interconnection/utils/LinkConfig;->checkSendAppStatus:J

    .line 2656
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->stopsendAppStatusTimer()V

    .line 2657
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2658
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->onDestroy()V

    .line 2659
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    .line 2663
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/utils/LinkConfig;->setUsbLink(Z)V

    .line 2664
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/utils/LinkConfig;->setCurrentLinkMode(I)V

    const-string v1, "DEFULT"

    .line 2665
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    .line 2668
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->stopRotateScreenService()V

    .line 2669
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v1, :cond_1

    const-string v1, "connectManagerCallback != null"

    .line 2670
    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2671
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {v1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendUsbDisConnected()V

    .line 2672
    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    .line 2674
    :cond_1
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->stopWriteHeartBeat()V

    .line 2675
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->stopReadHeartBeat()V

    .line 2676
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->b()V

    .line 2677
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h()V

    .line 2678
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->t:Z

    .line 2679
    iput-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->s:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2683
    :catch_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method public onUSBFail()V
    .locals 1

    const-string v0, "onUSBFail usb\u8fde\u63a5\u5931\u8d25"

    .line 2643
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2644
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v0, :cond_0

    .line 2645
    invoke-interface {v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendConnectFail()V

    :cond_0
    return-void
.end method

.method public parsingNewData([B[B)V
    .locals 11

    .line 1075
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 1077
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setValueByBuffer([B)V

    .line 1078
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getTotalSize()I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    .line 1079
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getMsgType()B

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ar:I

    .line 1080
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getExtendHeaderTotalSize()I

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->at:I

    .line 1081
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getPayloadFormat()B

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->au:I

    .line 1082
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getReservedOne()B

    move-result p1

    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->av:I

    .line 1083
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "parsingNewData() totalSize:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",extendHeaderTotalSize:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->at:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1086
    :try_start_0
    array-length p1, p2

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->at:I

    sub-int/2addr p1, v0

    new-array p1, p1, [B

    .line 1087
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->at:I

    array-length v1, p2

    iget v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->at:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {p2, v0, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1088
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "parsingNewData parsingNewData msgType:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ar:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\ntotalSize:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nextendHeaderTotalSize:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->at:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\npayLoadFormat:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->au:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\nstrData.length():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1091
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "\npayLoad.length:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\ndataBuffer.length:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p2, p1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",reservedOne:"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->av:I

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1089
    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1092
    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ar:I

    const/4 v1, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x5

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p2, :cond_11

    if-eq p2, v6, :cond_e

    const/16 v8, 0x63

    if-eq p2, v8, :cond_d

    const/16 v8, 0xc

    if-eq p2, v8, :cond_c

    const/16 p1, 0xd

    if-eq p2, p1, :cond_0

    goto/16 :goto_a

    .line 1254
    :cond_0
    iget p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->au:I

    if-eq p1, v7, :cond_1

    goto/16 :goto_b

    .line 1257
    :cond_1
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    const-string p2, "AppID"

    invoke-virtual {p1, v0, p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->receiveMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1258
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v8, "parsingNewData appData:"

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v8, 0x473fe05

    if-eq p2, v8, :cond_2

    goto :goto_0

    :cond_2
    const-string p2, "Music"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_4

    goto/16 :goto_b

    .line 1262
    :cond_4
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    const-string p2, "FunctionID"

    invoke-virtual {p1, v0, p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->receiveMessage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1263
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "parsingNewData functionID:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1264
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    sparse-switch p2, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string p2, "PlayControl"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_3

    :sswitch_1
    const-string p2, "PlayControlPause"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x2

    goto :goto_3

    :sswitch_2
    const-string p2, "PlayControlPlay"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :sswitch_3
    const-string p2, "MuteControl"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x5

    goto :goto_3

    :sswitch_4
    const-string p2, "Prev"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x3

    goto :goto_3

    :sswitch_5
    const-string p2, "Next"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 v2, 0x4

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v2, -0x1

    :goto_3
    if-eqz v2, :cond_b

    if-eq v2, v7, :cond_a

    if-eq v2, v6, :cond_9

    if-eq v2, v3, :cond_8

    if-eq v2, v1, :cond_7

    if-eq v2, v4, :cond_6

    goto/16 :goto_b

    .line 1297
    :cond_6
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_1e

    .line 1298
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendMusicMuteContro()V

    goto/16 :goto_b

    .line 1291
    :cond_7
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_1e

    .line 1292
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendMusicNext()V

    goto/16 :goto_a

    .line 1285
    :cond_8
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_1e

    .line 1286
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendMusicPrev()V

    goto/16 :goto_a

    .line 1279
    :cond_9
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_1e

    .line 1280
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendMusicPlayControlPause()V

    goto/16 :goto_a

    .line 1273
    :cond_a
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_1e

    .line 1274
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendMusicPlayControlPlay()V

    goto/16 :goto_a

    .line 1267
    :cond_b
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_1e

    .line 1268
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendMusicPlayControl()V

    goto/16 :goto_a

    :cond_c
    const-string p2, "parsingNewData DataType.speechStatus:12"

    .line 1215
    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1217
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p2, :cond_1d

    .line 1218
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    array-length v0, p1

    invoke-interface {p2, p1, v0}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendSpeechPcmData([BI)V

    goto/16 :goto_b

    .line 1311
    :cond_d
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p2, :cond_1d

    .line 1312
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "DataType.customStatus:99reservedOne :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->av:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1313
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->av:I

    array-length v1, p1

    invoke-interface {p2, v0, p1, v1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendCustomData(I[BI)V

    goto/16 :goto_a

    .line 1224
    :cond_e
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "parsingNewData DataType.KeyEvent:2,payLoadFormat:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->au:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1226
    iget p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->au:I

    if-eqz p2, :cond_f

    goto/16 :goto_b

    .line 1233
    :cond_f
    new-instance p2, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-direct {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;-><init>()V

    iput-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    .line 1234
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {p2, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->setValueByBuffer([B)V

    .line 1236
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "parsingNewData keyEvent x:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getX()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "\n;y"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    .line 1237
    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getY()F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "\n:action:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    .line 1238
    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getAciton()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n,fingerCount:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getFingerCount()B

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1236
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1239
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getFingerCount()B

    move-result p1

    if-ne p1, v7, :cond_10

    .line 1241
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz p1, :cond_1e

    .line 1242
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getAciton()I

    move-result v7

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getX()F

    move-result v8

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getTouchFinger()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->getY()F

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->onTouchApplication(Landroid/view/MotionEvent;)V

    goto/16 :goto_a

    .line 1244
    :cond_10
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getFingerCount()B

    move-result p1

    if-ne p1, v6, :cond_1e

    .line 1246
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz p1, :cond_1e

    .line 1247
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->D:Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->onTouchApplicationMoreFinger(Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;)V

    goto/16 :goto_b

    .line 1095
    :cond_11
    iget p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->au:I

    if-eq p1, v7, :cond_12

    goto/16 :goto_b

    .line 1098
    :cond_12
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->receiveCmdMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1099
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v8, "parsingNewData cmd:"

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1100
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v8, "DISCONNECT_REQ"

    sparse-switch p2, :sswitch_data_1

    goto :goto_4

    :sswitch_6
    :try_start_1
    const-string p2, "GO_IN_LINK_APP"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x4

    goto :goto_5

    :sswitch_7
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x7

    goto :goto_5

    :sswitch_8
    const-string p2, "BT_ADDR"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x6

    goto :goto_5

    :sswitch_9
    const-string p2, "CAR_INFO"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x0

    goto :goto_5

    :sswitch_a
    const-string p2, "KEY_FRAME_REQ"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/16 p1, 0x8

    goto :goto_5

    :sswitch_b
    const-string p2, "LAND_MODE_REQ"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x5

    goto :goto_5

    :sswitch_c
    const-string p2, "VIDEO_SUP_REQ"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x2

    goto :goto_5

    :sswitch_d
    const-string p2, "VIDEO_CTRL"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x3

    goto :goto_5

    :sswitch_e
    const-string p2, "VIDEO_ARGS"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 p1, 0x1

    goto :goto_5

    :cond_13
    :goto_4
    const/4 p1, -0x1

    :goto_5
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_b

    .line 1199
    :pswitch_0
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz p1, :cond_1e

    .line 1200
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->reSendSps()V

    goto/16 :goto_b

    .line 1192
    :pswitch_1
    invoke-static {v8}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1193
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_1e

    .line 1194
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendDisconnect_REQ()V

    goto/16 :goto_a

    .line 1177
    :pswitch_2
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->receiveBluetoothAddrPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;

    move-result-object p1

    .line 1179
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p2, :cond_1e

    if-eqz p1, :cond_1e

    .line 1180
    new-instance p2, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    invoke-direct {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;-><init>()V

    .line 1181
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;->getBluetoothStatus()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->setBtstate(I)V

    .line 1182
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothAddrPara;->getBluetoothAddr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->setBtmac(Ljava/lang/String;)V

    .line 1183
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "bluetoothStatus:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtstate()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",bluetoothAddr:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtmac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1184
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1, p2}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendBTinfoAutoConnected(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;)V

    goto/16 :goto_a

    .line 1170
    :pswitch_3
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->receiveLandModeReqPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeReqPara;

    move-result-object p1

    .line 1171
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeReqPara;->getOrientation()I

    move-result p1

    .line 1172
    invoke-virtual {p0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->changeRotateScreen(I)V

    goto/16 :goto_a

    :pswitch_4
    const-string p1, "parsingNewData sspHome"

    .line 1162
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1164
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_1e

    .line 1165
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    invoke-interface {p1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendSspHome()V

    goto/16 :goto_a

    .line 1140
    :pswitch_5
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->receiveVideoControlPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;

    move-result-object p1

    .line 1141
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;->getPlayStatus()I

    move-result p2

    if-ne p2, v7, :cond_14

    .line 1142
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "parsingNewData videoControlPara.getPlayStatus():"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;->getPlayStatus()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1145
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz p1, :cond_1e

    .line 1146
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    const-string v1, "play"

    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1147
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getWidth()I

    move-result v2

    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1148
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getHeight()I

    move-result v3

    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1149
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getFrameRate()I

    move-result v4

    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1150
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getBitRate()I

    move-result v5

    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1151
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getFrameInterval()I

    move-result v6

    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1152
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getEncodingType()I

    move-result v7

    iget-object v8, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    .line 1154
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result v9

    .line 1146
    invoke-interface/range {v0 .. v9}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->receiveMirrorPlayOrPause(Ljava/lang/String;IIIIIILjava/lang/String;I)V

    goto/16 :goto_a

    .line 1156
    :cond_14
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;->getPlayStatus()I

    move-result p1

    if-nez p1, :cond_1e

    goto/16 :goto_a

    .line 1122
    :pswitch_6
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->receiveVideoSupportReqPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportReqPara;

    move-result-object p1

    .line 1123
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "parsingNewData videoSupportReqPara.getVideoFormat():"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportReqPara;->getVideoFormat()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "LinkConfig.datongflag:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1124
    sget-object p1, Lcom/neusoft/interconnection/utils/LinkConfig;->CurrentLink:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p2

    const v0, 0x2829c1b8

    if-eq p2, v0, :cond_17

    const v0, 0x712dd353

    if-eq p2, v0, :cond_16

    const v0, 0x78cd64aa

    if-eq p2, v0, :cond_15

    goto :goto_6

    :cond_15
    const-string p2, "DTLink"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 v2, 0x2

    goto :goto_7

    :cond_16
    const-string p2, "QDriveLink"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 v2, 0x1

    goto :goto_7

    :cond_17
    const-string p2, "BEIJINGLink"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    goto :goto_7

    :cond_18
    :goto_6
    const/4 v2, -0x1

    :goto_7
    if-eqz v2, :cond_1a

    if-eq v2, v7, :cond_1a

    if-eq v2, v6, :cond_19

    goto/16 :goto_a

    .line 1131
    :cond_19
    sget-boolean p1, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    if-nez p1, :cond_1d

    .line 1132
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g()V

    .line 1133
    sput-boolean v7, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    goto/16 :goto_a

    .line 1127
    :cond_1a
    invoke-direct {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g()V

    .line 1128
    sput-boolean v7, Lcom/neusoft/interconnection/utils/LinkConfig;->datongflag:Z

    goto/16 :goto_b

    .line 1110
    :pswitch_7
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->receiveVideoArgsPara(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1111
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "parsingNewData vedeoArgsPara Width:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nHeight:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1112
    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getHeight()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nBitRate:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1113
    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getBitRate()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nEncodingType:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1114
    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getEncodingType()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nFrameInterval:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1115
    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getFrameInterval()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nFrameRate:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Z:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;

    .line 1116
    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoArgsPara;->getFrameRate()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1111
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1118
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->replySpeedParmsNewProtocol()V

    goto/16 :goto_a

    .line 1103
    :pswitch_8
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->receiveCarInfo(Ljava/lang/String;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;

    move-result-object p1

    .line 3759
    new-instance p2, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 3760
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;-><init>()V

    .line 3761
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v1, :cond_1c

    .line 3763
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarWidth()I

    move-result v1

    if-nez v1, :cond_1b

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarHeight()I

    move-result v1

    if-nez v1, :cond_1b

    .line 3764
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const/16 v3, 0x320

    const/16 v5, 0x1e0

    invoke-virtual {v1, v3, v5}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->calcWidthAndHeight(II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v1

    goto :goto_8

    .line 3766
    :cond_1b
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarWidth()I

    move-result v3

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarHeight()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->calcWidthAndHeight(II)Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;

    move-result-object v1

    .line 3768
    :goto_8
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneWidth1()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneWidth(I)V

    .line 3769
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getPhoneHeight1()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneHeight(I)V

    .line 3772
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcWidth()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorWidth(I)V

    .line 3773
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/bean/CustomWidthAndHeightBean;->getCarCalcHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorHeight(I)V

    .line 3774
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneWidthInApp(I)V

    .line 3775
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneHeightInApp(I)V

    .line 3776
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorWidthInApp(I)V

    .line 3777
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getCarHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorHeightInApp(I)V

    .line 3779
    :cond_1c
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "PassistMobileNum"

    .line 3781
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v5

    invoke-virtual {v5}, Lcom/neusoft/interconnection/utils/LinkConfig;->getPassistMobileNum()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_9

    :catch_0
    move-exception v3

    .line 3783
    :try_start_3
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 3785
    :goto_9
    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneFeature(Ljava/lang/Object;)V

    .line 3787
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneUUID(Ljava/lang/String;)V

    .line 3788
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/utils/LinkConfig;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneName(Ljava/lang/String;)V

    .line 3789
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/ConnConstant;->packageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setVersion(Ljava/lang/String;)V

    .line 3790
    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneBrand(Ljava/lang/String;)V

    .line 3791
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPhoneModel(Ljava/lang/String;)V

    .line 3792
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPlatform(I)V

    .line 3793
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setPlatformVersion(Ljava/lang/String;)V

    .line 3794
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;->getMirrorTypeReq()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/PhoneInfoPara;->setMirrorTypeSupport(I)V

    .line 3796
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object v1

    const-string v3, "PHONE_INFO"

    invoke-virtual {v1, v3, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3797
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sendVersionNewProtocol PhoneInfo strData:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 3798
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {p2, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 3799
    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 3800
    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 3801
    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 3802
    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 3803
    invoke-virtual {p2, v7}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 3805
    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    .line 3824
    new-instance p2, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 3826
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;-><init>()V

    .line 3827
    invoke-virtual {v0, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/UpdateNotifyPara;->setUpdateStatus(I)V

    .line 3828
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object v1

    const-string v3, "UPDATE_NOTIFY"

    invoke-virtual {v1, v3, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 3829
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sendUpGradeNewProtocol UpdateNotify strData:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {p2, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 3831
    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 3832
    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 3833
    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 3834
    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 3835
    invoke-virtual {p2, v7}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 3836
    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object p2

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    .line 1106
    invoke-static {p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->b(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/CarInfoPara;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aa:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1d
    :goto_a
    return-void

    :catch_1
    move-exception p1

    .line 1320
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "parsingNewData exception:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :cond_1e
    :goto_b
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x24ff13 -> :sswitch_5
        0x261653 -> :sswitch_4
        0x352374e4 -> :sswitch_3
        0x5de9fa3d -> :sswitch_2
        0x5f50980d -> :sswitch_1
        0x79bfd769 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x41ca19bf -> :sswitch_e
        -0x41c92831 -> :sswitch_d
        -0x3fd5e0f7 -> :sswitch_c
        0x135fb3b6 -> :sswitch_b
        0x24b1488c -> :sswitch_a
        0x2fae4259 -> :sswitch_9
        0x380ba7be -> :sswitch_8
        0x6808025b -> :sswitch_7
        0x78c2353f -> :sswitch_6
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public receivePayLoad512Data([B)I
    .locals 10

    .line 1023
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->A:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    .line 1025
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Y:[B

    const/16 v1, 0x10

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1028
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->A:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Y:[B

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setValueByBuffer([B)V

    .line 1029
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->A:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getTotalSize()I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "receivePayLoad512Data totalSize:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1031
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    const/4 v3, -0x1

    const/16 v4, 0x200

    if-gt v0, v4, :cond_0

    add-int/lit8 v4, v0, -0x10

    .line 1033
    new-array v4, v4, [B

    sub-int/2addr v0, v1

    .line 1034
    invoke-static {p1, v1, v4, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1036
    invoke-virtual {p0, p1, v4}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->parsingNewData([B[B)V

    goto/16 :goto_1

    :cond_0
    sub-int/2addr v0, v4

    .line 1040
    rem-int/lit16 v5, v0, 0x200

    if-eqz v5, :cond_1

    rsub-int v5, v5, 0x200

    :cond_1
    add-int v4, v0, v5

    .line 1044
    new-array v4, v4, [B

    .line 1045
    iget v6, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    sub-int/2addr v6, v1

    new-array v6, v6, [B

    .line 1046
    array-length v7, v4

    invoke-virtual {p0, v4, v2, v7}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Read([BII)I

    move-result v7

    .line 1047
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "payLoadData len:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",totalSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",lastSize:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ",remain:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",lastBuffer.length:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v4

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",payLoad.length:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v6

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    if-eq v7, v3, :cond_2

    const/16 v3, 0x1f0

    .line 1054
    :try_start_0
    invoke-static {p1, v1, v6, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1055
    invoke-static {v4, v2, v6, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1056
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Y:[B

    invoke-virtual {p0, p1, v6}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->parsingNewData([B[B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "receivePayLoad512Data() exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :cond_2
    :goto_0
    move v3, v7

    :goto_1
    return v3
.end method

.method public receivePayLoadData([B)I
    .locals 4

    .line 1001
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 1003
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setValueByBuffer([B)V

    .line 1004
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getTotalSize()I

    move-result v0

    iput v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    .line 1005
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->as:I

    add-int/lit8 v1, v0, -0x10

    new-array v1, v1, [B

    add-int/lit8 v0, v0, -0x10

    const/4 v2, 0x0

    .line 1006
    invoke-virtual {p0, v1, v2, v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Read([BII)I

    move-result v0

    .line 1007
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "payLoadData len:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 1010
    invoke-virtual {p0, p1, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->parsingNewData([B[B)V

    :cond_0
    return v0
.end method

.method public replyScreenCaptureSupport(Z)V
    .locals 5

    .line 2119
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aa:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    if-eqz v0, :cond_0

    .line 2120
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendIsLegal() ConnectionManager carFactoryId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aa:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarFactory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",carTypeId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aa:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",huId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aa:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getHuFactory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2121
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aa:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;

    invoke-interface {v0, v1}, Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;->sendIsLegal(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;)V

    .line 2124
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "replyScreenCaptureSupport protocolType :::::"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2125
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x191258

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "5A5A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x0

    :cond_2
    :goto_0
    const/4 v0, 0x1

    if-eqz v1, :cond_6

    .line 2161
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->G:Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v0, 0x2

    .line 2162
    :goto_1
    iput v0, v1, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->ret:I

    .line 2163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mirrorSupport receive=== mirrorSupport.ret:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->G:Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/message/MirrorSupport;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2164
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$4;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$4;-><init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2174
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    const-string v0, "car send data mirrorSupport == null"

    .line 2176
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2177
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "old 222 replyScreenCaptureSupport() flag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    if-nez p1, :cond_5

    .line 2180
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->onUSBDisconnected()V

    :cond_5
    return-void

    .line 2128
    :cond_6
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportRspPara;

    invoke-direct {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportRspPara;-><init>()V

    const/4 v2, 0x3

    .line 2129
    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportRspPara;->setVideoFormat(I)V

    .line 2131
    invoke-virtual {v1, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportRspPara;->setVideoSupport(I)V

    .line 2132
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object v2

    const-string v3, "VIDEO_SUP_RSP"

    invoke-virtual {v2, v3, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ak:Ljava/lang/String;

    .line 2133
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "replyScreenCaptureSupport videoSupportRsp strData:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ak:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2134
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aj:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ak:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x10

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2135
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aj:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {v1, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2136
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aj:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {v1, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2137
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aj:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {v1, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2138
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aj:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {v1, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 2139
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aj:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2140
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;-><init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2150
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public replySpeedParms()V
    .locals 3

    .line 2059
    :try_start_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/DataFormatManager;->getInstance()Lcom/neusoft/interconnection/utils/DataFormatManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/utils/DataFormatManager;->replySpeedParms()[B

    move-result-object v0

    const/4 v1, 0x0

    .line 2060
    array-length v2, v0

    invoke-virtual {p0, v0, v1, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2062
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "==Exception e:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public replySpeedParmsNewProtocol()V
    .locals 6

    .line 2071
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 2072
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;

    invoke-direct {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;-><init>()V

    const/4 v2, 0x1

    .line 2073
    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->setEncodingType(I)V

    const/16 v3, 0x3e80

    .line 2074
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->setSampleRate(I)V

    .line 2075
    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->setChannelConfig(I)V

    const/16 v3, 0x10

    .line 2076
    invoke-virtual {v1, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechArgsPara;->setAudioFormat(I)V

    .line 2077
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object v4

    const-string v5, "SPEECH_ARGS"

    invoke-virtual {v4, v5, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2078
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sendVersionNewProtocol SpeechArgs strData:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2079
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v4, v3

    invoke-virtual {v0, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    const/4 v3, 0x0

    .line 2080
    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2081
    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2082
    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2083
    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 2084
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2085
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    return-void
.end method

.method public returnPacketHeader([B)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 811
    :try_start_0
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    .line 812
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    .line 813
    aget-byte v2, p1, v1

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    .line 814
    aget-byte p1, p1, v1

    aput-byte p1, v0, v1

    .line 815
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 817
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "returnPacketHeader Exception == e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public sendAppStatusTimer(J)V
    .locals 2

    .line 252
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 254
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 257
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 258
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :catch_0
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    .line 263
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$1;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$1;-><init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimerTask:Ljava/util/TimerTask;

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public sendCustomData(B[BI)V
    .locals 3

    .line 2291
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2293
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendCustomData buffer.length:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",\u5b9e\u9645\u6570\u5927\u5c0fsize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",send dataType:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2294
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    array-length v0, p2

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p3, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2295
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2296
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/16 v1, 0x63

    invoke-virtual {p3, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2297
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p3, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2298
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p3, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 2299
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2300
    iget-object p3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p3, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setReservedOne(B)V

    .line 2301
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->am:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object p1

    .line 5029
    invoke-static {}, Lcom/neusoft/interconnection/utils/LinkConfig;->getInstance()Lcom/neusoft/interconnection/utils/LinkConfig;

    move-result-object p3

    invoke-virtual {p3}, Lcom/neusoft/interconnection/utils/LinkConfig;->getLinkMode()I

    move-result p3

    if-eqz p3, :cond_1

    if-eq p3, v1, :cond_0

    goto :goto_0

    .line 5044
    :cond_0
    array-length p3, p1

    array-length v1, p2

    add-int/2addr p3, v1

    .line 5045
    new-array v1, p3, [B

    .line 5046
    array-length v2, p1

    invoke-static {p1, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5047
    array-length p1, p1

    array-length v2, p2

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5048
    invoke-virtual {p0, v1, v0, p3}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->WriteCustomData([BII)I

    goto :goto_0

    .line 5032
    :cond_1
    array-length p3, p1

    array-length v1, p2

    add-int/2addr p3, v1

    .line 5033
    rem-int/lit16 v1, p3, 0x200

    if-eqz v1, :cond_2

    rsub-int v1, v1, 0x200

    :cond_2
    add-int/2addr p3, v1

    .line 5037
    new-array p3, p3, [B

    .line 5038
    array-length v1, p1

    invoke-static {p1, v0, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5039
    array-length p1, p1

    array-length v1, p2

    invoke-static {p2, v0, p3, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5040
    array-length p1, p3

    invoke-virtual {p0, p3, v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->WriteCustomData([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2304
    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public sendLegalAppOn(I)V
    .locals 3

    .line 2464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendLegalAppOn state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2465
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    if-nez v0, :cond_0

    .line 2466
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    .line 2468
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aq:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/WhitelistAppOnPara;

    if-nez v0, :cond_1

    .line 2469
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/WhitelistAppOnPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/WhitelistAppOnPara;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aq:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/WhitelistAppOnPara;

    .line 2471
    :cond_1
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aq:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/WhitelistAppOnPara;

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/WhitelistAppOnPara;->setWhitelistAppOn(I)V

    .line 2473
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aq:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/WhitelistAppOnPara;

    const-string v1, "Mirror"

    const-string v2, "WhitelistAppOn"

    invoke-virtual {p1, v1, v2, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyAppDataMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->c:Ljava/lang/String;

    .line 2474
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendLegalAppOn WhitelistAppOnPara strData:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2475
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2476
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2477
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2478
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2479
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 2480
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ap:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2482
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$6;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$6;-><init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2487
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public sendRotateScreenService(I)V
    .locals 3

    .line 1397
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x1

    const-string v2, "orientation"

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1406
    :cond_0
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ao:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "ScreenOn"

    .line 1407
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1408
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1409
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void

    .line 1400
    :cond_1
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ao:Ljava/lang/String;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "Landscape"

    .line 1401
    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1402
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1403
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public sendRotateScreenToCar(II)V
    .locals 4

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendRotateScreenToCar protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",landMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",permissionValues:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1363
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x191258

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5A5A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 1385
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ag:Lcom/neusoft/interconnection/linkconnection/message/LandMode;

    invoke-virtual {v0, p1, p2}, Lcom/neusoft/interconnection/linkconnection/message/LandMode;->setCallback(II)V

    .line 1386
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ag:Lcom/neusoft/interconnection/linkconnection/message/LandMode;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/message/LandMode;->getBuffer()[B

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ag:Lcom/neusoft/interconnection/linkconnection/message/LandMode;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/message/LandMode;->getBuffer()[B

    move-result-object p2

    array-length p2, p2

    invoke-virtual {p0, p1, v2, p2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I

    return-void

    .line 1366
    :cond_2
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    if-nez v0, :cond_3

    .line 1367
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    .line 1369
    :cond_3
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ab:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;

    if-nez v0, :cond_4

    .line 1370
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ab:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;

    .line 1372
    :cond_4
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ab:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;->setOrientation(I)V

    .line 1373
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ab:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;

    invoke-virtual {p1, p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;->setAuthority(I)V

    .line 1374
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ab:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;

    const-string v0, "LAND_MODE_RSP"

    invoke-virtual {p1, v0, p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1375
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p2, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 1376
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 1377
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 1378
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 1379
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p2, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 1380
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 1381
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ac:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    return-void
.end method

.method public sendSpeechStatusControlStart()V
    .locals 6

    .line 2224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendSpeechStatusControlStart() protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2225
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x191258

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5A5A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2242
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->y:Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;

    if-eqz v0, :cond_2

    .line 2243
    iput v1, v0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->value:I

    .line 2244
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->getBuffer()[B

    move-result-object v0

    .line 2245
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I

    :cond_2
    return-void

    .line 2228
    :cond_3
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 2229
    new-instance v3, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;

    invoke-direct {v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;-><init>()V

    iput-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->al:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;

    .line 2231
    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->al:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;

    invoke-virtual {v3, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;->setSpeechStatus(I)V

    .line 2232
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object v3

    iget-object v4, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->al:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;

    const-string v5, "SPEECH_CTRL"

    invoke-virtual {v3, v5, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2233
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/lit8 v4, v4, 0x10

    invoke-virtual {v0, v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2234
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2235
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2236
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2237
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 2238
    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2239
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    return-void
.end method

.method public sendSpeechStatusControlStop()V
    .locals 5

    .line 2256
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendSpeechStatusControlStop() protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2257
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x191258

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5A5A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_3

    .line 2274
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->y:Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;

    if-eqz v0, :cond_2

    .line 2275
    iput v2, v0, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->value:I

    .line 2276
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/SpeechStatus;->getBuffer()[B

    move-result-object v0

    .line 2277
    array-length v1, v0

    invoke-virtual {p0, v0, v2, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I

    :cond_2
    return-void

    .line 2260
    :cond_3
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 2261
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;

    invoke-direct {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;-><init>()V

    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->al:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;

    .line 2263
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->al:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;

    invoke-virtual {v1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;->setSpeechStatus(I)V

    .line 2264
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object v1

    iget-object v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->al:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/SpeechControlPara;

    const-string v4, "SPEECH_CTRL"

    invoke-virtual {v1, v4, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2265
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x10

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2266
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2267
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2268
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2269
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    const/4 v2, 0x1

    .line 2270
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2271
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    return-void
.end method

.method public sendToCarAppBackground()V
    .locals 5

    .line 2314
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendToCarAppBackground () protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2315
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x191258

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5A5A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2331
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ah:Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ah:Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->getBuffer()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I

    return-void

    .line 2318
    :cond_2
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 2319
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "CAR_APP_BACKGROUND"

    invoke-virtual {v1, v4, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2320
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendToCarAppBackground REPLY_CAR_APP_BACKGROUND strData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2321
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x10

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2322
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2323
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2324
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2325
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    const/4 v2, 0x1

    .line 2326
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2327
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    return-void
.end method

.method public sendToCarAppForeground()V
    .locals 5

    .line 2340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendToCarAppBackground () protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2341
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x191258

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5A5A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 2357
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ah:Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->getBuffer()[B

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ah:Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/message/PhoneClickMirrOff;->getBuffer()[B

    move-result-object v1

    array-length v1, v1

    invoke-virtual {p0, v0, v2, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I

    return-void

    .line 2344
    :cond_2
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 2345
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "CAR_APP_FOREGROUND"

    invoke-virtual {v1, v4, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 2346
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sendToCarAppBackground REPLY_CAR_APP_BACKGROUND strData:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2347
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, 0x10

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2348
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2349
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2350
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2351
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    const/4 v2, 0x1

    .line 2352
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2353
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    return-void
.end method

.method public sendToCarAppMessageData([B)V
    .locals 2

    .line 2432
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2433
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->an:Lcom/neusoft/interconnection/linkconnection/message/AppMessage;

    if-nez v0, :cond_0

    .line 2434
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->an:Lcom/neusoft/interconnection/linkconnection/message/AppMessage;

    .line 2436
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->an:Lcom/neusoft/interconnection/linkconnection/message/AppMessage;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/neusoft/interconnection/linkconnection/message/AppMessage;->sendAppMessage([BI)[B

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2438
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->Write([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2443
    :catch_0
    :cond_1
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->e:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public sendToCarBTAutoConnectedStatus(I)V
    .locals 4

    .line 2368
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendToCarBTAutoConnectedStatus(int status):"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2369
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x191258

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5A5A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 2372
    :cond_2
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothStatusPara;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothStatusPara;-><init>()V

    .line 2373
    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BluetoothStatusPara;->setResult(I)V

    .line 2374
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    const-string v1, "BT_RESULT"

    invoke-virtual {p1, v1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->b:Ljava/lang/String;

    .line 2375
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendToCarBTAutoConnectedStatus REPLY_BT_STATUS strDataBt:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2376
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2377
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2378
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2379
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2380
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {p1, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    .line 2381
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2382
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$5;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$5;-><init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 2387
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :goto_2
    return-void
.end method

.method public sendToCarWifiDisconnectRSP(I)V
    .locals 4

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendToCarWifiDisconnectRSP(int canDisconnect):"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2402
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, 0x191258

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "5A5A"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 2404
    :cond_2
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-direct {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;-><init>()V

    .line 2405
    new-instance v1, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/DisconnectRSPPara;

    invoke-direct {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/DisconnectRSPPara;-><init>()V

    .line 2406
    invoke-virtual {v1, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/DisconnectRSPPara;->setCanDisconnect(I)V

    .line 2407
    invoke-static {}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->getInstance()Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;

    move-result-object p1

    const-string v3, "DISCONNECT_RSP"

    invoke-virtual {p1, v3, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/FormatJson;->replyCarMessage(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 2408
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "sendToCarWifiDisconnectRSP REPLY_DISCONNECT_RSP strData:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2409
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setTotalSize(I)V

    .line 2410
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setExtendHeaderTotalSize(S)V

    .line 2411
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setMsgType(B)V

    .line 2412
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setSource(B)V

    .line 2413
    invoke-virtual {v0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setDestination(B)V

    const/4 v1, 0x1

    .line 2414
    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->setPayloadFormat(B)V

    .line 2415
    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([B[B)V

    :goto_2
    return-void
.end method

.method public setConnectManagerCallback(Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->n:Lcom/neusoft/interconnection/linkconnection/conninterface/ConnectManagerCallback;

    return-void
.end method

.method public setMyBinder(Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 234
    :try_start_0
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->F:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    const/4 p1, 0x1

    .line 235
    iput-boolean p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->s:Z

    const-string p1, "==setMyBinder"

    .line 236
    invoke-direct {p0, p1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->u:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1
.end method

.method public setRoateAction(Ljava/lang/String;)V
    .locals 0

    .line 2450
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ao:Ljava/lang/String;

    return-void
.end method

.method public startReadHeartBeat()V
    .locals 7

    .line 2783
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2784
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2785
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2786
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    .line 2788
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aC:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 2789
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aC:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2790
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aC:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2793
    :catch_0
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    .line 2794
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$8;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$8;-><init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aC:Ljava/util/TimerTask;

    .line 2821
    :try_start_1
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aC:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x1388

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public startWriteHeartBeat()V
    .locals 7

    .line 2731
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2733
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2734
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    .line 2736
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aA:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 2737
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aA:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2738
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aA:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2741
    :catch_0
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    .line 2743
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$7;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$7;-><init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aA:Ljava/util/TimerTask;

    .line 2755
    :try_start_1
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aA:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0xbb8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

.method public stopReadHeartBeat()V
    .locals 2

    const-string v0, "stopReadHeartBeat() stopRead"

    .line 2830
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2832
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2833
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2834
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2835
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aB:Ljava/util/Timer;

    .line 2837
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aC:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 2838
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aC:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2839
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aC:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public stopRotateScreenService()V
    .locals 2

    .line 1418
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1419
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->ao:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1420
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1421
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->i:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public stopWriteHeartBeat()V
    .locals 2

    const-string v0, "stopWriteHeartBeat() stopWrite"

    .line 2764
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2766
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2767
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2768
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2769
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->az:Ljava/util/Timer;

    .line 2771
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aA:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 2772
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aA:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2773
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->aA:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public stopsendAppStatusTimer()V
    .locals 2

    .line 289
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 291
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 292
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimer:Ljava/util/Timer;

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 295
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimerTask:Ljava/util/TimerTask;

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 296
    iput-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->sendAppStatusTimerTask:Ljava/util/TimerTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public usbReadData([BII)I
    .locals 4

    const-string v0, "usb_read==finally end len:"

    .line 748
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileInputStream:Ljava/io/FileInputStream;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 749
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 751
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "usb_read==checkDataCount:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 752
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 753
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileInputStream:Ljava/io/FileInputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/FileInputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 754
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->N:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 760
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 761
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    move v2, p1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    const/4 p1, -0x1

    .line 756
    :goto_0
    :try_start_2
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "usb_read==exception:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x0

    .line 758
    :try_start_3
    sput-object p1, Lcom/neusoft/interconnection/utils/ConnConstant;->connFileInputStream:Ljava/io/FileInputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 760
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 761
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p2

    move v2, p1

    .line 760
    :goto_1
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 761
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-string p1, "usb_read==ConnConstant.connFileInputStream == null"

    .line 764
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method public wifiReadData([BII)I
    .locals 4

    const-string v0, "wifi_read==finally end len:"

    .line 778
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    .line 779
    iget-object v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 781
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "wifi_read==checkDataCount:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 782
    iput v3, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->h:I

    .line 783
    sget-object v1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 784
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->N:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 792
    iget-object p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 793
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    move v2, p1

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    const/4 p1, -0x1

    .line 786
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->closeWifiButton()V

    .line 787
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "wifi_read==exception:"

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x0

    .line 789
    :try_start_3
    sput-object p1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiInputStream:Ljava/io/InputStream;

    .line 790
    sput-object p1, Lcom/neusoft/interconnection/utils/ConnConstant;->wifiOutputStream:Ljava/io/OutputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 792
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 793
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p2

    move v2, p1

    .line 792
    :goto_1
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->g:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 793
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    throw p2

    :cond_0
    const-wide/16 p1, 0x0

    .line 796
    iput-wide p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->N:J

    const-string p1, "wifi_read==ConnConstant.wifiInputStream == null"

    .line 797
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    :goto_2
    return v2
.end method

.method public writeData([BIIIIIIIII)V
    .locals 13

    move-object v11, p0

    const-string v12, "writeData() screenData end"

    .line 2516
    :try_start_0
    iget-object v0, v11, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 2517
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "writeData() screenData start LinkConfig:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/neusoft/interconnection/utils/LinkConfig;->CurrentLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",LinkConfig.Q_DRIVE_LINK:QDriveLink"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2518
    sget-object v0, Lcom/neusoft/interconnection/utils/LinkConfig;->CurrentLink:Ljava/lang/String;

    const-string v1, "QDriveLink"

    if-ne v0, v1, :cond_3

    .line 2519
    iget-object v0, v11, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->X:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x191258

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "5A5A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 2525
    invoke-direct/range {p0 .. p10}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([BIIIIIIIII)[B

    move-result-object v0

    .line 2526
    array-length v1, v0

    invoke-virtual {p0, v0, v4, v1}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->WriteScreenData([BII)I

    goto :goto_1

    :cond_2
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 2522
    invoke-direct/range {v1 .. v10}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([BIIIIIIII)V

    goto :goto_1

    :cond_3
    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    .line 2530
    invoke-direct/range {v1 .. v10}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a([BIIIIIIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2535
    :catch_0
    :goto_1
    invoke-static {v12}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2536
    iget-object v0, v11, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    .line 2535
    invoke-static {v12}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2536
    iget-object v1, v11, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
