.class public Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;
.super Landroid/app/Service;
.source "QdriveConnService.java"

# interfaces
.implements Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;


# static fields
.field public static CHANNEL_ONE_ID:Ljava/lang/String; = "com.neusoft.qdrive.notifation.channelid.link"

.field public static CHANNEL_ONE_NAME:Ljava/lang/String; = "Com Neusoft Qdrive Channel One Link"

.field private static final MIN_CLICK_DELAY_TIME:I = 0xfa0

.field private static final TAG:Ljava/lang/String; = "QdriveConnService"

.field private static btConnected:Z = false

.field private static lastClickTime:J = 0x0L

.field public static notificationId:I = 0x7e31


# instance fields
.field public THIRTYSECOND:J

.field public TWENTYSECOND:J

.field public appPackageName:Ljava/lang/String;

.field private autoBtTimer:Ljava/util/Timer;

.field private autoBtTimerTask:Ljava/util/TimerTask;

.field public isFirst:Z

.field private legalFlag:I

.field legalTask:Ljava/util/TimerTask;

.field legalTimer:Ljava/util/Timer;

.field private legalappList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private linkAPKFileMD5:Ljava/lang/String;

.field private linkAPKFileName:Ljava/lang/String;

.field private linkAPKFilePath:Ljava/lang/String;

.field private volatile mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private volatile mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

.field public mLastEventField:Ljava/lang/reflect/Field;

.field manager:Landroid/app/NotificationManager;

.field private parser:Lcom/neusoft/parse/DataParser;

.field private protocolFlag:I

.field private repeatBoundNum:I

.field private sendUpdateFlag:Z

.field private sizeMax:I

.field public start:J

.field updateIntent:Landroid/content/Intent;

.field private updateTimer:Ljava/util/Timer;

.field private updateTimerTask:Ljava/util/TimerTask;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 92
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const-string v0, ""

    .line 117
    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->linkAPKFilePath:Ljava/lang/String;

    .line 118
    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->linkAPKFileName:Ljava/lang/String;

    .line 119
    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->linkAPKFileMD5:Ljava/lang/String;

    const/4 v0, 0x0

    .line 121
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    const/4 v1, 0x0

    .line 178
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimer:Ljava/util/Timer;

    .line 179
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimerTask:Ljava/util/TimerTask;

    .line 293
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateIntent:Landroid/content/Intent;

    const/4 v2, -0x1

    .line 398
    iput v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->protocolFlag:I

    .line 399
    new-instance v3, Lcom/neusoft/parse/DataParser;

    invoke-direct {v3}, Lcom/neusoft/parse/DataParser;-><init>()V

    iput-object v3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    .line 400
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    .line 647
    iput v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalFlag:I

    const/16 v2, 0x14a

    .line 725
    iput v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sizeMax:I

    .line 1065
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTimer:Ljava/util/Timer;

    .line 1066
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTask:Ljava/util/TimerTask;

    const-string v2, "com.neusoft.qdrivelink"

    .line 1170
    iput-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->appPackageName:Ljava/lang/String;

    const-wide/32 v2, 0xf4240

    .line 1240
    iput-wide v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->TWENTYSECOND:J

    .line 1241
    iput-wide v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->THIRTYSECOND:J

    .line 1516
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1519
    iput v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->repeatBoundNum:I

    .line 1521
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    .line 1928
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimer:Ljava/util/Timer;

    .line 1929
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimerTask:Ljava/util/TimerTask;

    return-void
.end method

