.class public Lorg/apache/log4j/net/SocketHubAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "SocketHubAppender.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;
    }
.end annotation


# static fields
.field static final DEFAULT_PORT:I = 0x11d0

.field public static final ZONE:Ljava/lang/String; = "_log4j_obj_tcpaccept_appender.local."


# instance fields
.field private advertiseViaMulticastDNS:Z

.field private application:Ljava/lang/String;

.field private buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

.field private locationInfo:Z

.field private oosList:Ljava/util/Vector;

.field private port:I

.field private serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

.field private serverSocket:Ljava/net/ServerSocket;

.field private zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 130
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    const/16 v0, 0x11d0

    .line 114
    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 118
    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 135
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    const/16 v0, 0x11d0

    .line 114
    iput v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 115
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    const/4 v1, 0x0

    .line 117
    iput-boolean v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    .line 118
    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    .line 136
    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    .line 137
    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    return-void
.end method

.method static synthetic access$000(Lorg/apache/log4j/net/SocketHubAppender;)Ljava/net/ServerSocket;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverSocket:Ljava/net/ServerSocket;

    return-object p0
.end method

.method static synthetic access$002(Lorg/apache/log4j/net/SocketHubAppender;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    .locals 0

    .line 108
    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverSocket:Ljava/net/ServerSocket;

    return-object p1
.end method

.method static synthetic access$100(Lorg/apache/log4j/net/SocketHubAppender;)Lorg/apache/log4j/helpers/CyclicBuffer;
    .locals 0

    .line 108
    iget-object p0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    return-object p0
.end method

.method private startServer()V
    .locals 3

    .line 356
    new-instance v0, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    iget v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-direct {v0, p0, v1, v2}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;-><init>(Lorg/apache/log4j/net/SocketHubAppender;ILjava/util/Vector;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 4

    .line 144
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_0

    .line 145
    new-instance v0, Lorg/apache/log4j/net/ZeroConfSupport;

    iget v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "_log4j_obj_tcpaccept_appender.local."

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/log4j/net/ZeroConfSupport;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    .line 146
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->advertise()V

    .line 148
    :cond_0
    invoke-direct {p0}, Lorg/apache/log4j/net/SocketHubAppender;->startServer()V

    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 206
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    .line 209
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "application"

    .line 210
    invoke-virtual {p1, v1, v0}, Lorg/apache/log4j/spi/LoggingEvent;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    :cond_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 213
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 215
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 216
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    if-eqz v0, :cond_2

    .line 219
    invoke-virtual {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;->add(Lorg/apache/log4j/spi/LoggingEvent;)V

    :cond_2
    if-eqz p1, :cond_6

    .line 224
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 229
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_6

    const/4 v1, 0x0

    .line 233
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/ObjectOutputStream;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_1

    :catch_0
    nop

    :goto_1
    if-nez v1, :cond_4

    goto :goto_3

    .line 246
    :cond_4
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 247
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 251
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->reset()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 254
    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_5

    .line 255
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 258
    :cond_5
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->removeElementAt(I)V

    const-string v1, "dropped connection"

    .line 259
    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    add-int/lit8 v0, v0, -0x1

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_3
    return-void
.end method

.method public cleanUp()V
    .locals 4

    const-string v0, "could not close oos."

    const-string v1, "stopping ServerSocket"

    .line 177
    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 178
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;->stopMonitor()V

    const/4 v1, 0x0

    .line 179
    iput-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->serverMonitor:Lorg/apache/log4j/net/SocketHubAppender$ServerMonitor;

    const-string v1, "closing client connections"

    .line 182
    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 183
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ObjectOutputStream;

    if-eqz v1, :cond_0

    .line 187
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 192
    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v1

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 190
    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 195
    :goto_1
    iget-object v1, p0, Lorg/apache/log4j/net/SocketHubAppender;->oosList:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 158
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->closed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 159
    monitor-exit p0

    return-void

    .line 161
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "closing SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 162
    iput-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->closed:Z

    .line 163
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->zeroConf:Lorg/apache/log4j/net/ZeroConfSupport;

    invoke-virtual {v0}, Lorg/apache/log4j/net/ZeroConfSupport;->unadvertise()V

    .line 166
    :cond_1
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->cleanUp()V

    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "SocketHubAppender "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketHubAppender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " closed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected createServerSocket(I)Ljava/net/ServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 366
    new-instance v0, Ljava/net/ServerSocket;

    invoke-direct {v0, p1}, Ljava/net/ServerSocket;-><init>(I)V

    return-object v0
.end method

.method public getApplication()Ljava/lang/String;
    .locals 1

    .line 297
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    return-object v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 324
    :cond_0
    invoke-virtual {v0}, Lorg/apache/log4j/helpers/CyclicBuffer;->getMaxSize()I

    move-result v0

    return v0
.end method

.method public getLocationInfo()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    return v0
.end method

.method public getPort()I
    .locals 1

    .line 304
    iget v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    return v0
.end method

.method public isAdvertiseViaMulticastDNS()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    return v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setAdvertiseViaMulticastDNS(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->advertiseViaMulticastDNS:Z

    return-void
.end method

.method public setApplication(Ljava/lang/String;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->application:Ljava/lang/String;

    return-void
.end method

.method public setBufferSize(I)V
    .locals 1

    .line 313
    new-instance v0, Lorg/apache/log4j/helpers/CyclicBuffer;

    invoke-direct {v0, p1}, Lorg/apache/log4j/helpers/CyclicBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/net/SocketHubAppender;->buffer:Lorg/apache/log4j/helpers/CyclicBuffer;

    return-void
.end method

.method public setLocationInfo(Z)V
    .locals 0

    .line 334
    iput-boolean p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->locationInfo:Z

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 280
    iput p1, p0, Lorg/apache/log4j/net/SocketHubAppender;->port:I

    return-void
.end method
