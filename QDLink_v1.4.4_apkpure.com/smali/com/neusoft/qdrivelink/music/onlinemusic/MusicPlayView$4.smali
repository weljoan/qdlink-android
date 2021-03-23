.class Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$4;
.super Ljava/lang/Object;
.source "MusicPlayView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/service/PlayMessage;


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

    .line 490
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$4;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentMessage(Lcom/neusoft/qdrivelink/music/bean/AudioItem;II)V
    .locals 0

    .line 493
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x108

    .line 494
    iput p2, p1, Landroid/os/Message;->what:I

    .line 495
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 496
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$4;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->access$1800(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
