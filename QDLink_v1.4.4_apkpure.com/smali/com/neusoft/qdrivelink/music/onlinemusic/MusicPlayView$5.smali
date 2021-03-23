.class Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$5;
.super Ljava/lang/Object;
.source "MusicPlayView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;


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

    .line 504
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$5;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showPlayOrPause(I)V
    .locals 2

    .line 507
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x103

    .line 508
    iput v1, v0, Landroid/os/Message;->what:I

    .line 509
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 510
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$5;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1800(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
