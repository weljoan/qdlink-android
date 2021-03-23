.class Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$3;
.super Ljava/lang/Object;
.source "OnLineMusicListView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/service/PlayMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$3;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentMessage(Lcom/neusoft/qdrivelink/music/bean/AudioItem;II)V
    .locals 0

    .line 282
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentAlbumName()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$3;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$600(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$3;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object p1

    add-int/lit8 p3, p3, 0x1

    invoke-virtual {p1, p3}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method
