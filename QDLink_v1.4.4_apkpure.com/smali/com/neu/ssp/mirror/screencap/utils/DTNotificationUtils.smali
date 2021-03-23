.class public Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;
.super Ljava/lang/Object;
.source "DTNotificationUtils.java"


# static fields
.field private static a:I

.field private static b:Landroid/app/NotificationManager;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:I

.field private static g:I

.field private static h:I

.field private static i:Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;

.field public static mNotification:Landroid/app/Notification;

.field public static rv:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNotification()Landroid/app/Notification;
    .locals 7

    .line 72
    sget-object v0, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->mNotification:Landroid/app/Notification;

    if-nez v0, :cond_2

    .line 74
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lt v0, v1, :cond_0

    .line 75
    new-instance v0, Landroid/app/NotificationChannel;

    sget-object v4, Lcom/neusoft/interconnection/utils/LinkConfig;->CHANNEL_ONE_ID:Ljava/lang/String;

    sget-object v5, Lcom/neusoft/interconnection/utils/LinkConfig;->CHANNEL_ONE_NAME:Ljava/lang/String;

    const/4 v6, 0x4

    invoke-direct {v0, v4, v5, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 76
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->enableLights(Z)V

    .line 77
    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 78
    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 79
    sget-object v4, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->c:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 80
    sput-object v4, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->b:Landroid/app/NotificationManager;

    invoke-virtual {v4, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 83
    new-instance v4, Landroid/content/ComponentName;

    sget-object v5, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->d:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 85
    sget-object v4, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    new-instance v4, Landroid/widget/RemoteViews;

    sget-object v5, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->c:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->a:I

    invoke-direct {v4, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->rv:Landroid/widget/RemoteViews;

    .line 87
    sget-object v4, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->c:Landroid/content/Context;

    const/high16 v5, 0x8000000

    invoke-static {v4, v3, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 88
    sget-object v4, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->rv:Landroid/widget/RemoteViews;

    sget v5, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->f:I

    invoke-virtual {v4, v5, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 89
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v1, :cond_1

    .line 90
    new-instance v0, Landroid/app/Notification$Builder;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->c:Landroid/content/Context;

    sget-object v4, Lcom/neusoft/interconnection/utils/LinkConfig;->CHANNEL_ONE_ID:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->h:I

    .line 91
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    sget-object v1, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->rv:Landroid/widget/RemoteViews;

    .line 92
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    new-instance v1, Landroid/app/Notification$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroid/app/Notification$DecoratedCustomViewStyle;-><init>()V

    .line 93
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sput-object v0, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->mNotification:Landroid/app/Notification;

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    sget-object v1, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->c:Landroid/content/Context;

    sget-object v4, Lcom/neusoft/interconnection/utils/LinkConfig;->CHANNEL_ONE_ID:Ljava/lang/String;

    invoke-direct {v0, v1, v4}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v1, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->h:I

    .line 102
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    new-instance v1, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;

    invoke-direct {v1}, Landroidx/core/app/NotificationCompat$DecoratedCustomViewStyle;-><init>()V

    .line 103
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 104
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    sget-object v1, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->rv:Landroid/widget/RemoteViews;

    .line 105
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, v3}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, v2}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    sput-object v0, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->mNotification:Landroid/app/Notification;

    .line 112
    :goto_0
    sget-object v0, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->mNotification:Landroid/app/Notification;

    const/16 v1, 0x12

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 114
    :cond_2
    sget-object v0, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->mNotification:Landroid/app/Notification;

    return-object v0
.end method

.method public static getUpdateNotificationInterface()Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;
    .locals 1

    .line 50
    sget-object v0, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->i:Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;

    return-object v0
.end method

.method public static init(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 60
    sput p0, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->a:I

    .line 61
    sput-object p1, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->c:Landroid/content/Context;

    .line 62
    sput-object p2, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->d:Ljava/lang/String;

    .line 63
    sput-object p3, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->e:Ljava/lang/String;

    .line 64
    sput p4, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->f:I

    .line 66
    sput p6, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->h:I

    return-void
.end method

.method public static setUpdateNotificationInterface(Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;)V
    .locals 0

    .line 46
    sput-object p0, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->i:Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;

    return-void
.end method
