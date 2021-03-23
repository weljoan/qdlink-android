.class Lcom/neusoft/qdrivelink/music/MusicView$2;
.super Ljava/lang/Object;
.source "MusicView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/service/PlayMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/MusicView;->viewResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/MusicView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/MusicView;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public currentMessage(Lcom/neusoft/qdrivelink/music/bean/AudioItem;II)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 565
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x8

    .line 566
    iput v0, p2, Landroid/os/Message;->what:I

    add-int/2addr p3, p1

    .line 567
    iput p3, p2, Landroid/os/Message;->arg1:I

    .line 568
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView$2;->this$0:Lcom/neusoft/qdrivelink/music/MusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/MusicView;->access$2900(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
