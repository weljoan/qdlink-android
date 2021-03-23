.class public Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "CustomStatusBar.java"


# instance fields
.field private batteryLevelReceiver:Landroid/content/BroadcastReceiver;

.field private cbv_battery:Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;

.field private levelBattery:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->levelBattery:I

    return p0
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->levelBattery:I

    return p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->cbv_battery:Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;

    return-object p0
.end method

.method private initBattery()V
    .locals 3

    .line 70
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;)V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->batteryLevelReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->getViewContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->batteryLevelReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 58
    sget v0, Lcom/neusoft/qdrivezeusbase/R$layout;->custom_status_bar:I

    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 59
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 60
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->cbv_battery:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->cbv_battery:Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;

    .line 62
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->initBattery()V

    return-void
.end method


# virtual methods
.method public setStyleBlack()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomStatusBar;->cbv_battery:Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomBatteryView;->setStyleBlack()V

    return-void
.end method
