.class public Lcom/neusoft/qdrivelink/mapnavi/MapNaviPresenter;
.super Ljava/lang/Object;
.source "MapNaviPresenter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;


# instance fields
.field private mMapNaviView:Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 15
    iput-object p1, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviPresenter;->mMapNaviView:Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;

    .line 16
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviPresenter;->mMapNaviView:Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;

    invoke-virtual {p1, p0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->setPresenter(Lcom/neusoft/qdrivelink/mapnavi/MapNaviContract$Presenter;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public isNavigationInstalled(Ljava/lang/String;)Z
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/MapNaviPresenter;->mMapNaviView:Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/neusoft/qdrivelink/mapnavi/MapNaviModel;->isNavigationInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 0

    return-void
.end method
