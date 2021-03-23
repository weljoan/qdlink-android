.class public Lcom/neusoft/qdrivelink/MyApplication;
.super Lcn/dr/lib/app/DRApplication;
.source "MyApplication.java"


# static fields
.field public static volatile carType:Ljava/lang/String; = null

.field public static isConnInit:Z = false

.field private static myApp:Lcom/neusoft/qdrivelink/MyApplication; = null

.field public static qd_dbUtil:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil; = null

.field public static volatile resumeFlag:Z = true

.field public static volatile resumeFlagLayout:Z = false


# instance fields
.field private appLock:Ljava/util/concurrent/locks/Lock;

.field private final languageChangeListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/neusoft/qdrivelink/listener/LanguageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private myScreenHeight:I

.field private myScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcn/dr/lib/app/DRApplication;-><init>()V

    .line 75
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->languageChangeListeners:Ljava/util/Vector;

    .line 76
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    return-void
.end method

.method public static getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;
    .locals 1

    .line 113
    sget-object v0, Lcom/neusoft/qdrivelink/MyApplication;->myApp:Lcom/neusoft/qdrivelink/MyApplication;

    return-object v0
.end method

.method private initScreenSize()V
    .locals 3

    .line 97
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    .line 99
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivelink/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    if-eqz v1, :cond_0

    .line 101
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    :cond_0
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_1

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0

    :cond_1
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    :goto_0
    iput v1, p0, Lcom/neusoft/qdrivelink/MyApplication;->myScreenHeight:I

    .line 104
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v1, v2, :cond_2

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_1

    :cond_2
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_1
    iput v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->myScreenWidth:I

    return-void
.end method


# virtual methods
.method public addLanguageChangeListener(Lcom/neusoft/qdrivelink/listener/LanguageChangeListener;)V
    .locals 1

    .line 211
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 212
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->languageChangeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 216
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method protected initDRLogHelperParam()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/MyApplication;->getDrLogHelper()Lcn/dr/lib/log/DRLogHelper;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/neusoft/qdrivelink/Constants;->LOG4J_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/dr/lib/log/DRLogHelper;->setLog4jFilePath(Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_LOG4J:Lcn/dr/lib/log/DRLogHelper$LogType;

    invoke-virtual {v0, v1}, Lcn/dr/lib/log/DRLogHelper;->setType(Lcn/dr/lib/log/DRLogHelper$LogType;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 136
    invoke-super {p0, p1}, Lcn/dr/lib/app/DRApplication;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    const-string v1, "APP_LANGUAGE"

    .line 138
    invoke-static {p0, v1, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 139
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged===locale language==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",firstLanguage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "YZS"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 141
    :goto_0
    invoke-static {p0, v1, p1}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 145
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "QDriveConn11"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_2

    .line 146
    invoke-static {p0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/neusoft/interconnection/ScreenCaptureManager;->changeDisplayToArOrFa(Z)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyChangeLayout baseLayoutView != null start1111111111111 MyApplication.carType:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/neusoft/qdrivelink/MyApplication;->carType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    sget-object v0, Lcom/neusoft/qdrivelink/MyApplication;->carType:Ljava/lang/String;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    sget-object v0, Lcom/neusoft/qdrivelink/MyApplication;->carType:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v1, "SX11_R2_G"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    goto :goto_2

    :sswitch_1
    const-string v1, "SX11_R2_D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x7

    goto :goto_2

    :sswitch_2
    const-string v1, "SX11RA_10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_2

    :sswitch_3
    const-string v1, "SX11RA_8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_2

    :sswitch_4
    const-string v1, "MC2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    goto :goto_2

    :sswitch_5
    const-string v1, "SV91-D4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x3

    goto :goto_2

    :sswitch_6
    const-string v4, "T19FL_r"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    :sswitch_7
    const-string v1, "SK83_r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x4

    goto :goto_2

    :sswitch_8
    const-string v1, "NL-3RC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v1, -0x1

    :goto_2
    packed-switch v1, :pswitch_data_0

    .line 161
    sput-boolean v3, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    goto :goto_3

    .line 166
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyChangeLayout baseLayoutView != null start2222222222222222 MyApplication.carType:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/neusoft/qdrivelink/MyApplication;->carType:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-static {p0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->changeDisplayToArOrFa(Z)V

    .line 168
    sput-boolean v3, Lcom/neusoft/qdrivelink/MyApplication;->resumeFlag:Z

    .line 189
    :cond_3
    :goto_3
    :pswitch_0
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 190
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->languageChangeListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 191
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->languageChangeListeners:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/listener/LanguageChangeListener;

    .line 192
    invoke-interface {v1, p1}, Lcom/neusoft/qdrivelink/listener/LanguageChangeListener;->languageChange(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    .line 198
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_0
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :cond_5
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

.method public onCreate()V
    .locals 11

    .line 80
    invoke-super {p0}, Lcn/dr/lib/app/DRApplication;->onCreate()V

    .line 81
    sput-object p0, Lcom/neusoft/qdrivelink/MyApplication;->myApp:Lcom/neusoft/qdrivelink/MyApplication;

    .line 82
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initXUtils(Landroid/app/Application;)V

    const/high16 v0, 0x7f0c0000

    .line 83
    invoke-static {p0, v0}, Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;->getInstance(Landroid/content/Context;I)Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/MyApplication;->qd_dbUtil:Lcom/neusoft/qdrivelink/interconnection/utils/QD_DBUtil;

    .line 84
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/MyApplication;->initScreenSize()V

    .line 85
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "APP_LANGUAGE"

    .line 86
    invoke-static {p0, v1, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    sget v1, Lcom/neusoft/qdrivelink/Constants;->notificationId:I

    sget-object v2, Lcom/neusoft/qdrivelink/Constants;->CHANNEL_ONE_ID:Ljava/lang/String;

    sget-object v3, Lcom/neusoft/qdrivelink/Constants;->CHANNEL_ONE_NAME:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/neusoft/interconnection/ConnectionLinkManager;->setNotificationId(ILjava/lang/String;Ljava/lang/String;)V

    const v4, 0x7f0a0037

    const-string v6, "DTLinkNotificationReceiver.class.getName()"

    const-string v7, "DTLinkNotificationReceiver.WIFI_LINK_STOP"

    const v8, 0x7f070050

    const v9, 0x7f070175

    const v10, 0x7f0b001a

    move-object v5, p0

    .line 88
    invoke-static/range {v4 .. v10}, Lcom/neu/ssp/mirror/screencap/utils/DTNotificationUtils;->init(ILandroid/content/Context;Ljava/lang/String;Ljava/lang/String;III)V

    .line 92
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate==LANGUAGE==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "YZS"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTerminate()V
    .locals 1

    .line 205
    invoke-super {p0}, Lcn/dr/lib/app/DRApplication;->onTerminate()V

    .line 206
    invoke-static {p0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/interconnection/ScreenCaptureManager;->changeOutApp()V

    return-void
.end method

.method public removeLanguageChangeListener(Lcom/neusoft/qdrivelink/listener/LanguageChangeListener;)V
    .locals 1

    .line 225
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 226
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->languageChangeListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 230
    iget-object v0, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw p1

    :catch_0
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/MyApplication;->appLock:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void
.end method

.method public setHandler()V
    .locals 1

    .line 131
    new-instance v0, Lcom/neusoft/qdrivelink/MyCrashHandler;

    invoke-direct {v0}, Lcom/neusoft/qdrivelink/MyCrashHandler;-><init>()V

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/MyApplication;->setDRCrashHandler(Lcn/dr/lib/app/DRCrashHandler;)V

    return-void
.end method
