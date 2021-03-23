.class public Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BootReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;
    }
.end annotation


# instance fields
.field private mBootCallBackListener:Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;->mBootCallBackListener:Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 23
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 26
    :try_start_0
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object p2

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v0, 0x0

    .line 27
    invoke-virtual {p2, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 30
    new-instance p2, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-direct {p2}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;-><init>()V

    .line 31
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setAppName(Ljava/lang/String;)V

    .line 32
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setPackageName(Ljava/lang/String;)V

    .line 33
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setVersionName(Ljava/lang/String;)V

    .line 34
    iget v0, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p2, v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setVersionCode(I)V

    .line 35
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    .line 37
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;->mBootCallBackListener:Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;

    if-eqz p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;->mBootCallBackListener:Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;->addApp(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "Intent.ACTION_PACKAGE_ADDED"

    .line 45
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    .line 49
    new-instance p2, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-direct {p2}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;-><init>()V

    .line 50
    invoke-virtual {p2, p1}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setPackageName(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;->mBootCallBackListener:Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;

    if-eqz p1, :cond_2

    .line 53
    invoke-interface {p1, p2}, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;->deleteApp(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V

    :cond_2
    const-string p1, "Intent.ACTION_PACKAGE_REMOVED"

    .line 55
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->d(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public setBootCallBackListener(Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver;->mBootCallBackListener:Lcom/neusoft/qdrivelink/otherapp/service/BootReceiver$BootCallBackListener;

    return-void
.end method
