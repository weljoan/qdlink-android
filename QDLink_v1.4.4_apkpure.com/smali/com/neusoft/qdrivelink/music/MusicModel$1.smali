.class final Lcom/neusoft/qdrivelink/music/MusicModel$1;
.super Ljava/lang/Object;
.source "MusicModel.java"

# interfaces
.implements Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/MusicModel;->getMusicRankData(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;Lcom/neusoft/qdrivelink/music/MusicView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mMusicView:Lcom/neusoft/qdrivelink/music/MusicView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/MusicView;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicModel$1;->val$mMusicView:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public responseRankList(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;",
            ">;)V"
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicModel$1;->val$mMusicView:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-virtual {v0, p1, p2}, Lcom/neusoft/qdrivelink/music/MusicView;->responseMusicRankData(ILjava/util/List;)V

    return-void
.end method
