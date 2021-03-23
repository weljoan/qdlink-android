.class public Lcom/neusoft/interconnection/service/RotateScreenService;
.super Landroid/app/Service;
.source "RotateScreenService.java"


# static fields
.field public static CHANNEL_ONE_ID:Ljava/lang/String; = "com.neusoft.qdrive.notifation.channelid.auto"

.field public static CHANNEL_ONE_NAME:Ljava/lang/String; = "Com Neusoft Qdrive Channel One Auto"

.field public static final KEY_MIUI_INTERNAL_STORAGE:Ljava/lang/String; = "ro.miui.internal.storage"

.field public static final KEY_MIUI_VERSION_CODE:Ljava/lang/String; = "ro.miui.ui.version.code"

.field public static final KEY_MIUI_VERSION_NAME:Ljava/lang/String; = "ro.miui.ui.version.name"

.field public static final KEY_OPPO_REGION:Ljava/lang/String; = "persist.sys.oppo.region"

.field public static final KEY_OPPO_THEME_VERSION:Ljava/lang/String; = "ro.oppo.theme.version"

.field public static final KEY_OPPO_VERSION_OPPOROM:Ljava/lang/String; = "ro.build.version.opporom"

.field public static notificationId:I = 0x7e32


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "RotateScreenService onCreate()"

    .line 67
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 68
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 70
    sget v0, Lcom/neusoft/interconnection/utils/LinkConfig;->notificationId:I

    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/neusoft/interconnection/service/RotateScreenService;->startForeground(ILandroid/app/Notification;)V

    .line 71
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getUpdateNotificationInterface()Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-static {}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->getUpdateNotificationInterface()Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/neu/ssp/mirror/screencap/utils/UpdateNotificationInterface;->updateNotification()V

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/interconnection/service/RotateScreenService;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {p0}, Lcom/neusoft/interconnection/service/RotateScreenService;->getApplication()Landroid/app/Application;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->b:Landroid/view/WindowManager;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "RotateScreenService onDestroy()"

    .line 192
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 194
    invoke-virtual {v0, v1}, Landroid/view/View;->setKeepScreenOn(Z)V

    .line 195
    iget-object v0, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 197
    iput-object v0, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    .line 199
    :cond_0
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 8

    const-string p2, "RotateScreenService onStartCommand()"

    .line 97
    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const-string p2, "orientation"

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 99
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "orient==="

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    .line 101
    iget-object p2, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 102
    iget-object v0, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->b:Landroid/view/WindowManager;

    invoke-interface {v0, p2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "removeViewImmediate=="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/neusoft/interconnection/utils/Logger;->i(Ljava/lang/String;)V

    .line 104
    iput-object p3, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    :cond_0
    const-string p2, "Landscape"

    if-nez p1, :cond_1

    move-object p1, p2

    :cond_1
    const-string v0, "Portrait"

    .line 113
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "i=="

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 114
    new-instance p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;

    invoke-direct {p2, p0, v3}, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;-><init>(Lcom/neusoft/interconnection/service/RotateScreenService;I)V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 116
    :cond_2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 117
    new-instance p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;

    invoke-direct {p2, p0, v1}, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;-><init>(Lcom/neusoft/interconnection/service/RotateScreenService;I)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string p2, "ScreenOn"

    .line 119
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 120
    new-instance p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;

    const/4 v0, -0x1

    invoke-direct {p2, p0, v0}, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;-><init>(Lcom/neusoft/interconnection/service/RotateScreenService;I)V

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move-object p2, p3

    :goto_0
    if-eqz p2, :cond_c

    const/16 p1, 0x7d2

    const/16 v0, 0x28

    .line 128
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 129
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v6

    const-string v7, "build.prop"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v4, "ro.miui.ui.version.code"

    .line 130
    invoke-virtual {v2, v4, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    const-string v4, "ro.miui.ui.version.name"

    .line 131
    invoke-virtual {v2, v4, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    const-string v4, "ro.miui.internal.storage"

    .line 132
    invoke-virtual {v2, v4, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    goto :goto_2

    :cond_5
    const-string v4, "persist.sys.oppo.region"

    .line 140
    invoke-virtual {v2, v4, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v4, "ro.build.version.opporom"

    .line 141
    invoke-virtual {v2, v4, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_7

    const-string v4, "ro.oppo.theme.version"

    .line 142
    invoke-virtual {v2, v4, p3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    goto :goto_4

    :cond_7
    :goto_1
    const-string p3, "is OPPO !!!"

    .line 143
    invoke-static {p3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :try_start_1
    iput p1, p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->type:I

    .line 146
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    .line 147
    iput v0, p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->flags:I

    .line 149
    iget-object p3, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    invoke-interface {p3, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :cond_8
    :goto_2
    :try_start_2
    const-string p3, "is MI !!!"

    .line 133
    invoke-static {p3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 135
    :try_start_3
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    .line 136
    iput p1, p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->type:I

    .line 137
    iput v0, p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->flags:I

    .line 139
    iget-object p3, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->b:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    invoke-interface {p3, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_3

    :catch_1
    move-exception p3

    const/4 v3, 0x0

    .line 152
    :goto_3
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 155
    :goto_4
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const/16 v2, 0x8

    if-lt p3, v1, :cond_a

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Build.VERSION.SDK_INT >= 26"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/neusoft/interconnection/service/RotateScreenService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    const-string p1, "permission open"

    .line 159
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    const/16 p1, 0x7f6

    .line 160
    iput p1, p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->type:I

    .line 162
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    .line 163
    iput v2, p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->flags:I

    .line 165
    iget-object p1, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->b:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    invoke-interface {p1, p3, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_9
    const-string p1, "permission close"

    .line 167
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    goto :goto_5

    .line 169
    :cond_a
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-ne p3, v1, :cond_b

    if-nez v3, :cond_c

    .line 171
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Build.VERSION.SDK_INT = 25"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 172
    new-instance p3, Landroid/view/View;

    invoke-direct {p3, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    .line 173
    iput v2, p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->flags:I

    .line 174
    iput p1, p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->type:I

    .line 175
    iget-object p1, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->b:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    invoke-interface {p1, p3, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_b
    if-nez v3, :cond_c

    .line 179
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Build.VERSION.SDK_INT < 25"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 180
    new-instance p1, Landroid/view/View;

    invoke-direct {p1, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    .line 181
    iput v0, p2, Lcom/neusoft/interconnection/service/RotateScreenService$CustomLayout;->flags:I

    .line 183
    iget-object p1, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->b:Landroid/view/WindowManager;

    iget-object p3, p0, Lcom/neusoft/interconnection/service/RotateScreenService;->a:Landroid/view/View;

    invoke-interface {p1, p3, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    :goto_5
    const/4 p1, 0x2

    return p1
.end method
