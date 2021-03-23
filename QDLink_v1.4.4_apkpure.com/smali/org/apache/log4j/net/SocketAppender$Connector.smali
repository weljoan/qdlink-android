.class Lorg/apache/log4j/net/SocketAppender$Connector;
.super Ljava/lang/Thread;
.source "SocketAppender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/net/SocketAppender;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Connector"
.end annotation


# instance fields
.field interrupted:Z

.field private final synthetic this$0:Lorg/apache/log4j/net/SocketAppender;


# direct methods
.method constructor <init>(Lorg/apache/log4j/net/SocketAppender;)V
    .locals 0

    .line 431
    iput-object p1, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 433
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->interrupted:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 438
    :goto_0
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->interrupted:Z

    if-nez v0, :cond_1

    .line 440
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget v0, v0, Lorg/apache/log4j/net/SocketAppender;->reconnectionDelay:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lorg/apache/log4j/net/SocketAppender$Connector;->sleep(J)V

    .line 441
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Attempting connection to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v1, v1, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 442
    new-instance v0, Ljava/net/Socket;

    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v1, v1, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget v2, v2, Lorg/apache/log4j/net/SocketAppender;->port:I

    invoke-direct {v0, v1, v2}, Ljava/net/Socket;-><init>(Ljava/net/InetAddress;I)V

    .line 443
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :try_start_1
    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-virtual {v0}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, v1, Lorg/apache/log4j/net/SocketAppender;->oos:Ljava/io/ObjectOutputStream;

    .line 445
    iget-object v0, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/log4j/net/SocketAppender;->access$002(Lorg/apache/log4j/net/SocketAppender;Lorg/apache/log4j/net/SocketAppender$Connector;)Lorg/apache/log4j/net/SocketAppender$Connector;

    const-string v0, "Connection established. Exiting connector thread."

    .line 446
    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 447
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 448
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/net/ConnectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .line 456
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_0

    .line 457
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 459
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not connect to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v2, v2, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ". Exception is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 453
    :catch_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Remote host "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/net/SocketAppender$Connector;->this$0:Lorg/apache/log4j/net/SocketAppender;

    iget-object v1, v1, Lorg/apache/log4j/net/SocketAppender;->address:Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " refused connection."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    const-string v0, "Connector interrupted. Leaving loop."

    .line 450
    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
