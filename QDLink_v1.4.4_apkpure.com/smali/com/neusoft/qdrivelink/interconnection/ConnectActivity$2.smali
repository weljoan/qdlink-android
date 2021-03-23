.class Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$2;
.super Ljava/lang/Object;
.source "ConnectActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->checkPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->access$002(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;Z)Z

    .line 95
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity$2;->this$0:Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;->access$100(Lcom/neusoft/qdrivelink/interconnection/ConnectActivity;)V

    return-void
.end method
