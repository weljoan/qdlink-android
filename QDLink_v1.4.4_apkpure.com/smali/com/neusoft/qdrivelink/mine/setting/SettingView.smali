.class public Lcom/neusoft/qdrivelink/mine/setting/SettingView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "SettingView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/mine/setting/SettingContract$View;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# static fields
.field static final COUNTS:I = 0x5

.field static final DURATION:J = 0x898L


# instance fields
.field private carType:Ljava/lang/String;

.field private check_appversion:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07005e
    .end annotation
.end field

.field private cl_control:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070065
    .end annotation
.end field

.field private cl_version_linkapp:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07006c
    .end annotation
.end field

.field private customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

.field private customDialogLink:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

.field private factoryName:Ljava/lang/String;

.field private iflag:I

.field private iv_red_icon_car:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700be
    .end annotation
.end field

.field private iv_red_icon_car1:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700bf
    .end annotation
.end field

.field mHits:[J

.field mHitsVersion:[J

.field private myHandler:Landroid/os/Handler;

.field private myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

.field private presenter:Lcom/neusoft/qdrivelink/mine/setting/SettingContract$Presenter;

.field private switch_control:Landroid/widget/Switch;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070152
    .end annotation
.end field

.field private tv_version:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07018d
    .end annotation
.end field

.field private tv_version_label:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07018e
    .end annotation
.end field

.field private txt_showadb:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0701a3
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 227
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    new-array v1, v0, [J

    .line 81
    iput-object v1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHits:[J

    new-array v0, v0, [J

    .line 82
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHitsVersion:[J

    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myHandler:Landroid/os/Handler;

    .line 223
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    const/4 v0, 0x0

    .line 446
    iput v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->iflag:I

    .line 228
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 233
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p2, 0x5

    new-array v0, p2, [J

    .line 81
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHits:[J

    new-array p2, p2, [J

    .line 82
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHitsVersion:[J

    const/4 p2, 0x0

    .line 222
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myHandler:Landroid/os/Handler;

    .line 223
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    const/4 p2, 0x0

    .line 446
    iput p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->iflag:I

    .line 234
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 239
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x5

    new-array v0, p2, [J

    .line 81
    iput-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHits:[J

    new-array p2, p2, [J

    .line 82
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHitsVersion:[J

    const/4 p2, 0x0

    .line 222
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myHandler:Landroid/os/Handler;

    .line 223
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    const/4 p2, 0x0

    .line 446
    iput p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->iflag:I

    .line 240
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x5

    new-array p3, p2, [J

    .line 81
    iput-object p3, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHits:[J

    new-array p2, p2, [J

    .line 82
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHitsVersion:[J

    const/4 p2, 0x0

    .line 222
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myHandler:Landroid/os/Handler;

    .line 223
    iput-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    const/4 p2, 0x0

    .line 446
    iput p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->iflag:I

    .line 246
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/os/Handler;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->iv_red_icon_car:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    return-object p0
.end method

.method static synthetic access$302(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myUpGradeBean:Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;

    return-object p1
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->showUpgradeDialog(Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V

    return-void
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->showCurrentUpgradeDialog(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/widget/ImageView;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->iv_red_icon_car1:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)Landroid/content/Context;
    .locals 0

    .line 37
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private checkLinkAppClock(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f07005e
        }
    .end annotation

    return-void
.end method

.method private clClock(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 4
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f07006c
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->factoryName:Ljava/lang/String;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->carType:Ljava/lang/String;

    new-instance v2, Lcom/neusoft/qdrivelink/mine/setting/SettingView$1;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView$1;-><init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V

    const/4 v3, 0x2

    invoke-static {p1, v0, v1, v3, v2}, Lcom/neusoft/qdrivelink/MainActivity;->checkLinkAppDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;)V

    return-void
.end method

.method private clVersionClock(Landroid/widget/TextView;)V
    .locals 2
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f07018e
        }
    .end annotation

    const/4 p1, 0x5

    const-wide/16 v0, 0x898

    .line 90
    invoke-virtual {p0, p1, v0, v1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->continuousVersionClick(IJ)V

    return-void
.end method

.method private clcontrolOnClick(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070065
        }
    .end annotation

    .line 203
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    if-eqz p1, :cond_2

    .line 204
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "adb_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-lez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    goto :goto_0

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->showCustomDialog()V

    .line 212
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.APPLICATION_DEVELOPMENT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private continuousClick(IJ)V
    .locals 4

    .line 121
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHits:[J

    array-length p2, p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-static {p1, p3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHits:[J

    array-length p2, p1

    sub-int/2addr p2, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, p2

    .line 124
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHits:[J

    aget-wide p2, p1, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x898

    sub-long/2addr v0, v2

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x5

    new-array p1, p1, [J

    .line 125
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHits:[J

    .line 126
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x110

    .line 127
    iput p2, p1, Landroid/os/Message;->what:I

    .line 128
    iget-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method private initVersion()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->presenter:Lcom/neusoft/qdrivelink/mine/setting/SettingContract$Presenter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingContract$Presenter;->getAppVersionName()Ljava/lang/String;

    move-result-object v0

    .line 488
    iget-object v1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->tv_version:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0a0040

    .line 254
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 255
    new-instance p1, Lcom/neusoft/qdrivelink/mine/setting/SettingPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingPresenter;-><init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V

    .line 256
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 257
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->initVersion()V

    .line 260
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, ""

    const-string v1, "key_save_factory_name"

    invoke-static {p1, v1, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->factoryName:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "key_save_car_type"

    invoke-static {p1, v1, v0}, Lcom/neusoft/qdrivezeusbase/utils/SharedPreferencesUtils;->getParam(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->carType:Ljava/lang/String;

    .line 263
    new-instance p1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    .line 264
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmSingle()V

    .line 265
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->customDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    new-instance v0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView$2;-><init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V

    .line 278
    new-instance p1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->customDialogLink:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    .line 279
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->customDialogLink:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmSingle()V

    .line 280
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->customDialogLink:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    new-instance v0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView$3;-><init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V

    .line 292
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "adb_enabled"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 295
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->switch_control:Landroid/widget/Switch;

    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setClickable(Z)V

    goto :goto_1

    .line 297
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->switch_control:Landroid/widget/Switch;

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setClickable(Z)V

    .line 311
    :goto_1
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView$4;-><init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myHandler:Landroid/os/Handler;

    .line 394
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->getInstance(Landroid/content/Context;)Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;

    move-result-object p1

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/neusoft/qdrivelink/mine/setting/SettingView$5;

    invoke-direct {v2, p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView$5;-><init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V

    invoke-virtual {p1, v0, v2}, Lcom/neusoft/qdrivelink/upgrade/update/UpdateUtils;->checkNewVersion(Ljava/lang/String;Lcom/neusoft/qdrivelink/upgrade/updateinterface/UpGradeCallBack;)V

    .line 413
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_2

    .line 414
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->factoryName:Ljava/lang/String;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->carType:Ljava/lang/String;

    new-instance v3, Lcom/neusoft/qdrivelink/mine/setting/SettingView$6;

    invoke-direct {v3, p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView$6;-><init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V

    invoke-static {p1, v0, v2, v1, v3}, Lcom/neusoft/qdrivelink/MainActivity;->checkLinkAppDownload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/neusoft/qdrivelink/upgrade/updateinterface/CheckLinkAppResultCallBack;)V

    :cond_2
    return-void
.end method

.method private showCurrentUpgradeDialog(Landroid/content/Context;)V
    .locals 3

    .line 551
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-direct {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 552
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmSingle()V

    .line 553
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 554
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0d001f

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmText(Ljava/lang/String;)V

    .line 555
    new-instance p1, Lcom/neusoft/qdrivelink/mine/setting/SettingView$8;

    invoke-direct {p1, p0, v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView$8;-><init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)V

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V

    .line 566
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->showCustomDialog()V

    return-void
.end method

.method private showUpgradeDialog(Landroid/content/Context;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;)V
    .locals 5

    .line 523
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;

    invoke-direct {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;-><init>(Landroid/content/Context;)V

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0090

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0091

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0092

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;->getSize()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/high16 v4, 0x44800000    # 1024.0f

    div-float/2addr v3, v4

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "%1.2f"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 524
    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setTitle(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setCancelText(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setConfirmText(Ljava/lang/String;)V

    .line 528
    new-instance v1, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView$7;-><init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;Lcom/neusoft/qdrivelink/upgrade/bean/UpGradeBean;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V

    .line 543
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->showCustomDialog()V

    return-void
.end method

.method private tvVersionClick(Landroid/widget/TextView;)V
    .locals 2
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f07018d
        }
    .end annotation

    const/4 p1, 0x5

    const-wide/16 v0, 0x898

    .line 114
    invoke-direct {p0, p1, v0, v1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->continuousClick(IJ)V

    return-void
.end method


# virtual methods
.method public continuousVersionClick(IJ)V
    .locals 4

    .line 96
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHitsVersion:[J

    array-length p2, p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    const/4 v0, 0x0

    invoke-static {p1, p3, p1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 98
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHitsVersion:[J

    array-length p2, p1

    sub-int/2addr p2, p3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    aput-wide v1, p1, p2

    .line 99
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHitsVersion:[J

    aget-wide p2, p1, v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x898

    sub-long/2addr v0, v2

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x5

    new-array p1, p1, [J

    .line 100
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->mHitsVersion:[J

    .line 102
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x109

    .line 103
    iput p2, p1, Landroid/os/Message;->what:I

    .line 104
    iget-object p2, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->myHandler:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 494
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switch_control.setOnCheckedChangeListener onCheckedChanged b:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ",MyApplication.islink:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "testchecked"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/mine/setting/SettingContract$Presenter;)V
    .locals 0

    .line 443
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->presenter:Lcom/neusoft/qdrivelink/mine/setting/SettingContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Lcom/neusoft/qdrivelink/mine/setting/SettingContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->setPresenter(Lcom/neusoft/qdrivelink/mine/setting/SettingContract$Presenter;)V

    return-void
.end method

.method public viewResume()V
    .locals 4

    .line 451
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 453
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->switch_control:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 454
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "adb_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->txt_showadb:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0d005e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 460
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->switch_control:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setClickable(Z)V

    goto :goto_1

    .line 476
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->txt_showadb:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getViewContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d005f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->switch_control:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 478
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->switch_control:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 482
    :goto_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->switch_control:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method
