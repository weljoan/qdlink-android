.class Lcom/neusoft/qdrivelink/music/search/SearchMusicView$3;
.super Ljava/lang/Object;
.source "SearchMusicView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/service/PlayState;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->viewResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$3;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playMusicState(I)V
    .locals 2

    .line 328
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x105

    .line 329
    iput v1, v0, Landroid/os/Message;->what:I

    .line 330
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 331
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$3;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$1400(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
