.class public Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;
.super Ljava/lang/Object;
.source "MainPagePresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;


# instance fields
.field private mMainPageView:Lcom/neusoft/qdrivelink/mainpage/MainPageView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/mainpage/MainPageView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 24
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;->mMainPageView:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    .line 25
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;->mMainPageView:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->setPresenter(Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;)Lcom/neusoft/qdrivelink/mainpage/MainPageView;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;->mMainPageView:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    return-object p0
.end method


# virtual methods
.method public getSelectBtnViewPosition(Landroid/widget/ImageView;[Landroid/widget/ImageView;)I
    .locals 0

    .line 38
    invoke-static {p1, p2}, Lcom/neusoft/qdrivelink/mainpage/MainPageModel;->getViewPosition(Landroid/widget/ImageView;[Landroid/widget/ImageView;)I

    move-result p1

    return p1
.end method

.method public initAppInfo()V
    .locals 5

    .line 74
    new-instance v0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$2;-><init>(Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;)V

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 84
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 85
    new-instance v3, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-direct {v3}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;-><init>()V

    .line 86
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setPackageName(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 90
    :cond_0
    invoke-static {v1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppModel;->saveAppPackage(Ljava/util/ArrayList;)V

    return-void
.end method

.method public isAppInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;->mMainPageView:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/neusoft/qdrivelink/mainpage/MainPageModel;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public pageChange(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;[Landroid/widget/ImageView;ILandroid/widget/ImageView;)V
    .locals 0

    .line 48
    iget-object p2, p0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;->mMainPageView:Lcom/neusoft/qdrivelink/mainpage/MainPageView;

    invoke-virtual {p2}, Lcom/neusoft/qdrivelink/mainpage/MainPageView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1, p3, p4}, Lcom/neusoft/qdrivelink/mainpage/MainPageModel;->pageChange(Landroid/content/Context;Landroidx/constraintlayout/widget/ConstraintLayout;[Landroid/widget/ImageView;I)V

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public startTimeRecord()V
    .locals 1

    .line 57
    new-instance v0, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter$1;-><init>(Lcom/neusoft/qdrivelink/mainpage/MainPagePresenter;)V

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mainpage/MainPageModel;->startTimeRecord(Lcom/neusoft/qdrivelink/mainpage/inter/TimeRecordListener;)V

    return-void
.end method
