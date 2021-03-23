.class public Lcom/neusoft/qdrivelink/interconnection/AccessSettings;
.super Ljava/lang/Object;
.source "AccessSettings.java"


# instance fields
.field private accessSettingsCallback:Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;

.field public context:Landroid/content/Context;

.field private customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->context:Landroid/content/Context;

    .line 21
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-direct {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->accessSettingsCallback:Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;

    return-object p0
.end method

.method private isNoOption()Z
    .locals 4

    .line 84
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    return v1

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 86
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.settings.USAGE_ACCESS_SETTINGS"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    .line 87
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isNoSwitch()Z
    .locals 7

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 95
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "usagestats"

    .line 96
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 98
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v6, 0x0

    const/16 v2, 0x15

    if-ge v1, v2, :cond_0

    return v6

    :cond_0
    const/4 v1, 0x4

    const-wide/16 v2, 0x0

    .line 99
    invoke-virtual/range {v0 .. v5}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 101
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    return v6
.end method


# virtual methods
.method public checkAndShow()V
    .locals 2

    .line 35
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->isNoOption()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->isNoSwitch()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->accessSettingsCallback:Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 40
    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;->requestUpdateCallback(I)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    const-string v1, "Please open the permission of usage data access"

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    const-string v1, "Yes"

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmText(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    const-string v1, "Cancel"

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setCancelText(Ljava/lang/String;)V

    .line 49
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    new-instance v1, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/interconnection/AccessSettings$1;-><init>(Lcom/neusoft/qdrivelink/interconnection/AccessSettings;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->showCustomDialog()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setAccessSettingsCallback(Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/AccessSettings;->accessSettingsCallback:Lcom/neusoft/qdrivelink/interconnection/AccessSettingsCallback;

    return-void
.end method
