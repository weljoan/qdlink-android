.class public interface abstract Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;
.super Ljava/lang/Object;
.source "MainPageContract.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/mainpage/MainPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract getSelectBtnViewPosition(Landroid/widget/ImageView;[Landroid/widget/ImageView;)I
.end method

.method public abstract initAppInfo()V
.end method

.method public abstract isAppInstalled(Ljava/lang/String;)Z
.end method

.method public abstract pageChange(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/ImageView;[Landroid/widget/ImageView;ILandroid/widget/ImageView;)V
.end method

.method public abstract startTimeRecord()V
.end method
