.class public Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;
.super Ljava/lang/Object;
.source "UpdateUtils.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "testTAG"

.field private static mContext:Landroid/content/Context;

.field private static updateUtils:Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareVersion(Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;
    .locals 1

    .line 38
    sget-object v0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->updateUtils:Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    if-nez v0, :cond_0

    .line 39
    new-instance v0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    invoke-direct {v0}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->updateUtils:Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    .line 41
    :cond_0
    sput-object p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->mContext:Landroid/content/Context;

    .line 43
    sget-object p0, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->updateUtils:Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    return-object p0
.end method

.method public static getSDcardApkInfo(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 230
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p2, p0, p1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 234
    iget-object p1, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 238
    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 239
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 240
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "version:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "testwang"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 211
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 212
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 214
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static onlyDownLoadFile(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public CheckSaveLocalPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .line 328
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, ""

    const/16 v2, 0x9

    if-lt v0, v2, :cond_2

    .line 329
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v2, "mounted"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->isExternalStorageRemovable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 339
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 331
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 333
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 335
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 336
    sget-object p1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {p1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_2
    return-object v1
.end method

.method public checkLinkAppOrListVersion(ILjava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;)V
    .locals 2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, ""

    goto :goto_0

    :cond_0
    const-string p1, "http://10.10.94.46:8081/ssplink/list_get"

    goto :goto_0

    :cond_1
    const-string p1, "http://www.qdrive.cc:8100/ssplink/list_get"

    .line 259
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "vehicleFactoryName"

    .line 260
    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "vehicleType"

    .line 261
    invoke-virtual {v0, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x0

    .line 263
    new-instance p3, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$2;

    invoke-direct {p3, p0, p4}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$2;-><init>(Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeLinkCallBack;)V

    invoke-static {p1, p2, v0, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->getRequestAsync(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    return-void
.end method

.method public checkNewVersion(Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;)V
    .locals 4

    .line 51
    sget v0, Lcom/neusoft/qdrivelink/Constants;->changeServer:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "3054"

    .line 57
    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->appId:Ljava/lang/String;

    const-string v0, "http://10.10.94.46:8081/ssplink/findapp_get"

    goto :goto_0

    :cond_1
    const-string v0, "2773"

    .line 53
    sput-object v0, Lcom/neusoft/qdrivelink/Constants;->appId:Ljava/lang/String;

    const-string v0, "http://www.qdrive.cc:8100/ssplink/findapp_get"

    .line 61
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Constants.appId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/neusoft/qdrivelink/Constants;->appId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",getVersionUrl:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "vehicleFactoryName"

    const-string v3, "SSP"

    .line 64
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "vehicleType"

    const-string v3, "QDrive"

    .line 65
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v2, Lcom/neusoft/qdrivelink/Constants;->appId:Ljava/lang/String;

    const-string v3, "appId"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 68
    new-instance v3, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;

    invoke-direct {v3, p0, p1, p2}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils$1;-><init>(Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;)V

    invoke-static {v0, v2, v1, v3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->getRequestAsync(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    return-void
.end method
