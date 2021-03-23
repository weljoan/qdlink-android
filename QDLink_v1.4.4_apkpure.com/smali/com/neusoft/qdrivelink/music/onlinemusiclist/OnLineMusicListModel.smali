.class public Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListModel;
.super Ljava/lang/Object;
.source "OnLineMusicListModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOnLineMusicSongList(Ljava/lang/String;Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V
    .locals 0

    .line 17
    invoke-virtual {p1, p0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestSongList(Ljava/lang/String;)V

    .line 18
    new-instance p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListModel$1;

    invoke-direct {p0, p2}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListModel$1;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V

    invoke-virtual {p1, p0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->setWySongListCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;)V

    return-void
.end method
