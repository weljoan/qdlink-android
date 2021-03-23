.class public Lcom/neusoft/qdrivelink/SplashActivity;
.super Lcom/neusoft/qdrivezeusbase/view/BaseActivity;
.source "SplashActivity.java"


# static fields
.field private static final timeSplash:I = 0x7d0


# instance fields
.field private timeStartFlag:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;-><init>()V

    const-wide/16 v0, 0x0

    .line 28
    iput-wide v0, p0, Lcom/neusoft/qdrivelink/SplashActivity;->timeStartFlag:J

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/SplashActivity;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/SplashActivity;->timeStartFlag:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/SplashActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/SplashActivity;->goToMain()V

    return-void
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/SplashActivity;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/SplashActivity;->checkPermission()V

    return-void
.end method

.method private checkPermission()V
    .locals 8

    .line 49
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 50
    new-instance v0, Lcom/neusoft/qdrivelink/SplashActivity$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/SplashActivity$1;-><init>(Lcom/neusoft/qdrivelink/SplashActivity;)V

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->arrayPermissions:[Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;->requestPermission(Landroid/app/Activity;Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil$PermissionListener;[Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/MyApplication;->initDR()V

    .line 92
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 93
    new-instance v1, Lcom/neusoft/qdrivelink/SplashActivity$2;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/SplashActivity$2;-><init>(Lcom/neusoft/qdrivelink/SplashActivity;)V

    const-wide/16 v2, 0x7d0

    .line 99
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/neusoft/qdrivelink/SplashActivity;->timeStartFlag:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method private goToMain()V
    .locals 2

    .line 108
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neusoft/qdrivelink/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/SplashActivity;->startActivity(Landroid/content/Intent;)V

    .line 110
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/SplashActivity;->finish()V

    const/high16 v0, 0x10a0000

    const v1, 0x10a0001

    .line 111
    invoke-virtual {p0, v0, v1}, Lcom/neusoft/qdrivelink/SplashActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/SplashActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d5

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 33
    invoke-super {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/SplashActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x400000

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/SplashActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f0a001e

    .line 39
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/SplashActivity;->setContentView(I)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neusoft/qdrivelink/SplashActivity;->timeStartFlag:J

    .line 42
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/SplashActivity;->checkPermission()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    const-string v0, "audio"

    .line 116
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/SplashActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    return v1

    :cond_0
    const/16 v2, 0x52

    if-ne p1, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x18

    const/4 v3, 0x3

    if-eq p1, v2, :cond_3

    const/16 v2, 0x19

    if-eq p1, v2, :cond_2

    .line 132
    invoke-super {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, -0x1

    .line 128
    invoke-virtual {v0, v3, p1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v1

    .line 125
    :cond_3
    invoke-virtual {v0, v3, v1, v1}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v1
.end method
