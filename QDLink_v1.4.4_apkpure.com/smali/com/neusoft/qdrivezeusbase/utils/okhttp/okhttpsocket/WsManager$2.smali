.class Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;
.super Lokhttp3/WebSocketListener;
.source "WsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-direct {p0}, Lokhttp3/WebSocketListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 158
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 159
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$400(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$5;

    invoke-direct {v0, p0, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$5;-><init>(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 166
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;->onClosed(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onClosing(Lokhttp3/WebSocket;ILjava/lang/String;)V
    .locals 1

    .line 141
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 142
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 143
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$400(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$4;-><init>(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;ILjava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 150
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;->onClosing(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailure(Lokhttp3/WebSocket;Ljava/lang/Throwable;Lokhttp3/Response;)V
    .locals 1

    .line 173
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$500(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)V

    .line 174
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 175
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 176
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$400(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$6;

    invoke-direct {v0, p0, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$6;-><init>(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;Ljava/lang/Throwable;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 183
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;->onFailure(Ljava/lang/Throwable;Lokhttp3/Response;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 1

    .line 125
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 126
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$400(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$3;

    invoke-direct {v0, p0, p2}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$3;-><init>(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;->onMessage(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onMessage(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 110
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 111
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$400(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$2;

    invoke-direct {v0, p0, p2}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$2;-><init>(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;Lokio/ByteString;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;->onMessage(Lokio/ByteString;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onOpen(Lokhttp3/WebSocket;Lokhttp3/Response;)V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$202(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;Lokhttp3/WebSocket;)Lokhttp3/WebSocket;

    .line 91
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->setCurrentStatus(I)V

    .line 92
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$300(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)V

    .line 93
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 94
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 95
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$400(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$1;

    invoke-direct {v0, p0, p2}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2$1;-><init>(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;Lokhttp3/Response;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 102
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$2;->this$0:Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;->access$000(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsStatusListener;->onOpen(Lokhttp3/Response;)V

    :cond_1
    :goto_0
    return-void
.end method
