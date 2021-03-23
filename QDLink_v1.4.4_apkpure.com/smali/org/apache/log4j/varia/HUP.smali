.class Lorg/apache/log4j/varia/HUP;
.super Ljava/lang/Thread;
.source "ExternallyRolledFileAppender.java"


# instance fields
.field er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

.field port:I


# direct methods
.method constructor <init>(Lorg/apache/log4j/varia/ExternallyRolledFileAppender;I)V
    .locals 0

    .line 114
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 115
    iput-object p1, p0, Lorg/apache/log4j/varia/HUP;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    .line 116
    iput p2, p0, Lorg/apache/log4j/varia/HUP;->port:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 121
    :goto_0
    invoke-virtual {p0}, Lorg/apache/log4j/varia/HUP;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    :try_start_0
    new-instance v0, Ljava/net/ServerSocket;

    iget v1, p0, Lorg/apache/log4j/varia/HUP;->port:I

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    .line 125
    :goto_1
    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Connected to client at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 127
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lorg/apache/log4j/varia/HUPNode;

    iget-object v4, p0, Lorg/apache/log4j/varia/HUP;->er:Lorg/apache/log4j/varia/ExternallyRolledFileAppender;

    invoke-direct {v3, v1, v4}, Lorg/apache/log4j/varia/HUPNode;-><init>(Ljava/net/Socket;Lorg/apache/log4j/varia/ExternallyRolledFileAppender;)V

    const-string v1, "ExternallyRolledFileAppender-HUP"

    invoke-direct {v2, v3, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 133
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 130
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 131
    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
