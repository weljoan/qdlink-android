.class public Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;
.super Lcom/neusoft/interconnection/MirrorActivity;
.source "ConnectActivity.java"


# static fields
.field public static final TAG_CONN:Ljava/lang/String; = "conn==wang:"


# instance fields
.field private intent:Landroid/content/Intent;

.field private isPageInitFinish:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/neusoft/interconnection/MirrorActivity;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->isPageInitFinish:Z

    return-void
.end method

.method static synthetic access$002(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->isPageInitFinish:Z

    return p1
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->goToMain()V

    return-void
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->checkPermission()V

    return-void
.end method

.method private checkPermission()V
    .locals 4

    .line 58
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 59
    new-instance v0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$1;-><init>(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;)V

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->arrayPermissions:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;->requestPermission(Landroid/app/Activity;Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;[Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 91
    new-instance v1, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$2;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$2;-><init>(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;)V

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private goToMain()V
    .locals 2

    .line 128
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->isPageInitFinish:Z

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400000

    .line 130
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 129
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroyMirrorActivity()V
    .locals 2

    .line 104
    invoke-super {p0}, Lcom/neusoft/interconnection/MirrorActivity;->destroyMirrorActivity()V

    const-string v0, "conn==wang:"

    const-string v1, "ConnectActivity destroyMirrorActivity()"

    .line 105
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    sget-boolean v0, Lcom/neusoft/qdrivelink/Constants;->isLink:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->finish()V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 48
    invoke-super {p0, p1, p2, p3}, Lcom/neusoft/interconnection/MirrorActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string v0, "conn==wang:"

    const-string v1, "ConnectActivity onActivityResult()"

    .line 49
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->mirrorOnActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Lcom/neusoft/interconnection/MirrorActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "conn==wang:"

    const-string v0, "ConnectActivity onCreate()"

    .line 30
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 31
    sput-boolean p1, Lcom/neusoft/qdrivelink/Constants;->isLink:Z

    .line 32
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->checkPermission()V

    .line 34
    :try_start_0
    sget p1, Lcom/neusoft/qdrivelink/Constants;->notificationId:I

    sget-object v0, Lcom/neusoft/qdrivelink/Constants;->CHANNEL_ONE_ID:Ljava/lang/String;

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->CHANNEL_ONE_NAME:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->setNotificationId(ILjava/lang/String;Ljava/lang/String;)V

    .line 35
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->intent:Landroid/content/Intent;

    .line 37
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p1, v0, :cond_0

    .line 38
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->intent:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/neusoft/interconnection/MirrorActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 121
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public resumeMirrorActivity()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/neusoft/interconnection/MirrorActivity;->resumeMirrorActivity()V

    const-string v0, "conn==wang:"

    const-string v1, "ConnectActivity resumeMirrorActivity()"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->goToMain()V

    return-void
.end method
