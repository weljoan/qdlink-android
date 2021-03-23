.class Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$8;
.super Ljava/util/TimerTask;
.source "QdriveConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->startSendAutoTimer()V
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

    .line 1941
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$8;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1944
    invoke-static {}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$900()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1945
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$8;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->access$800(Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1951
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService$8;->this$0:Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/qdrivelink/interconnection/QdriveConnService;->replyPhoneToCarBTAutoConnected(ILjava/lang/String;)V

    goto :goto_0

    .line 1947
    :cond_1
    invoke-static {}, Lcom/neusoft/interconnection/ConnectionLinkManager;->getInstance()Lcom/neusoft/interconnection/ConnectionLinkManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/neusoft/interconnection/ConnectionLinkManager;->replyToCarAutoBTConnectedState(I)V

    :cond_2
    :goto_0
    return-void
.end method
