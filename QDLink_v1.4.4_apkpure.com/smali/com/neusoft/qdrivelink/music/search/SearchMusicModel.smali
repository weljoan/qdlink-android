.class public Lcom/neusoft/qdrivelink/music/search/SearchMusicModel;
.super Ljava/lang/Object;
.source "SearchMusicModel.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static responseSearchMusic(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/search/SearchMusicView;Ljava/lang/String;IIII)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    .line 19
    invoke-virtual/range {v0 .. v5}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestSearch(Ljava/lang/String;IIII)V

    .line 21
    new-instance p2, Lcom/neusoft/qdrivelink/music/search/SearchMusicModel$1;

    invoke-direct {p2, p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicModel$1;-><init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)V

    invoke-virtual {p0, p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->setWySearchCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;)V

    return-void
.end method
