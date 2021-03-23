.class public interface abstract Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;
.super Ljava/lang/Object;
.source "MusicContract.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/BasePresenter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/MusicContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Presenter"
.end annotation


# virtual methods
.method public abstract changeMusicType(I[Landroid/widget/TextView;[Landroid/view/View;Landroid/content/Context;[Landroidx/constraintlayout/widget/ConstraintLayout;)V
.end method

.method public abstract requestLocalMusicData(Landroid/content/Context;)V
.end method

.method public abstract requestMusicRankData()V
.end method

.method public abstract requestSearchMusic(Ljava/lang/String;IIII)V
.end method
