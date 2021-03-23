.class public Lcom/neusoft/qdrivelink/interconnection/NotificationService;
.super Landroid/app/Service;
.source "NotificationService.java"

# interfaces
.implements Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;


# instance fields
.field manager:Landroid/app/NotificationManager;

.field volatile needUpdate:Z

.field notification:Landroid/app/Notification;

.field rv:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/interconnection/NotificationService;->needUpdate:Z

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 4

    .line 45
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 47
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 48
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->CHANNEL_ONE_ID:Ljava/lang/String;

    sget-object v2, Lcom/neusoft/qdrivelink/Constants;->CHANNEL_ONE_NAME:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    const/4 v1, 0x1

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    const-string v1, "notification"

    .line 52
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivelink/interconnection/NotificationService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/NotificationService;->manager:Landroid/app/NotificationManager;

    .line 53
    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/NotificationService;->manager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 55
    :cond_0
    invoke-static {p0}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->setUpdateNotificationInterface(Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;)V

    .line 56
    sget v0, Lcom/neusoft/qdrivelink/Constants;->notificationId:I

    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/neusoft/qdrivelink/interconnection/NotificationService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "textwang"

    const-string v1, "NotificationService onDestroy()"

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateNotification()V
    .locals 0

    return-void
.end method
