.class Lcom/neusoft/qdrivelink/music/MusicView$1$3;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/MusicView$1;->handleMessage(Landroid/os/Message;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/MusicView$1;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$3;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .locals 1

    .line 335
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$3;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    new-instance p2, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView$1$3;->this$1:Lcom/neusoft/qdrivelink/music/MusicView$1;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/MusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/MusicView;->access$800(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/neusoft/qdrivelink/music/qqmusic/QQMusicSyncView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-static {p1, v0, p2, v0}, Lcom/neusoft/qdrivelink/music/MusicView;->access$900(Lcom/neusoft/qdrivelink/music/MusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method
