.class public Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "MapNaviView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$View;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private cnav_google:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07006f
    .end annotation
.end field

.field private cnav_here:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070070
    .end annotation
.end field

.field private cnav_waze:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070071
    .end annotation
.end field

.field private mPresenter:Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;

.field private final package_name_google:Ljava/lang/String;

.field private final package_name_here:Ljava/lang/String;

.field private final package_name_waze:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 85
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const-string v0, "com.google.android.apps.maps"

    .line 74
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_google:Ljava/lang/String;

    const-string v0, "com.waze"

    .line 75
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_waze:Ljava/lang/String;

    const-string v0, "com.here.app.maps"

    .line 76
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_here:Ljava/lang/String;

    .line 86
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const-string p2, "com.google.android.apps.maps"

    .line 74
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_google:Ljava/lang/String;

    const-string p2, "com.waze"

    .line 75
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_waze:Ljava/lang/String;

    const-string p2, "com.here.app.maps"

    .line 76
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_here:Ljava/lang/String;

    .line 92
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p2, "com.google.android.apps.maps"

    .line 74
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_google:Ljava/lang/String;

    const-string p2, "com.waze"

    .line 75
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_waze:Ljava/lang/String;

    const-string p2, "com.here.app.maps"

    .line 76
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_here:Ljava/lang/String;

    .line 97
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p2, "com.google.android.apps.maps"

    .line 74
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_google:Ljava/lang/String;

    const-string p2, "com.waze"

    .line 75
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_waze:Ljava/lang/String;

    const-string p2, "com.here.app.maps"

    .line 76
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->package_name_here:Ljava/lang/String;

    .line 102
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private checkScreenOn()V
    .locals 3

    .line 166
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000000a

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 170
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 171
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private googleOnclick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f07006f
        }
    .end annotation

    .line 41
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->cnav_google:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->isCustomExist()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.google.android.apps.maps"

    .line 42
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->appOnClickListener(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->showToastShort(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private hereOnclick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070070
        }
    .end annotation

    .line 66
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->cnav_here:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->isCustomExist()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.here.app.maps"

    .line 67
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->appOnClickListener(Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->showToastShort(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private initNavigationIcon()V
    .locals 4

    .line 122
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->mPresenter:Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;

    const-string v1, "com.google.android.apps.maps"

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;->isNavigationInstalled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->cnav_google:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setCustomExist(Z)V

    goto :goto_0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->cnav_google:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setCustomExist(Z)V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->mPresenter:Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;

    const-string v3, "com.waze"

    invoke-interface {v0, v3}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;->isNavigationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->cnav_waze:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setCustomExist(Z)V

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->cnav_waze:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setCustomExist(Z)V

    .line 134
    :goto_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->mPresenter:Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;

    const-string v3, "com.here.app.maps"

    invoke-interface {v0, v3}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;->isNavigationInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 135
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->cnav_here:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setCustomExist(Z)V

    goto :goto_2

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->cnav_here:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setCustomExist(Z)V

    :goto_2
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0a0036

    .line 116
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 117
    new-instance p1, Lcom/neusoft/qdrivelink/mapnavi/MapNaviPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviPresenter;-><init>(Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;)V

    .line 118
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    return-void
.end method

.method private wazeOnclick(Landroid/view/View;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070071
        }
    .end annotation

    .line 53
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->cnav_waze:Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->isCustomExist()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.waze"

    .line 54
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->appOnClickListener(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d006f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->showToastShort(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public appOnClickListener(Ljava/lang/String;)V
    .locals 1

    .line 153
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 154
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x10000000

    .line 159
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 160
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/MyApplication;->startActivity(Landroid/content/Intent;)V

    .line 161
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->checkScreenOn()V

    .line 162
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->getInstance(Landroid/content/Context;)Lcom/neusoft/interconnection/ScreenCaptureManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/ScreenCaptureManager;->changeOutApp()V

    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->mPresenter:Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->setPresenter(Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;)V

    return-void
.end method

.method public viewDestroy()V
    .locals 0

    .line 149
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewDestroy()V

    return-void
.end method

.method public viewResume()V
    .locals 0

    .line 143
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 144
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->initNavigationIcon()V

    return-void
.end method
