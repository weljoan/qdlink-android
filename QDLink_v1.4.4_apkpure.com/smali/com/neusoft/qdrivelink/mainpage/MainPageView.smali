.class public Lcom/neusoft/qdrivelink/mainpage/MainPageView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "MainPageView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/mainpage/MainPageContract$View;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final PACKAGE_GOOGLEASSISTANT:Ljava/lang/String; = "com.google.android.apps.googleassistant"

.field public static final TYPE_APP:I = 0x4

.field public static final TYPE_MUSIC:I = 0x2

.field public static final TYPE_NAVI:I = 0x1

.field public static final TYPE_PHONE:I = 0x3

.field public static final TYPE_SETTING:I = 0x5

.field private static final isTimeShow:Z = false


# instance fields
.field private cl_map_navi:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070066
    .end annotation
.end field

.field private cl_menu:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070067
    .end annotation
.end field

.field private customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

.field private iv_app:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ac
    .end annotation
.end field

.field private iv_change:Landroid/widget/ImageView;

.field private iv_exit:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700b5
    .end annotation
.end field

.field private iv_google_voice:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700b6
    .end annotation
.end field

.field private iv_music:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ba
    .end annotation
.end field

.field private iv_navi:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700bb
    .end annotation
.end field

.field private iv_phone:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700bd
    .end annotation
.end field

.field private iv_setting:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700c2
    .end annotation
.end field

.field ll_time_date:Landroid/widget/LinearLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700eb
    .end annotation
.end field

.field mPresenter:Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;

.field private mType:I

.field private showImageView:Landroid/widget/ImageView;

.field private tv_date:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07016e
    .end annotation
.end field

.field private tv_time:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07018a
    .end annotation
.end field

