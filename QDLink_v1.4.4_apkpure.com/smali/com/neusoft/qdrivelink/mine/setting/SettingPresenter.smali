.class public Lcom/neusoft/qdrivelink/mine/setting/SettingPresenter;
.super Ljava/lang/Object;
.source "SettingPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/mine/setting/SettingContract$Presenter;


# instance fields
.field private mySettingView:Lcom/neusoft/qdrivelink/mine/setting/SettingView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/mine/setting/SettingView;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 10
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingPresenter;->mySettingView:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    .line 11
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingPresenter;->mySettingView:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->setPresenter(Lcom/neusoft/qdrivelink/mine/setting/SettingContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAppVersionName()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mine/setting/SettingPresenter;->mySettingView:Lcom/neusoft/qdrivelink/mine/setting/SettingView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/qdrivelink/mine/setting/SettingModel;->packageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 0

    return-void
.end method
