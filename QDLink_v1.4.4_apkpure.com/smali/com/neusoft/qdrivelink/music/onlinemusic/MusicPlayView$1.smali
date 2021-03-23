.class Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$1;
.super Ljava/lang/Object;
.source "MusicPlayView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V
    .locals 0

    .line 314
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$1;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 0

    const/4 p1, 0x0

    .line 318
    sput p1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    .line 319
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$1;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$000(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->setSelectedPosition(I)V

    .line 321
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playCurrentMusic(I)V

    return-void
.end method
