.class Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;
.super Ljava/util/TimerTask;
.source "QdriveConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->startUpdateActivity()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 194
    sget-object v0, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const-string v0, "testwang"

    const-string v1, "case 0 MainActivity.myHandler != null"

    .line 195
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x104

    .line 197
    iput v1, v0, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    .line 198
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 199
    sget-object v1, Lcom/neusoft/qdrivelink/MainActivity;->myHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 200
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/Timer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 202
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$000(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 203
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$002(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/util/Timer;)Ljava/util/Timer;

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$100(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/TimerTask;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 206
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$100(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)Ljava/util/TimerTask;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 207
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$1;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$102(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;Ljava/util/TimerTask;)Ljava/util/TimerTask;

    :cond_1
    return-void
.end method
