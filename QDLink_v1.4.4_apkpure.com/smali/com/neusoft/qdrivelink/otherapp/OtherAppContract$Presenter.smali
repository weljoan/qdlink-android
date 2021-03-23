.class public interface abstract Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;
.super Ljava/lang/Object;
.source "OtherAppContract.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/otherapp/OtherAppContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract addAppInfo(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V
.end method

.method public abstract deleteAppInfo(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V
.end method

.method public abstract getAllAppData()Ljava/util/HashMap;
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
.end method
