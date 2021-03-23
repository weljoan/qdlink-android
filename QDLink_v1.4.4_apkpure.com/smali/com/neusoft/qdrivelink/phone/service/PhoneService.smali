.class public Lcom/neusoft/qdrivelink/phone/service/PhoneService;
.super Landroid/app/Service;
.source "PhoneService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;,
        Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;,
        Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;,
        Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;
    }
.end annotation


# static fields
.field private static final ACTION_DATE_CHANGED:Ljava/lang/String; = "android.intent.action.DATE_CHANGED"


# instance fields
.field private INTETN_PHONE_STATE:Ljava/lang/String;

.field private NEW_OUTGOING_CALL:Ljava/lang/String;

.field final handler:Landroid/os/Handler;

.field private isoffhook:Z

.field private mDateChangeListener:Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

.field private mDateReceiver1:Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;

.field private mFilter1:Landroid/content/IntentFilter;

.field private mPhoneIdleStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

.field private mPhoneMainStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

.field private mPhoneStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

.field private mReceiver1:Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;

.field private manager:Landroid/telephony/TelephonyManager;

.field private myBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

.field private phoneState:I

.field runnable:Ljava/lang/Runnable;

.field tm:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mPhoneStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 30
    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mPhoneMainStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    .line 32
    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mFilter1:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.NEW_OUTGOING_CALL"

    .line 33
    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->NEW_OUTGOING_CALL:Ljava/lang/String;

    const-string v0, "android.intent.action.PHONE_STATE"

    .line 34
    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->INTETN_PHONE_STATE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->phoneState:I

    .line 36
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->isoffhook:Z

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mPhoneStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-object p0
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mPhoneStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-object p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mPhoneIdleStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mPhoneIdleStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mDateChangeListener:Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    return-object p0
.end method

.method static synthetic access$202(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;)Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mDateChangeListener:Lcom/neusoft/qdrivelink/phone/inter/DateChangeListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)I
    .locals 0

    .line 26
    iget p0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->phoneState:I

    return p0
.end method

.method static synthetic access$302(Lcom/neusoft/qdrivelink/phone/service/PhoneService;I)I
    .locals 0

    .line 26
    iput p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->phoneState:I

    return p1
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mPhoneMainStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-object p0
.end method

.method static synthetic access$402(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;)Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mPhoneMainStateInfoListener:Lcom/neusoft/qdrivelink/phone/inter/PhoneStateInfoListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Ljava/lang/String;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->NEW_OUTGOING_CALL:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->isoffhook:Z

    return p0
.end method

.method static synthetic access$602(Lcom/neusoft/qdrivelink/phone/service/PhoneService;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->isoffhook:Z

    return p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 48
    new-instance p1, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;-><init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->myBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    .line 49
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->myBinder:Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 82
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "phone"

    .line 83
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->manager:Landroid/telephony/TelephonyManager;

    .line 85
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->manager:Landroid/telephony/TelephonyManager;

    new-instance v2, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$MyPhoneStateListener;-><init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 86
    new-instance v1, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;-><init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V

    iput-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mReceiver1:Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;

    .line 87
    new-instance v1, Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->NEW_OUTGOING_CALL:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mFilter1:Landroid/content/IntentFilter;

    .line 88
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mFilter1:Landroid/content/IntentFilter;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->INTETN_PHONE_STATE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mReceiver1:Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mFilter1:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    new-instance v1, Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;-><init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V

    iput-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mDateReceiver1:Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;

    .line 93
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.DATE_CHANGED"

    .line 94
    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mDateReceiver1:Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mFilter1:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->tm:Landroid/telephony/TelephonyManager;

    const-string v0, "ccy"

    const-string v1, "\u6ce8\u518cNEW_OUTGOING_CALL"

    .line 98
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService$1;-><init>(Lcom/neusoft/qdrivelink/phone/service/PhoneService;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->runnable:Ljava/lang/Runnable;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mReceiver1:Lcom/neusoft/qdrivelink/phone/service/PhoneService$PhoneReceiver;

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->mDateReceiver1:Lcom/neusoft/qdrivelink/phone/service/PhoneService$DateReceiver;

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/phone/service/PhoneService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 77
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
