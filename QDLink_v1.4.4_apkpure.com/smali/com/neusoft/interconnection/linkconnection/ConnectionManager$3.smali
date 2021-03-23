.class Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Z

.field private synthetic b:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;Z)V
    .locals 0

    .line 2140
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;->b:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    iput-boolean p2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2143
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;->b:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->e(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    move-result-object v1

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;->b:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->f(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;[B[B)V

    .line 2144
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "new replyScreenCaptureSupport() flag:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2145
    iget-boolean v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;->a:Z

    if-nez v0, :cond_0

    .line 2147
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$3;->b:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-virtual {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->onUSBDisconnected()V

    :cond_0
    return-void
.end method
