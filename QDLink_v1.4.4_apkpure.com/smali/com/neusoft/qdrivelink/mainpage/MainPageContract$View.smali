.class public interface abstract Lcom/neusoft/qdrivelink/mainpage/MainPageContract$View;
.super Ljava/lang/Object;
.source "MainPageContract.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/mainpage/MainPageContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/neusoft/qdrivezeusbase/view/BaseView<",
        "Lcom/neusoft/qdrivelink/mainpage/MainPageContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract changePageComplete(Landroidx/constraintlayout/widget/ConstraintSet;ILandroid/widget/ImageView;)V
.end method

.method public abstract updateTime(Ljava/lang/String;Ljava/lang/String;)V
.end method
