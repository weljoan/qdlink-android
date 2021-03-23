.class public interface abstract Lcom/neusoft/qdrivelink/music/MusicContract$View;
.super Ljava/lang/Object;
.source "MusicContract.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/BaseView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/MusicContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/neusoft/qdrivezeusbase/view/BaseView<",
        "Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract responseLocalMusicData(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract responseMusicRankData(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract responseSearchMusicList(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;)V"
        }
    .end annotation
.end method
