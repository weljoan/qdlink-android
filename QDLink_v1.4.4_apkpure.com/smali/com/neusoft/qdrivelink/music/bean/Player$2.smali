.class Lcom/neusoft/qdrivelink/music/bean/Player$2;
.super Landroid/os/Handler;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/bean/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/bean/Player;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/bean/Player;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/bean/Player$2;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player$2;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/bean/Player;->access$200(Lcom/neusoft/qdrivelink/music/bean/Player;)Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/bean/Player$2;->this$0:Lcom/neusoft/qdrivelink/music/bean/Player;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/bean/Player;->access$200(Lcom/neusoft/qdrivelink/music/bean/Player;)Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v0, v1, v2, p1}, Lcom/neusoft/qdrivelink/music/bean/Player$PlayCallback;->onSeekChanged(IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