.method private AppStateTopOrBackground()V
    .locals 7

    .line 1073
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 1074
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1076
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1077
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1079
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTimer:Ljava/util/Timer;

    .line 1080
    new-instance v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$3;-><init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTask:Ljava/util/TimerTask;

    .line 1126
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x3e8

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/Timer;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimer:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimer:Ljava/util/Timer;

    return-object p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/TimerTask;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimerTask:Ljava/util/TimerTask;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static synthetic access$102(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/util/TimerTask;)Ljava/util/TimerTask;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimerTask:Ljava/util/TimerTask;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothAdapter;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->connect(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->repeatBoundNum:I

    return p0
.end method

.method static synthetic access$1302(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;I)I
    .locals 0

    .line 92
    iput p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->repeatBoundNum:I

    return p1
.end method

.method static synthetic access$1308(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I
    .locals 2

    .line 92
    iget v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->repeatBoundNum:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->repeatBoundNum:I

    return v0
.end method

.method static synthetic access$1400(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->createBond()V

    return-void
.end method

.method static synthetic access$1500(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/lang/String;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getConnectBt001(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getBluetoothA2DP()V

    return-void
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/lang/String;
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getTopActivity()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/List;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalFlag:I

    return p0
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p0
.end method

.method static synthetic access$502(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V
    .locals 0

    .line 92
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->checkBtConnected()V

    return-void
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    return-object p0
.end method

.method static synthetic access$702(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;)Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    return-object p1
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I
    .locals 0

    .line 92
    iget p0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->protocolFlag:I

    return p0
.end method

.method static synthetic access$900()Z
    .locals 1

    .line 92
    sget-boolean v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->btConnected:Z

    return v0
.end method

.method static synthetic access$902(Z)Z
    .locals 0

    .line 92
    sput-boolean p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->btConnected:Z

    return p0
.end method

.method private checkBtConnected()V
    .locals 2

    .line 1962
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 1963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Found device:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1965
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->createBond()V

    goto :goto_0

    .line 1967
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->connect(Landroid/bluetooth/BluetoothDevice;)V

    :goto_0
    return-void
.end method

.method private connect(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    const-string v0, "connect"

    .line 1578
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1579
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-nez v1, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 1587
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/bluetooth/BluetoothDevice;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1588
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1589
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 1591
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 1592
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private createBond()V
    .locals 2

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createBond ConnectionLinkManager.getCurrentLinkMode():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getCurrentLinkMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1764
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getCurrentLinkMode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1765
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    :cond_0
    return-void
.end method

.method public static deleteSurplus(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 996
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "in version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QdriveConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 1000
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_0

    const/4 v3, 0x0

    .line 1002
    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string v4, "2.00000."

    .line 1003
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1004
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 1008
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "return version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private getBT()Ljava/lang/String;
    .locals 4

    .line 1464
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "testwang"

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    .line 1466
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Android SDK === "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " < 23"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1469
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 1470
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 1473
    :cond_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getBtAddressViaReflection()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1475
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "bluetooth_address"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 1479
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 1481
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private getBluetoothA2DP()V
    .locals 3

    const-string v0, "getBluetoothA2DP"

    .line 1550
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1551
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    return-void

    .line 1554
    :cond_0
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtmac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 1559
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$4;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$4;-><init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V

    const/4 v2, 0x2

    invoke-virtual {v0, p0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void
.end method

.method private getConnectBt(Ljava/lang/String;)V
    .locals 7

    .line 1858
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    .line 1859
    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    .line 1860
    iget-object v4, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    if-eq v2, v1, :cond_4

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eq v4, v1, :cond_3

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_3

    :cond_3
    :goto_0
    move v1, v4

    goto :goto_3

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v0

    .line 1870
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flag:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",a2dp:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",headset:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",health:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",carBtAddress:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    if-eq v1, v5, :cond_6

    .line 1872
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;

    invoke-direct {v3, p0, p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$7;-><init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_4

    .line 1923
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getConnectBt btConnected flag = -1:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->btConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1924
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->startSendAutoTimer()V

    :goto_4
    return-void
.end method

.method private getConnectBt001(Ljava/lang/String;)V
    .locals 8

    .line 1770
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v0

    .line 1771
    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v2

    .line 1772
    iget-object v4, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroid/bluetooth/BluetoothAdapter;->getProfileConnectionState(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v0, v1, :cond_5

    if-ne v0, v3, :cond_0

    goto :goto_2

    :cond_0
    if-eq v2, v1, :cond_4

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-eq v4, v1, :cond_3

    if-ne v4, v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_3

    :cond_3
    :goto_0
    move v1, v4

    goto :goto_3

    :cond_4
    :goto_1
    move v1, v2

    goto :goto_3

    :cond_5
    :goto_2
    move v1, v0

    .line 1781
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getConnectBt001 flag:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",a2dp:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",headset:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",health:"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    if-eq v1, v5, :cond_6

    .line 1783
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;

    invoke-direct {v3, p0, p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$6;-><init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    goto :goto_4

    .line 1840
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getConnectBt001 btConnected flag == -1:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->btConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    .line 1841
    sget-boolean p1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->btConnected:Z

    if-nez p1, :cond_9

    .line 1842
    iget p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->protocolFlag:I

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-eq p1, v3, :cond_7

    goto :goto_4

    :cond_7
    const-string p1, ""

    .line 1848
    invoke-virtual {p0, v0, p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V

    goto :goto_4

    .line 1844
    :cond_8
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyToCarAutoBTConnectedState(I)V

    :cond_9
    :goto_4
    return-void
.end method

.method public static getForegroundPackage(Landroid/app/usage/UsageStatsManager;)Ljava/lang/String;
    .locals 5

    .line 1314
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x1b7740

    sub-long v2, v0, v2

    .line 1316
    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/app/usage/UsageStatsManager;->queryEvents(JJ)Landroid/app/usage/UsageEvents;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    move-object v1, v0

    .line 1317
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1318
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 1319
    invoke-virtual {p0, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 1320
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 1325
    :cond_1
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 1322
    :cond_2
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private getLegalList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1038
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1039
    sget-object v1, Lcom/neusoft/qdrivelink/MyApplication;->qd_dbUtil:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    const-string v2, "QdriveConnService"

    if-nez v1, :cond_0

    const-string v1, "MyApplication.qd_dbUtil == null"

    .line 1040
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x7f0c0000

    .line 1041
    invoke-static {p0, v1}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->getInstance(Landroid/content/Context;I)Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    move-result-object v1

    sput-object v1, Lcom/neusoft/qdrivelink/MyApplication;->qd_dbUtil:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    .line 1043
    :cond_0
    sget-object v1, Lcom/neusoft/qdrivelink/MyApplication;->qd_dbUtil:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    invoke-virtual {v1, p1, p2, p3}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->getDBInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1045
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->getExtrajson()Ljava/lang/String;

    move-result-object p1

    .line 1046
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "extrajson=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "legalapplist"

    .line 1049
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 1050
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "jsonarray=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 1052
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 1053
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 1056
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "list=="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 1058
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1059
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "JSONException: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getPac()Ljava/lang/String;
    .locals 2

    .line 1174
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1175
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1176
    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->appPackageName:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method private getStringTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 987
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, ""

    goto :goto_0

    .line 990
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getTopActivity()Ljava/lang/String;
    .locals 4

    .line 1188
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getTopAppPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "topPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QdriveConnService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 1190
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1191
    :cond_0
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->isNoOption()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1192
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->isNoSwitch()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1194
    :try_start_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getTopApp()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "usagestats"

    if-nez v0, :cond_1

    .line 1196
    :try_start_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 1197
    invoke-static {v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getForegroundPackage(Landroid/app/usage/UsageStatsManager;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1198
    :cond_1
    iget-object v3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1200
    :cond_2
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 1201
    invoke-static {v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getForegroundPackage(Landroid/app/usage/UsageStatsManager;)Ljava/lang/String;

    move-result-object v0

    .line 1203
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getForegroundPackage() : topPackageName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1205
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    return-object v0
.end method

.method private getTopAppPackageName()Ljava/lang/String;
    .locals 9

    const-string v0, "activity"

    .line 1341
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, ""

    const-string v2, "QdriveConnService"

    if-nez v0, :cond_0

    const-string v0, "ActivityManager == null"

    .line 1343
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1348
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x14

    if-gt v3, v4, :cond_3

    .line 1349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build.VERSION.SDK_INT <= 20:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 1350
    invoke-virtual {v0, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    .line 1351
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "List<RunningTaskInfo> tasks:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 1352
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1353
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1354
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 1357
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "componentName == null"

    .line 1359
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v0, "end return: null"

    .line 1406
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1363
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build.VERSION.SDK_INT > 20"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x2

    .line 1369
    :try_start_0
    const-class v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    const-string v6, "processState"

    .line 1370
    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 1371
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1376
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 1377
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 1381
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "appList is ok"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_5

    .line 1384
    iget v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-ne v7, v8, :cond_5

    .line 1387
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v7, :cond_5

    .line 1394
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_5

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1390
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RunningAppProcessInfo app : appList Exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_6
    move-object v4, v6

    :goto_0
    if-eqz v4, :cond_7

    const-string v0, "currentInfo != null"

    .line 1401
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1402
    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    :cond_7
    return-object v6

    :cond_8
    :goto_1
    const-string v0, "appList is null or empty"

    .line 1378
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catch_1
    move-exception v0

    .line 1373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f02\u5e38\u629b\u51fa Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private initBluetoothParameters()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "initBluetoothParameters()"

    .line 1526
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1527
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 1528
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v0, :cond_0

    const-string v0, "have no bluetooth adapter."

    .line 1529
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void

    .line 1533
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1534
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    goto :goto_0

    .line 1538
    :cond_1
    sget-boolean v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->btConnected:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtstate()I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "getConnectBt    0002"

    .line 1539
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->i(Ljava/lang/String;)V

    .line 1540
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtmac()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getConnectBt(Ljava/lang/String;)V

    goto :goto_0

    .line 1542
    :cond_2
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getBluetoothA2DP()V

    :goto_0
    return-void
.end method

.method private initBluetoothReceiver()V
    .locals 2

    .line 1598
    new-instance v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$5;-><init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1738
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 1739
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.profile.action.PLAYING_STATE_CHANGED"

    .line 1740
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.FOUND"

    .line 1741
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 1742
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1743
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1744
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private isLegal(Ljava/lang/String;)Z
    .locals 5

    const-string v0, "QdriveConnService"

    const/4 v1, 0x0

    .line 1020
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "legal_app_watch"

    .line 1021
    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1022
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "legal_app_watch: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    const/4 p1, 0x0

    .line 1024
    :goto_0
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1025
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "legal_app_watch JSONException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method private isNoOption()Z
    .locals 4

    .line 1215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 1218
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1219
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    .line 1220
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1222
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isNoSwitch()Z
    .locals 9

    .line 1227
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 1230
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1231
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "usagestats"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/usage/UsageStatsManager;

    const/4 v4, 0x4

    const-wide/16 v5, 0x0

    .line 1232
    invoke-virtual/range {v3 .. v8}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1234
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method private registerReceiver()V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->initBluetoothReceiver()V

    :cond_0
    return-void
.end method

.method private startSendAutoTimer()V
    .locals 4

    .line 1932
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1933
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1934
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimer:Ljava/util/Timer;

    .line 1936
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1937
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1938
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimerTask:Ljava/util/TimerTask;

    .line 1940
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimer:Ljava/util/Timer;

    .line 1941
    new-instance v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$8;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$8;-><init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimerTask:Ljava/util/TimerTask;

    .line 1957
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimer:Ljava/util/Timer;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->autoBtTimerTask:Ljava/util/TimerTask;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private stopLegalTimer()V
    .locals 2

    .line 1159
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1160
    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1161
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1162
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTimer:Ljava/util/Timer;

    .line 1164
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 1165
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1166
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalTask:Ljava/util/TimerTask;

    :cond_1
    return-void
.end method


# virtual methods
.method public getBtAddressViaReflection()Ljava/lang/String;
    .locals 5

    .line 1491
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 1492
    new-instance v1, Lnet/vidageek/mirror/dsl/Mirror;

    invoke-direct {v1}, Lnet/vidageek/mirror/dsl/Mirror;-><init>()V

    invoke-virtual {v1, v0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Object;)Lnet/vidageek/mirror/dsl/AccessorsController;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/dsl/AccessorsController;->get()Lnet/vidageek/mirror/get/dsl/GetterHandler;

    move-result-object v0

    const-string v1, "mService"

    invoke-interface {v0, v1}, Lnet/vidageek/mirror/get/dsl/GetterHandler;->field(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "QdriveConnService"

    if-nez v0, :cond_0

    const-string v0, "couldn\'t find bluetoothManagerService"

    .line 1494
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 1498
    :cond_0
    :try_start_0
    new-instance v3, Lnet/vidageek/mirror/dsl/Mirror;

    invoke-direct {v3}, Lnet/vidageek/mirror/dsl/Mirror;-><init>()V

    invoke-virtual {v3, v0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/Object;)Lnet/vidageek/mirror/dsl/AccessorsController;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/dsl/AccessorsController;->invoke()Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;

    move-result-object v0

    const-string v3, "getAddress"

    invoke-interface {v0, v3}, Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;->method(Ljava/lang/String;)Lnet/vidageek/mirror/invoke/dsl/MethodHandler;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/invoke/dsl/MethodHandler;->withoutArgs()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1502
    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 1503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "using reflection to get the BT MAC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    const-string v0, "using reflection to get the BT MAC address: == null "

    .line 1506
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 1510
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SSP_MAIN_API getBtAddressViaReflection exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public getFileByteToCar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 17

    move-object/from16 v8, p0

    const-string v0, "linkssp"

    const-string v9, "linkssp==="

    .line 736
    new-instance v10, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p2

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 737
    invoke-virtual {v8, v12}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyPhoneToCarSendPackageResult(I)V

    .line 738
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v14, 0x2

    if-eqz v1, :cond_5

    .line 741
    :try_start_0
    new-instance v15, Ljava/io/FileInputStream;

    invoke-direct {v15, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 742
    iget v1, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sizeMax:I

    mul-int/lit16 v1, v1, 0x400

    new-array v7, v1, [B

    const/4 v1, 0x0

    .line 746
    :goto_0
    iget v2, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sizeMax:I

    mul-int/lit16 v2, v2, 0x400

    invoke-virtual {v15, v7, v12, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    const-string v3, ",sendUpdateFlag:"

    if-eq v5, v2, :cond_3

    .line 747
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start while time:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v2, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    iget v2, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sizeMax:I

    mul-int/lit16 v2, v2, 0x400

    if-eq v5, v2, :cond_1

    .line 750
    new-array v2, v5, [B

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_0

    .line 752
    aget-byte v6, v7, v4

    aput-byte v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 754
    :cond_0
    invoke-static {v2, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 756
    :cond_1
    invoke-static {v7, v14}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    :goto_2
    move-object v12, v2

    .line 758
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "end while time:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v16, v15

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v14, v1, 0x1

    .line 760
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-boolean v1, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    .line 762
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v3

    long-to-int v4, v3

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v6, p2

    move-object v15, v7

    move-object v7, v12

    invoke-virtual/range {v1 .. v7}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyAppFileToCar(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    move v1, v14

    move-object v7, v15

    move-object/from16 v15, v16

    const/4 v12, 0x0

    const/4 v14, 0x2

    goto/16 :goto_0

    :cond_2
    const/4 v1, 0x2

    .line 764
    invoke-virtual {v8, v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyPhoneToCarSendPackageResult(I)V

    goto :goto_3

    :cond_3
    move-object/from16 v16, v15

    move v14, v1

    .line 768
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loop end:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end downfile time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-boolean v0, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 771
    invoke-virtual {v8, v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyPhoneToCarSendPackageResult(I)V

    .line 773
    :cond_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 782
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v1, 0x0

    .line 783
    iput-boolean v1, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    const/4 v2, 0x2

    .line 784
    invoke-virtual {v8, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyPhoneToCarSendPackageResult(I)V

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 777
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 778
    iput-boolean v1, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    .line 779
    invoke-virtual {v8, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyPhoneToCarSendPackageResult(I)V

    :goto_4
    const/4 v1, 0x1

    return v1

    :cond_5
    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v7, ""

    move-object/from16 v1, p0

    move-object/from16 v3, p3

    move-object/from16 v6, p2

    .line 788
    invoke-virtual/range {v1 .. v7}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyAppFileToCar(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 789
    iput-boolean v1, v8, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    const/4 v1, 0x2

    .line 790
    invoke-virtual {v8, v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyPhoneToCarSendPackageResult(I)V

    const/4 v1, 0x1

    return v1
.end method

.method public getTopApp()Ljava/lang/String;
    .locals 7

    .line 1256
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usagestats"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/usage/UsageStatsManager;

    .line 1257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 1259
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->isFirst:Z

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    .line 1260
    iget-wide v3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->TWENTYSECOND:J

    sub-long v3, v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1262
    iget-wide v3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->THIRTYSECOND:J

    sub-long v3, v5, v3

    invoke-virtual/range {v1 .. v6}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 1266
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 1267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->start:J

    .line 1268
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    .line 1269
    invoke-virtual {v3}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1271
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isFirst="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->isFirst:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mySortedMap cost:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->start:J

    sub-long/2addr v3, v5

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "QdriveConnService"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1272
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1274
    invoke-virtual {v2}, Ljava/util/TreeMap;->navigableKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    .line 1275
    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1276
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1277
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    .line 1278
    iget-object v5, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mLastEventField:Ljava/lang/reflect/Field;

    if-nez v5, :cond_3

    .line 1280
    :try_start_0
    const-class v5, Landroid/app/usage/UsageStats;

    const-string v6, "mLastEvent"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    iput-object v5, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mLastEventField:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    nop

    goto :goto_3

    .line 1285
    :cond_3
    :goto_2
    iget-object v5, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mLastEventField:Ljava/lang/reflect/Field;

    if-eqz v5, :cond_4

    .line 1288
    :try_start_1
    invoke-virtual {v5, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 1293
    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_4
    :goto_3
    if-nez v1, :cond_5

    .line 1301
    invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 1304
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTopApp() topPackageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-object v1
.end method

.method public isCheckClick()Z
    .locals 7

    .line 327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 328
    sget-wide v2, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0xfa0

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    .line 329
    sput-wide v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->lastClickTime:J

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyAppFileToCar(Ljava/lang/String;)V
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->linkAPKFileMD5:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getStringTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {p0, p1, v1, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replySUBAPPPKGMD5ToCar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->linkAPKFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->linkAPKFileName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getFileByteToCar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public notifyAppSendPhoneReady()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notifyAppSendPhoneReady"

    .line 550
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneReady()V

    return-void
.end method

.method public notifyBTinfoAutoConnected(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;)V
    .locals 2

    const/4 v0, 0x0

    .line 385
    iput v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->protocolFlag:I

    if-eqz p1, :cond_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBTinfoAutoConnected(BTInfo btInfo) btState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtstate()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",btMac:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->getBtmac()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QdriveConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    .line 389
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->initBluetoothParameters()V

    :cond_0
    return-void
.end method

.method public notifyChangeInApp()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notifyChangeInApp() change inApp 111"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->isCheckClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x4000000

    .line 348
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 350
    :try_start_0
    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "notifyChangeInApp() change inApp 222"

    .line 356
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public notifyChangeLayout(Ljava/lang/String;)V
    .locals 2

    .line 258
    sput-object p1, Lcom/neusoft/qdrivelink/MyApplication;->carType:Ljava/lang/String;

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyChangeLayout carType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QDriveConn"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    if-eqz p1, :cond_0

    const-string v1, "notifyChangeLayout baseLayoutView != null start"

    .line 262
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyChangeLayout baseLayoutView != null end MyApplication:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public notifyConnectFail()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notifyConnectFail() fail"

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyConnectSuccess(II)V
    .locals 2

    .line 275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyConnectSuccess() success carWidth:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",carHeight:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ",orientation:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "QdriveConnService"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyCustomData(I[BI)V
    .locals 0

    return-void
.end method

.method public notifyDisconnect_REQ()V
    .locals 0

    return-void
.end method

.method public notifyHuMsgData([B)V
    .locals 10

    const-string v0, "QdriveConnService"

    .line 404
    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 405
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyHuMsgDataStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "A6A6"

    .line 406
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 407
    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {v2, p1}, Lcom/neusoft/parse/DataParser;->parse([B)Z

    .line 408
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyHuMsgData "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",AppID:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {v1}, Lcom/neusoft/parse/DataParser;->getAppID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",funcID:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {v1}, Lcom/neusoft/parse/DataParser;->getLogicID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getLogicID()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ssphome"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string p1, "a6a6 ssphome 111"

    .line 414
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->isCheckClick()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 417
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v0, 0x4000000

    .line 418
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8

    .line 420
    :try_start_1
    invoke-static {p0, v1, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 421
    invoke-virtual {p1}, Landroid/app/PendingIntent;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p1

    .line 423
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_5

    :cond_0
    const-string p1, "a6a6 ssphome 222"

    .line 426
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 428
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getLogicID()Ljava/lang/String;

    move-result-object p1

    const-string v2, "HUINFO"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_8

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const-string v5, ""

    if-eqz p1, :cond_5

    .line 430
    :try_start_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getData()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 431
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8

    :try_start_4
    const-string v7, "(sssss)"

    .line 436
    invoke-virtual {v6, p1, v7}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataGetBaseType_x64(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    .line 437
    aget-object v6, p1, v1

    .line 438
    aget-object v4, p1, v4

    .line 439
    aget-object v3, p1, v3

    .line 440
    aget-object v2, p1, v2

    const/4 v7, 0x4

    .line 441
    aget-object p1, p1, v7

    .line 443
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    instance-of v7, v4, Ljava/lang/String;

    if-eqz v7, :cond_2

    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_2

    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_2

    instance-of v7, p1, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 448
    check-cast v6, Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5

    .line 449
    :try_start_5
    check-cast v4, Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 450
    :try_start_6
    check-cast v3, Ljava/lang/String;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    .line 451
    :try_start_7
    check-cast v2, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    .line 452
    :try_start_8
    check-cast p1, Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    move-object v2, v5

    goto :goto_0

    :catch_3
    move-exception p1

    move-object v2, v5

    move-object v3, v2

    goto :goto_0

    :catch_4
    move-exception p1

    move-object v2, v5

    move-object v3, v2

    move-object v4, v3

    goto :goto_0

    :cond_2
    move-object p1, v5

    move-object v2, p1

    move-object v3, v2

    move-object v4, v3

    goto :goto_2

    :catch_5
    move-exception p1

    move-object v2, v5

    move-object v3, v2

    move-object v4, v3

    move-object v6, v4

    .line 455
    :goto_0
    :try_start_9
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object p1, v5

    :goto_1
    move-object v5, v6

    .line 457
    :goto_2
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneInitOk()V

    .line 459
    sget-object v6, Lcom/neusoft/qdrivelink/MyApplication;->qd_dbUtil:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    invoke-virtual {v6, v4, v3, v2}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->getDBInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;

    move-result-object v6

    .line 460
    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->getFac()Ljava/lang/String;

    move-result-object v7

    .line 461
    invoke-virtual {v6}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->getType()Ljava/lang/String;

    move-result-object v6

    .line 462
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "carVersion:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",carFactoryId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",carTypeId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",huTypeId:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",extar:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",factory:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",type:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    .line 465
    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    const/16 v8, 0x105

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v1, v1, v9}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 467
    :cond_3
    invoke-virtual {p0, v6}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyChangeLayout(Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0, v5, v7, v6}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyLinkUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->isLegal(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 471
    iput v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalFlag:I

    .line 472
    invoke-direct {p0, v4, v3, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getLegalList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    .line 473
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    if-eqz p1, :cond_4

    .line 474
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->appPackageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 476
    :cond_4
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->AppStateTopOrBackground()V

    goto/16 :goto_5

    .line 479
    :cond_5
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getLogicID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ASSISTANT-04"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    const-string v0, "s"

    if-eqz p1, :cond_7

    .line 480
    :try_start_a
    iput-boolean v4, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    .line 482
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getData()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 483
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v2

    .line 484
    invoke-virtual {v2, p1, v0}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataGetBaseType_x64(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    .line 485
    aget-object p1, p1, v1

    .line 488
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_6

    .line 489
    move-object v5, p1

    check-cast v5, Ljava/lang/String;

    .line 491
    :cond_6
    invoke-virtual {p0, v5}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyAppFileToCar(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 493
    :cond_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getLogicID()Ljava/lang/String;

    move-result-object p1

    const-string v6, "BTADDRESS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 496
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneBTAddress()V

    goto/16 :goto_5

    .line 497
    :cond_8
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getLogicID()Ljava/lang/String;

    move-result-object p1

    const-string v6, "CARBTADDRESS"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 500
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getData()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 501
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v2

    .line 502
    invoke-virtual {v2, p1, v0}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataGetBaseType_x64(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    .line 503
    aget-object p1, p1, v1

    .line 505
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_b

    .line 506
    check-cast p1, Ljava/lang/String;

    .line 507
    invoke-static {p1, p0}, Lcom/neusoft/qdrivelink/interconnection/utils/CompareBT;->compareBTAddress(Ljava/lang/String;Landroid/content/Context;)Z

    goto :goto_5

    .line 509
    :cond_9
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getLogicID()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BT_AUTO_CONNECTED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 510
    iput v4, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->protocolFlag:I

    .line 512
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->parser:Lcom/neusoft/parse/DataParser;

    invoke-virtual {p1}, Lcom/neusoft/parse/DataParser;->getData()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 513
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_8

    const/4 v6, -0x1

    :try_start_b
    const-string v7, "(iiss)"

    .line 521
    invoke-virtual {v0, p1, v7}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataGetBaseType_x64(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p1

    .line 522
    aget-object v0, p1, v1

    .line 523
    aget-object v1, p1, v4

    .line 524
    aget-object v3, p1, v3

    .line 525
    aget-object p1, p1, v2

    .line 527
    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_a

    instance-of v2, v3, Ljava/lang/String;

    if-eqz v2, :cond_a

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 531
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 532
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 533
    move-object v0, v3

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 534
    :try_start_c
    check-cast p1, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    goto :goto_3

    :cond_a
    move-object v0, v5

    goto :goto_4

    :catch_7
    move-exception p1

    move-object v0, v5

    .line 537
    :goto_3
    :try_start_d
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 539
    :goto_4
    new-instance p1, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    invoke-direct {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    .line 540
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    invoke-virtual {p1, v6}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->setBtstate(I)V

    .line 541
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBtInfo:Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->setBtmac(Ljava/lang/String;)V

    .line 542
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->initBluetoothParameters()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_8

    :catch_8
    :cond_b
    :goto_5
    return-void
.end method

.method public notifyIsLegal(Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;)V
    .locals 5

    .line 652
    sget-object v0, Lcom/neusoft/qdrivelink/MyApplication;->qd_dbUtil:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarFactory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getHuFactory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->getDBInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 656
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->getFac()Ljava/lang/String;

    .line 657
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->getType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 659
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCarInfo carFactoryId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarFactory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",carTypeId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",huId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getHuFactory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QdriveConnService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    .line 660
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v3, "SX11_R2_G"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_1
    const-string v3, "SX11_R2_D"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_2
    const-string v3, "SX11RA_10"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    const-string v3, "SX11RA_8"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_4
    const-string v3, "MC2"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :sswitch_5
    const-string v3, "SV91-D4"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_6
    const-string v3, "T19FL_r"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_7
    const-string v3, "SK83_r"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_8
    const-string v3, "NL-3RC"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v1, 0x8

    :cond_1
    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 670
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->notifyChangeLayout(Ljava/lang/String;)V

    :goto_2
    if-eqz p1, :cond_3

    .line 675
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getLegal_app_watch()I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 676
    iput v4, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalFlag:I

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyIsLegal() legalApp.getLegal_app_watch():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getLegal_app_watch()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",legalApp.getCarFactory():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 678
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarFactory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",legalApp.getCarType():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",legalApp.getHuFactory():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getHuFactory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 677
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarFactory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getCarType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LegalApp;->getHuFactory()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getLegalList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    .line 682
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 683
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->appPackageName:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 685
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyIsLegal():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalappList:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->AppStateTopOrBackground()V

    goto :goto_3

    :cond_3
    const-string p1, "notifyIsLegal() LegalApp == null or legalApp.getLegal_app_watch == 0"

    .line 688
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x76a1c6eb -> :sswitch_8
        -0x6e22a17a -> :sswitch_7
        -0x4d92e14b -> :sswitch_6
        -0x435fd13e -> :sswitch_5
        0x1295c -> :sswitch_4
        0x339c26ed -> :sswitch_3
        0x3fe8b60a -> :sswitch_2
        0x40a6fe9f -> :sswitch_1
        0x40a6fea2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public notifyLinkUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    move-object v7, p0

    move-object v0, p2

    move-object/from16 v1, p3

    .line 820
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "link, notifyLinkUpgrade:factory:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",cartype:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "QdriveConnService"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->FACTORY_NAME:Ljava/lang/String;

    .line 822
    sput-object v1, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    .line 827
    sget-object v0, Lcom/neusoft/qdrivelink/Constants;->FACTORY_NAME:Ljava/lang/String;

    const-string v1, "key_save_factory_name"

    invoke-static {p0, v1, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 828
    sget-object v0, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    const-string v1, "key_save_car_type"

    invoke-static {p0, v1, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Constants.FACTORY_NAME:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->FACTORY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",Constants.CAR_TYPE:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    sget-object v0, Lcom/neusoft/qdrivelink/Constants;->FACTORY_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    invoke-static {p0}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->getInstance(Landroid/content/Context;)Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->CheckSaveLocalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 834
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyLinkUpgrade current factoryName carType:path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "testwang"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 836
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "linkCar"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/neusoft/qdrivelink/Constants;->FACTORY_NAME:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PackageName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 839
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 842
    invoke-static {p0}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->getInstance(Landroid/content/Context;)Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    move-result-object v8

    sget v9, Lcom/neusoft/qdrivelink/Constants;->changeServer:I

    sget-object v10, Lcom/neusoft/qdrivelink/Constants;->FACTORY_NAME:Ljava/lang/String;

    sget-object v11, Lcom/neusoft/qdrivelink/Constants;->CAR_TYPE:Ljava/lang/String;

    new-instance v12, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;

    move-object v0, v12

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$2;-><init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v9, v10, v11, v12}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->checkLinkAppOrListVersion(ILjava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;)V

    goto :goto_0

    :cond_0
    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v0, p0

    move-object v1, p1

    .line 918
    invoke-virtual/range {v0 .. v5}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyLinkUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyMusicMuteContro()V
    .locals 6

    const-string v0, "notifyMusicMuteContro"

    const-string v1, "QdriveConnService"

    .line 627
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "audio"

    .line 628
    invoke-virtual {p0, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 629
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x3

    .line 631
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/media/AudioManager;->isStreamMute(I)Z

    move-result v3

    .line 632
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u8bbe\u7f6e\u624b\u673a \u5f53\u524d muteFlag :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    const/16 v3, 0x64

    .line 634
    invoke-virtual {v2, v0, v3, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    goto :goto_0

    :cond_0
    const/16 v3, -0x64

    .line 636
    invoke-virtual {v2, v0, v3, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public notifyMusicNext()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notifyMusicNext"

    .line 616
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 617
    sput v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    .line 618
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->nextMusic()V

    return-void
.end method

.method public notifyMusicPlayControl()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notifyMusicPlayControl"

    .line 559
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    :try_start_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 562
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playLocalMusic()V

    goto :goto_0

    .line 563
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v0

    if-nez v0, :cond_1

    .line 565
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->pauseMusic()V

    goto :goto_0

    .line 566
    :cond_1
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 568
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->startMusice()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method public notifyMusicPlayControlPause()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notifyMusicPlayControlPause"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    :try_start_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->pauseMusic()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public notifyMusicPlayControlPlay()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notifyMusicPlayControlPlay"

    .line 578
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    :try_start_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 581
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playLocalMusic()V

    goto :goto_0

    .line 583
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->startMusice()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public notifyMusicPrev()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notifyMusicPrev"

    .line 606
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 607
    sput v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    .line 608
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->preMusic()V

    return-void
.end method

.method public notifyPhoneToCarSendPackageResult(I)V
    .locals 2

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyPhoneToCarSendPackageResult    i:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testwang"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 244
    :cond_0
    sget-object p1, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->myHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 245
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const v0, 0x21202

    .line 246
    iput v0, p1, Landroid/os/Message;->what:I

    .line 247
    sget-object v0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 237
    :cond_1
    sget-object p1, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->myHandler:Landroid/os/Handler;

    if-eqz p1, :cond_4

    .line 238
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const v0, 0x21201

    .line 239
    iput v0, p1, Landroid/os/Message;->what:I

    .line 240
    sget-object v0, Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 225
    :cond_2
    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_3

    const-string v0, "case 0 MainActivity.myHandler != null"

    .line 226
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x104

    .line 228
    iput v1, v0, Landroid/os/Message;->what:I

    .line 229
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 230
    sget-object p1, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string p1, "case 0 MainActivity.myHandler == null"

    .line 232
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->startUpdateActivity()V

    :cond_4
    :goto_0
    return-void
.end method

.method public notifySendCustomDataStatus(I)V
    .locals 2

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySendCustomDataStatus(int i) status:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QdriveConnService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifySettingCanDrawOverlays()V
    .locals 0

    return-void
.end method

.method public notifySpeechPcmData([BI)V
    .locals 0

    return-void
.end method

.method public notifyStartConnect()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notifyStartConnect() start"

    .line 270
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public notifyUsbDisconnected()V
    .locals 2

    const-string v0, "QdriveConnService"

    const-string v1, "notify usb disConnected"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->unInitBluetoothReceiver()V

    const/4 v0, -0x1

    .line 299
    iput v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->legalFlag:I

    const/4 v0, 0x0

    .line 300
    iput v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->repeatBoundNum:I

    .line 301
    sput-boolean v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->btConnected:Z

    .line 302
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->stopLegalTimer()V

    const-string v1, ""

    .line 303
    sput-object v1, Lcom/neusoft/qdrivelink/MyApplication;->carType:Ljava/lang/String;

    const/4 v1, 0x1

    .line 304
    sput-boolean v1, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    .line 305
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->sendUpdateFlag:Z

    .line 312
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/ConnectionLinkManager;->disConnectedLink()V

    .line 314
    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 315
    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public notifyUserCancelScreenPermission()V
    .locals 2

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyUserCancelScreenPermission() cancelScreenPermission:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QdriveConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "notifyUserCancelScreenPermission"

    const/4 v1, 0x0

    .line 287
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 289
    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 3

    .line 127
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "QdriveConnService"

    const-string v1, "QdriveConnService onCreate()"

    .line 128
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget v1, Lcom/neusoft/qdrivelink/Constants;->notificationId:I

    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->startForeground(ILandroid/app/Notification;)V

    .line 149
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getUpdateNotificationInterface()Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 150
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getUpdateNotificationInterface()Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;

    move-result-object v1

    invoke-interface {v1}, Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;->updateNotification()V

    .line 152
    :cond_0
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getPac()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->appPackageName:Ljava/lang/String;

    .line 153
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appPackageName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->appPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 174
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "textwang"

    const-string v1, "QDriveConnService onDestroy()"

    .line 175
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    .line 158
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->registerReceiver()V

    const-string v0, "QdriveConnService"

    const-string v1, "QdriveConnService onStartCommand"

    .line 159
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcom/neusoft/interconnection/ConnectionLinkManager;->startConnectionLink(Landroid/content/Context;Lcom/neusoft/interconnection/connectmanager/InterConnectionCallback;)V

    .line 162
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v0

    const-string v1, "com.neusoft.interconnection.service.RotateScreenService.startRotateScreenService"

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->setRotateScreenServiceAction(Ljava/lang/String;)V

    .line 164
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public replyAppFileToCar(ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 809
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 810
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 811
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x2

    aput-object p2, v1, p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x3

    aput-object p2, v1, p3

    const/4 p2, 0x4

    aput-object p5, v1, p2

    const/4 p2, 0x5

    aput-object p6, v1, p2

    const-string p2, "(isiiss)"

    .line 810
    invoke-virtual {v0, p2, v1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataNewBaseType_x64(Ljava/lang/String;[Ljava/lang/Object;)Lcom/neusoft/ssp/protocol/Handle_x64;

    move-result-object p2

    .line 812
    invoke-virtual {v0, p2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getStr_x64(Lcom/neusoft/ssp/protocol/Handle_x64;)Ljava/lang/String;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "QDRIVE_ASSISTANT"

    const-string p3, "ASSISTANT-04"

    .line 813
    invoke-static {v2, p2, p3, p1}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 815
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendData== replyAppFileToCar msg:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "QdriveConnService"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V

    return-void
.end method

.method public replyLegalChange(I)V
    .locals 4

    .line 1145
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 1146
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "i"

    invoke-virtual {v0, p1, v2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataNewBaseType_x64(Ljava/lang/String;[Ljava/lang/Object;)Lcom/neusoft/ssp/protocol/Handle_x64;

    move-result-object p1

    .line 1147
    invoke-virtual {v0, p1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getStr_x64(Lcom/neusoft/ssp/protocol/Handle_x64;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string p1, "QDRIVE_ASSISTANT"

    const-string v1, "LEGAL_APP_ON"

    .line 1148
    invoke-static {v3, p1, v1, v0}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendData== replyLegalChange msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QdriveConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V

    return-void
.end method

.method public replyLegalChangeNew(I)V
    .locals 1

    .line 1134
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyLegalAppOn(I)V

    return-void
.end method

.method public replyLinkUpgrade(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 932
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "carVersion=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--path=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--name=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--version=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--md5=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QdriveConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-direct {p0, p5}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getStringTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 935
    invoke-static {p4}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->deleteSurplus(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 938
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 939
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 940
    invoke-virtual {p1, p4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 942
    iput-object p2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->linkAPKFilePath:Ljava/lang/String;

    .line 943
    iput-object p3, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->linkAPKFileName:Ljava/lang/String;

    .line 944
    iput-object p5, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->linkAPKFileMD5:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 952
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "up=="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyNeedUpgrade(I)V

    return-void
.end method

.method public replyNeedUpgrade(I)V
    .locals 4

    .line 964
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 965
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "i"

    invoke-virtual {v0, p1, v2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataNewBaseType_x64(Ljava/lang/String;[Ljava/lang/Object;)Lcom/neusoft/ssp/protocol/Handle_x64;

    move-result-object p1

    .line 966
    invoke-virtual {v0, p1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getStr_x64(Lcom/neusoft/ssp/protocol/Handle_x64;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v3

    const-string p1, "QDRIVE_ASSISTANT"

    const-string v1, "NEEDUPGRADE"

    .line 968
    invoke-static {v3, p1, v1, v0}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 969
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendData== replyNeedUpgrade msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QdriveConnService"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V

    return-void
.end method

.method public replyPhoneBTAddress()V
    .locals 5

    .line 1446
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->getBT()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "00:00:00:00:00:00"

    .line 1452
    :cond_0
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const-string v0, "s"

    .line 1453
    invoke-virtual {v1, v0, v3}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataNewBaseType_x64(Ljava/lang/String;[Ljava/lang/Object;)Lcom/neusoft/ssp/protocol/Handle_x64;

    move-result-object v0

    .line 1455
    invoke-virtual {v1, v0}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getStr_x64(Lcom/neusoft/ssp/protocol/Handle_x64;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/String;

    aput-object v0, v1, v4

    const-string v0, "QDRIVE_ASSISTANT"

    const-string v2, "BTADDRESS"

    .line 1456
    invoke-static {v4, v0, v2, v1}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1458
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData== replyPhoneBTAddress msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "QdriveConnService"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V

    return-void
.end method

.method public replyPhoneInitOk()V
    .locals 4

    const-string v0, "QDRIVE_ASSISTANT"

    const-string v1, "phoneinitok"

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v2, [Ljava/lang/String;

    .line 978
    invoke-static {v2, v0, v1, v3}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "QdriveConnService"

    .line 980
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendData== replyPhoneInitOk msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 981
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public replyPhoneReady()V
    .locals 5

    const-string v0, "QdriveConnService"

    const-string v1, "QDRIVE_ASSISTANT"

    const-string v2, "phoneready"

    const/4 v3, 0x0

    :try_start_0
    new-array v4, v3, [Ljava/lang/String;

    .line 1437
    invoke-static {v3, v1, v2, v4}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1438
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendData== replyPhoneReady msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1441
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IllegalArgumentException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V
    .locals 3

    .line 1419
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 1420
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p2, "(is)"

    invoke-virtual {v0, p2, v1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataNewBaseType_x64(Ljava/lang/String;[Ljava/lang/Object;)Lcom/neusoft/ssp/protocol/Handle_x64;

    move-result-object p2

    .line 1421
    invoke-virtual {v0, p2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getStr_x64(Lcom/neusoft/ssp/protocol/Handle_x64;)Ljava/lang/String;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "QDRIVE_ASSISTANT"

    const-string v0, "BT_AUTO_CONNECTED"

    .line 1423
    invoke-static {v2, p2, v0, p1}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1425
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sendData== replyPhoneToCarBTAutoConnected msg:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "QdriveConnService"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1426
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V

    return-void
.end method

.method public replySUBAPPPKGMD5ToCar(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 716
    invoke-static {}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getInstance()Lcom/neusoft/ssp/protocol/SSPProtocol;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p2, 0x2

    aput-object p3, v1, p2

    const-string p2, "(sss)"

    .line 717
    invoke-virtual {v0, p2, v1}, Lcom/neusoft/ssp/protocol/SSPProtocol;->sspDataNewBaseType_x64(Ljava/lang/String;[Ljava/lang/Object;)Lcom/neusoft/ssp/protocol/Handle_x64;

    move-result-object p2

    .line 719
    invoke-virtual {v0, p2}, Lcom/neusoft/ssp/protocol/SSPProtocol;->getStr_x64(Lcom/neusoft/ssp/protocol/Handle_x64;)Ljava/lang/String;

    move-result-object p2

    new-array p1, p1, [Ljava/lang/String;

    aput-object p2, p1, v2

    const-string p2, "QDRIVE_ASSISTANT"

    const-string p3, "SUBAPP_PKGMD5"

    .line 720
    invoke-static {v2, p2, p3, p1}, Lcom/neusoft/parse/DataParser;->createData(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 721
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sendData== replySUBAPPPKGMD5ToCar msg:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "QdriveConnService"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyAppMessage([B)V

    return-void
.end method

.method public startUpdateActivity()V
    .locals 7

    .line 182
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimer:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 184
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimer:Ljava/util/Timer;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimerTask:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 187
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 188
    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimerTask:Ljava/util/TimerTask;

    .line 190
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimer:Ljava/util/Timer;

    .line 191
    new-instance v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;-><init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimerTask:Ljava/util/TimerTask;

    .line 212
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->updateTimerTask:Ljava/util/TimerTask;

    const-wide/16 v3, 0x32

    const-wide/16 v5, 0x32

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public unInitBluetoothReceiver()V
    .locals 1

    .line 1753
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1755
    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