.field private viewArray:[Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 251
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mType:I

    .line 252
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 65
    iput p2, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mType:I

    .line 257
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 261
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 65
    iput p2, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mType:I

    .line 262
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->tv_time:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroidx/constraintlayout/widget/ConstraintLayout;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->cl_map_navi:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1400(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/TextView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->tv_date:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_navi:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_music:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_phone:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_app:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_exit:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/widget/ImageView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_google_voice:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)Landroid/content/Context;
    .locals 0

    .line 51
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private appOnClick(Landroid/widget/ImageView;)V
    .locals 3
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700ac
        }
    .end annotation

    const/4 p1, 0x4

    .line 124
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->changePage(I)V

    .line 125
    const-class p1, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private checkScreenOn()V
    .locals 3

    .line 560
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 563
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x1000000a

    .line 564
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v1, 0x2710

    .line 565
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 566
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method private exitOnClick(Landroid/widget/ImageView;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700b5
        }
    .end annotation

    .line 145
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getCurrentLinkMode()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 147
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyCarBackground()V

    :cond_0
    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 8

    const v0, 0x7f0a0031

    .line 276
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const p1, 0x7f070068

    .line 277
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->setLayoutView(Landroid/view/ViewGroup;)V

    const p1, 0x7f07006a

    .line 278
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->setMainShowView(Landroid/view/ViewGroup;)V

    .line 279
    new-instance p1, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;-><init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)V

    .line 280
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    const/4 p1, 0x4

    new-array p1, p1, [Landroid/widget/ImageView;

    .line 281
    iget-object v5, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_navi:Landroid/widget/ImageView;

    const/4 v6, 0x0

    aput-object v5, p1, v6

    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_music:Landroid/widget/ImageView;

    const/4 v7, 0x1

    aput-object v0, p1, v7

    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_phone:Landroid/widget/ImageView;

    const/4 v1, 0x2

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_app:Landroid/widget/ImageView;

    const/4 v1, 0x3

    aput-object v0, p1, v1

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->viewArray:[Landroid/widget/ImageView;

    .line 282
    iput-object v5, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showImageView:Landroid/widget/ImageView;

    .line 283
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mPresenter:Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->cl_menu:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->viewArray:[Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;->pageChange(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;[Landroid/widget/ImageView;ILandroid/widget/ImageView;)V

    .line 284
    new-instance p1, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v6, p1, v7}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    .line 285
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "KEY_IS_FIRST_START"

    invoke-static {p1, v1, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 288
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mPresenter:Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;

    invoke-interface {p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;->initAppInfo()V

    .line 289
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->setParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 297
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->ll_time_date:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 298
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_google_voice:Landroid/widget/ImageView;

    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private isForeground(Landroid/content/Context;)Z
    .locals 4

    if-eqz p1, :cond_1

    const-string v0, "activity"

    .line 221
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 223
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 224
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 225
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    iget v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private musicOnClick(Landroid/widget/ImageView;)V
    .locals 2
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700ba
        }
    .end annotation

    const/4 p1, 0x2

    .line 95
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->changePage(I)V

    .line 96
    const-class p1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private naviOnClick(Landroid/widget/ImageView;)V
    .locals 3
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700bb
        }
    .end annotation

    const/4 p1, 0x1

    .line 83
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->changePage(I)V

    .line 84
    const-class v0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private pboneOnClick(Landroid/widget/ImageView;)V
    .locals 3
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700bd
        }
    .end annotation

    const/4 p1, 0x3

    .line 108
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->changePage(I)V

    .line 109
    const-class p1, Lcom/neusoft/qdrivelink/phone/PhoneView;

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private settingOnClick(Landroid/widget/ImageView;)V
    .locals 3
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700c2
        }
    .end annotation

    const/4 p1, 0x5

    .line 133
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->changePage(I)V

    .line 134
    const-class p1, Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method private voiceClick(Landroid/widget/ImageView;)V
    .locals 4
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700b6
        }
    .end annotation

    .line 178
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.VOICE_COMMAND"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 179
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 181
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    const v2, 0x7f0d0067

    if-nez v1, :cond_0

    .line 182
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showToastShort(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->isForeground(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.category.HOME"

    .line 189
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 195
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 200
    invoke-virtual {p1}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 201
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showToastShort(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/ModelAdaptationUtils;->associationStart(Landroid/content/Context;)V

    .line 206
    :goto_0
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->checkScreenOn()V

    .line 208
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 209
    new-instance v0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView$1;-><init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 197
    :catch_1
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showToastShort(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOrResumePhoneViewToPage()V
    .locals 4

    .line 113
    const-class v0, Lcom/neusoft/qdrivelink/phone/PhoneView;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public appOnClickListener(Ljava/lang/String;)V
    .locals 3

    .line 539
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 540
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x10000000

    .line 545
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 546
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/MyApplication;->startActivity(Landroid/content/Intent;)V

    .line 547
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->checkScreenOn()V

    .line 550
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 551
    new-instance v0, Lcom/neusoft/qdrivelink/mainpage/MainPageView$5;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView$5;-><init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)V

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public changePage(I)V
    .locals 8

    .line 313
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_setting:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 315
    iput p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mType:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    .line 335
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    goto :goto_0

    .line 331
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_setting:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    .line 332
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setSelected(Z)V

    goto :goto_0

    .line 328
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_app:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    goto :goto_0

    .line 325
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_phone:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    goto :goto_0

    .line 322
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_music:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    goto :goto_0

    .line 319
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_navi:Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    .line 340
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    if-nez p1, :cond_5

    return-void

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mPresenter:Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->viewArray:[Landroid/widget/ImageView;

    invoke-interface {v0, p1, v1}, Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;->getSelectBtnViewPosition(Landroid/widget/ImageView;[Landroid/widget/ImageView;)I

    move-result v6

    .line 345
    iget-object v2, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mPresenter:Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;

    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->cl_menu:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v4, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showImageView:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->viewArray:[Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    invoke-interface/range {v2 .. v7}, Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;->pageChange(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;[Landroid/widget/ImageView;ILandroid/widget/ImageView;)V

    return-void
.end method

.method public changePageComplete(Landroidx/constraintlayout/widget/ConstraintSet;ILandroid/widget/ImageView;)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->cl_menu:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 353
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->cl_menu:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 358
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->viewArray:[Landroid/widget/ImageView;

    const/4 v0, 0x0

    aput-object p3, p1, v0

    .line 359
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showImageView:Landroid/widget/ImageView;

    aput-object v0, p1, p2

    .line 360
    iput-object p3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showImageView:Landroid/widget/ImageView;

    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mPresenter:Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 51
    check-cast p1, Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->setPresenter(Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;)V

    return-void
.end method

.method public showLoadingDialog()V
    .locals 2

    .line 571
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    if-nez v0, :cond_0

    .line 572
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    .line 574
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->showCustomDialog()V

    return-void
.end method

.method public updateTime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 365
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/neusoft/qdrivelink/mainpage/MainPageView$2;-><init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public viewDestroy()V
    .locals 1

    .line 531
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewDestroy()V

    .line 532
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->dismissCustomDialog()V

    :cond_0
    return-void
.end method

.method public viewResume()V
    .locals 9

    .line 377
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 378
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MainPageView viewResume currentLinkMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getCurrentLinkMode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QDriveConn11"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getCurrentLinkMode()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getCurrentLinkMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/MainActivity;

    new-instance v1, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView$4;-><init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 381
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/MainActivity;

    new-instance v1, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView$3;-><init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 487
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    return-void

    .line 491
    :cond_2
    iget-object v1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mPresenter:Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->viewArray:[Landroid/widget/ImageView;

    invoke-interface {v1, v0, v2}, Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;->getSelectBtnViewPosition(Landroid/widget/ImageView;[Landroid/widget/ImageView;)I

    move-result v7

    .line 492
    iget-object v3, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->mPresenter:Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;

    iget-object v4, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->cl_menu:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v5, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->showImageView:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->viewArray:[Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->iv_change:Landroid/widget/ImageView;

    invoke-interface/range {v3 .. v8}, Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;->pageChange(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;[Landroid/widget/ImageView;ILandroid/widget/ImageView;)V

    :goto_1
    return-void
.end method
