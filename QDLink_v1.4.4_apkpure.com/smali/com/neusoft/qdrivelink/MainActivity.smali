.class public Lcom/neusoft/qdrivelink/MainActivity;
.super Lcom/neusoft/qdrivezeusbase/view/BaseActivity;
.source "MainActivity.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/listener/LanguageChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final ACTION_UPDATE_UI:Ljava/lang/String; = "com.neusoft.qdrive.updateUI.ACTION"

.field public static cl_parent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public static customLoadingDialog:Lcom/neusoft/qdrivelink/upgrade/CustomPushLinkPackageToCar;

.field public static myHandler:Landroid/os/Handler;


# instance fields
.field private MusicPlayConnService:Landroid/content/ServiceConnection;

.field private accessSettings:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

.field private connPhoneState:Landroid/content/ServiceConnection;

.field private mExitTime:J

.field private final mMainPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

.field private myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

.field private phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

.field private volatile resetMainViewTimeFlag:J

.field public updateUIBroadcastReceiver:Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 77
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;-><init>()V

    .line 81
    new-instance v0, Lcom/neusoft/qdrivelink/MainActivity$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/MainActivity$1;-><init>(Lcom/neusoft/qdrivelink/MainActivity;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity;->mMainPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 107
    new-instance v0, Lcom/neusoft/qdrivelink/MainActivity$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/MainActivity$2;-><init>(Lcom/neusoft/qdrivelink/MainActivity;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity;->connPhoneState:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity;->myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    .line 123
    iput-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity;->accessSettings:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    const-wide/16 v0, 0x0

    .line 126
    iput-wide v0, p0, Lcom/neusoft/qdrivelink/MainActivity;->resetMainViewTimeFlag:J

    .line 376
    new-instance v2, Lcom/neusoft/qdrivelink/MainActivity$6;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrivelink/MainActivity$6;-><init>(Lcom/neusoft/qdrivelink/MainActivity;)V

    iput-object v2, p0, Lcom/neusoft/qdrivelink/MainActivity;->MusicPlayConnService:Landroid/content/ServiceConnection;

    .line 392
    iput-wide v0, p0, Lcom/neusoft/qdrivelink/MainActivity;->mExitTime:J

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/MainActivity;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/neusoft/qdrivelink/MainActivity;->phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-object p0
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivelink/MainActivity;Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;)Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity;->phoneBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/MainActivity;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/neusoft/qdrivelink/MainActivity;->mMainPhoneStateListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/MainActivity;Landroid/view/View;)V
    .locals 0

    .line 77
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/MainActivity;->setMainView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivelink/MainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p8}, Lcom/neusoft/qdrivelink/MainActivity;->downloadLinkPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/MainActivity;)Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/neusoft/qdrivelink/MainActivity;->myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/MainActivity;Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivelink/MainActivity;->showUpgradeDialog(Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    return-void
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/MainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 77
    invoke-direct/range {p0 .. p8}, Lcom/neusoft/qdrivelink/MainActivity;->showUpgradeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/MainActivity;)J
    .locals 2

    .line 77
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/MainActivity;->resetMainViewTimeFlag:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/MainActivity;)V
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MainActivity;->clearPage()V

    return-void
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/MainActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MainActivity;->getLayoutParent()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/MainActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MainActivity;->getLayoutParent()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public static checkLinkAppDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;)V
    .locals 10

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "last save factoryName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",save carType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "testwang"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    invoke-static {p0}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->getInstance(Landroid/content/Context;)Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->CheckSaveLocalPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current factoryName carType:path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "linkCar"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "PackageName"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, v1, v2}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 658
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 663
    invoke-static {p0}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->getInstance(Landroid/content/Context;)Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    move-result-object p0

    sget v0, Lcom/neusoft/qdrivelink/Constants;->changeServer:I

    new-instance v1, Lcom/neusoft/qdrivelink/MainActivity$10;

    move-object v2, v1

    move-object v5, p4

    move v6, p3

    move-object v8, p2

    move-object v9, p1

    invoke-direct/range {v2 .. v9}, Lcom/neusoft/qdrivelink/MainActivity$10;-><init>(Ljava/io/File;Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->checkLinkAppOrListVersion(ILjava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 730
    invoke-interface {p4, p0}, Lcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;->checkLinkAppResult(I)V

    :goto_0
    return-void
.end method

.method private downloadLinkPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 596
    new-instance v8, Lcom/neusoft/qdrivelink/MainActivity$9;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p5

    move-object v4, p4

    move-object v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/neusoft/qdrivelink/MainActivity$9;-><init>(Lcom/neusoft/qdrivelink/MainActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    move-object v3, p3

    move-object v5, v8

    invoke-static/range {v0 .. v5}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->postRequestDownloadFileWithJSON(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;)V

    return-void
.end method

.method private initConnectView()V
    .locals 3

    const v0, 0x7f070069

    .line 263
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    sput-object v0, Lcom/neusoft/qdrivelink/MainActivity;->cl_parent:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 265
    invoke-static {p0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v0

    const-class v1, Lcom/neusoft/qdrivelink/MainActivity;

    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/interconnection/ScreenCaptureManager;->startScreenCapture(Ljava/lang/Class;Landroid/view/ViewGroup;)V

    return-void
.end method

.method private initListener()V
    .locals 1

    .line 735
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/neusoft/qdrivelink/MyApplication;->addLanguageChangeListener(Lcom/neusoft/qdrivelink/listener/LanguageChangeListener;)V

    return-void
.end method

.method private initService()V
    .locals 3

    .line 362
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 363
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity;->MusicPlayConnService:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/neusoft/qdrivelink/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 369
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/MainActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 371
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neusoft/qdrivelink/phone/service/PhoneService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 372
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity;->connPhoneState:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Lcom/neusoft/qdrivelink/MainActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private initUpdateUIBroadcastReceiver()V
    .locals 3

    .line 253
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.neusoft.qdrive.updateUI.ACTION"

    .line 254
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    new-instance v1, Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;-><init>(Lcom/neusoft/qdrivelink/MainActivity;Lcom/neusoft/qdrivelink/MainActivity$1;)V

    iput-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity;->updateUIBroadcastReceiver:Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;

    .line 256
    iget-object v1, p0, Lcom/neusoft/qdrivelink/MainActivity;->updateUIBroadcastReceiver:Lcom/neusoft/qdrivelink/MainActivity$UpdateUIBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/neusoft/qdrivelink/MainActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private showUpgradeDialog(Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
    .locals 5

    .line 525
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-direct {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 526
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%1.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setCancelText(Ljava/lang/String;)V

    .line 529
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0d0020

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmText(Ljava/lang/String;)V

    .line 530
    new-instance p1, Lcom/neusoft/qdrivelink/MainActivity$7;

    invoke-direct {p1, p0, v0, p2}, Lcom/neusoft/qdrivelink/MainActivity$7;-><init>(Lcom/neusoft/qdrivelink/MainActivity;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V

    .line 557
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->showCustomDialog()V

    return-void
.end method

.method private showUpgradeDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 565
    new-instance v11, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    move-object v3, p1

    invoke-direct {v11, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 566
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setCancelText(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmText(Ljava/lang/String;)V

    .line 569
    new-instance v12, Lcom/neusoft/qdrivelink/MainActivity$8;

    move-object v0, v12

    move-object v1, p0

    move-object v2, v11

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/neusoft/qdrivelink/MainActivity$8;-><init>(Lcom/neusoft/qdrivelink/MainActivity;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V

    .line 584
    invoke-virtual {v11}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->showCustomDialog()V

    return-void
.end method


# virtual methods
.method public killAppProcess()V
    .locals 4

    .line 509
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 510
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 511
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 512
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 513
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-static {v1}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    .line 516
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x0

    .line 517
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public languageChange(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 741
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/MainActivity;->resetMainView(Landroid/view/View;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 412
    invoke-super {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 413
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "MainAc==wang onActivityResult:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " EVENT_SCREEN_CAPTRURE_ACT_RES:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x7b

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a001c

    .line 136
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/MainActivity;->setContentView(I)V

    const p1, 0x7f0700ca

    .line 137
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/MainActivity;->setMainView(Landroid/view/View;)V

    const p1, 0x7f070069

    .line 138
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/MainActivity;->setMainLayout(Landroid/view/ViewGroup;)V

    .line 139
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/MainActivity;->initConnectView()V

    .line 140
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MainActivity;->addSoftInputListener()V

    .line 141
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/MainActivity;->initService()V

    .line 142
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/MainActivity;->initListener()V

    .line 143
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/MainActivity;->initUpdateUIBroadcastReceiver()V

    .line 145
    new-instance p1, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity;->accessSettings:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    .line 146
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity;->accessSettings:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    new-instance v0, Lcom/neusoft/qdrivelink/MainActivity$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/MainActivity$3;-><init>(Lcom/neusoft/qdrivelink/MainActivity;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->setAccessSettingsCallback(Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;)V

    .line 167
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MainActivity;->accessSettings:Lcom/neusoft/qdrivelink/interconnection/AccessSettings;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->checkAndShow()V

    .line 171
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/neusoft/qdrivelink/MainActivity$4;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/MainActivity$4;-><init>(Lcom/neusoft/qdrivelink/MainActivity;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    sput-object p1, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 317
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->onDestroy()V

    const-string v0, "textwang"

    const-string v1, "qdlinkOnDestroy()"

    .line 326
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MainActivity;->connPhoneState:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/MainActivity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 352
    invoke-static {p0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->stopScreenCapture()V

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 357
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MainActivity;->destroyPage()V

    const/4 v0, 0x0

    .line 358
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 8

    const-string v0, "audio"

    .line 420
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MainActivity onKeyDown keyCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wwwqq"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p1, v1, :cond_2

    const/16 v1, 0x18

    const/4 v5, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    goto/16 :goto_1

    .line 497
    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity onKeyDown keyCode 1010101001010:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-virtual {v0, v5, v3, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v4

    .line 493
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity onKeyDown keyCode 99999999:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {v0, v5, v4, v4}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v4

    .line 424
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity onKeyDown keyCode 11111111:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->isDialogShow()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainActivity onKeyDown keyCode 2222222:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getCurrentView()Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->dismissDialog()V

    return v4

    .line 430
    :cond_3
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->pageBack()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 431
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainActivity onKeyDown keyCode 3333333:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 434
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v5, p0, Lcom/neusoft/qdrivelink/MainActivity;->mExitTime:J

    sub-long/2addr v0, v5

    const-wide/16 v5, 0x7d0

    cmp-long v7, v0, v5

    if-lez v7, :cond_6

    .line 435
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainActivity onKeyDown keyCode 44444444:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getCurrentLinkMode()I

    move-result p2

    if-eq p2, v3, :cond_5

    .line 437
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainActivity onKeyDown keyCode 55555555:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d0096

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MainActivity onKeyDown keyCode 666666666:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0d002e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    .line 444
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/neusoft/qdrivelink/MainActivity;->mExitTime:J

    return v4

    .line 472
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainActivity onKeyDown keyCode 88888888:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    invoke-static {p0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->stopScreenCapture()V

    .line 476
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 477
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/MainActivity;->stopService(Landroid/content/Intent;)Z

    .line 479
    :try_start_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    if-eqz v0, :cond_7

    .line 480
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->stopPlayBackState()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_7
    const/4 v0, 0x0

    .line 485
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 504
    :goto_1
    invoke-super {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 405
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 396
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->onResume()V

    .line 397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 400
    invoke-static {p0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->changeInApp()V

    return-void
.end method

.method protected resetMainView(Landroid/view/View;)V
    .locals 4

    .line 270
    invoke-super {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->resetMainView(Landroid/view/View;)V

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neusoft/qdrivelink/MainActivity;->resetMainViewTimeFlag:J

    .line 272
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showLoadingDialog()V

    .line 273
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 275
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 277
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 278
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    goto :goto_0

    .line 280
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    iput-object v2, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 283
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 284
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MainActivity;->getLayoutParent()Landroid/view/ViewGroup;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivelink/MainActivity$5;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/MainActivity$5;-><init>(Lcom/neusoft/qdrivelink/MainActivity;)V

    const-wide/16 v1, 0x1f40

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
