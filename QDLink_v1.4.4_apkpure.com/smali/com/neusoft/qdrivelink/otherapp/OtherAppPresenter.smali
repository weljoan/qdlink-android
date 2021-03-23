.class public Lcom/neusoft/qdrivelink/otherapp/OtherAppPresenter;
.super Ljava/lang/Object;
.source "OtherAppPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;


# instance fields
.field private mOtherAppView:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppPresenter;->mOtherAppView:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    .line 16
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppPresenter;->mOtherAppView:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->setPresenter(Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addAppInfo(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V
    .locals 0

    .line 32
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppModel;->saveAppPackage(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V

    return-void
.end method

.method public deleteAppInfo(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V
    .locals 0

    .line 37
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppModel;->deleteAppPackage(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V

    return-void
.end method

.method public getAllAppData()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;>;"
        }
    .end annotation

    .line 27
    invoke-static {}, Lcom/neusoft/qdrivelink/otherapp/OtherAppModel;->getAppList()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 0

    return-void
.end method
