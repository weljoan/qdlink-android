.class public Lorg/apache/log4j/net/SocketServer;
.super Ljava/lang/Object;
.source "SocketServer.java"


# static fields
.field static CONFIG_FILE_EXT:Ljava/lang/String; = ".lcf"

.field static GENERIC:Ljava/lang/String; = "generic"

.field static cat:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

.field static port:I

.field static server:Lorg/apache/log4j/net/SocketServer;


# instance fields
.field dir:Ljava/io/File;

.field genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

.field hierarchyMap:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.net.SocketServer"

    invoke-static {v0}, Lorg/apache/log4j/net/SocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lorg/apache/log4j/net/SocketServer;->dir:Ljava/io/File;

    .line 165
    new-instance p1, Ljava/util/Hashtable;

    const/16 v0, 0xb

    invoke-direct {p1, v0}, Ljava/util/Hashtable;-><init>(I)V

    iput-object p1, p0, Lorg/apache/log4j/net/SocketServer;->hierarchyMap:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 93
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method static init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 145
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lorg/apache/log4j/net/SocketServer;->port:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 148
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 149
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not interpret port number ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, "]."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/log4j/net/SocketServer;->usage(Ljava/lang/String;)V

    .line 152
    :goto_0
    invoke-static {p1}, Lorg/apache/log4j/PropertyConfigurator;->configure(Ljava/lang/String;)V

    .line 154
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-nez p1, :cond_0

    .line 156
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "] is not a directory."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/log4j/net/SocketServer;->usage(Ljava/lang/String;)V

    .line 158
    :cond_0
    new-instance p1, Lorg/apache/log4j/net/SocketServer;

    invoke-direct {p1, p0}, Lorg/apache/log4j/net/SocketServer;-><init>(Ljava/io/File;)V

    sput-object p1, Lorg/apache/log4j/net/SocketServer;->server:Lorg/apache/log4j/net/SocketServer;

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5

    .line 105
    array-length v0, p0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 106
    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-static {v0, v1, p0}, Lorg/apache/log4j/net/SocketServer;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p0, "Wrong number of arguments."

    .line 108
    invoke-static {p0}, Lorg/apache/log4j/net/SocketServer;->usage(Ljava/lang/String;)V

    .line 111
    :goto_0
    :try_start_0
    sget-object p0, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Listening on port "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget v1, Lorg/apache/log4j/net/SocketServer;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 112
    new-instance p0, Ljava/net/ServerSocket;

    sget v0, Lorg/apache/log4j/net/SocketServer;->port:I

    invoke-direct {p0, v0}, Ljava/net/ServerSocket;-><init>(I)V

    .line 114
    :goto_1
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v1, "Waiting to accept a new client."

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    .line 117
    sget-object v2, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Connected to client at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 119
    sget-object v2, Lorg/apache/log4j/net/SocketServer;->server:Lorg/apache/log4j/net/SocketServer;

    iget-object v2, v2, Lorg/apache/log4j/net/SocketServer;->hierarchyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/spi/LoggerRepository;

    if-nez v2, :cond_1

    .line 121
    sget-object v2, Lorg/apache/log4j/net/SocketServer;->server:Lorg/apache/log4j/net/SocketServer;

    invoke-virtual {v2, v1}, Lorg/apache/log4j/net/SocketServer;->configureHierarchy(Ljava/net/InetAddress;)Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v2

    .line 124
    :cond_1
    sget-object v1, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    const-string v3, "Starting new socket node."

    invoke-virtual {v1, v3}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 125
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lorg/apache/log4j/net/SocketNode;

    invoke-direct {v3, v0, v2}, Lorg/apache/log4j/net/SocketNode;-><init>(Ljava/net/Socket;Lorg/apache/log4j/spi/LoggerRepository;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 129
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method static usage(Ljava/lang/String;)V
    .locals 2

    .line 136
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 137
    sget-object p0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Usage: java "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v1, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.net.SocketServer"

    invoke-static {v1}, Lorg/apache/log4j/net/SocketServer;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/net/SocketServer;->class$org$apache$log4j$net$SocketServer:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " port configFile directory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 139
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method


# virtual methods
.method configureHierarchy(Ljava/net/InetAddress;)Lorg/apache/log4j/spi/LoggerRepository;
    .locals 4

    .line 171
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Locating configuration file for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    .line 175
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 177
    sget-object v0, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not parse the inetAddress ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string p1, "]. Using default hierarchy."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 179
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketServer;->genericHierarchy()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x0

    .line 181
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 183
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/apache/log4j/net/SocketServer;->dir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v0, Lorg/apache/log4j/net/SocketServer;->CONFIG_FILE_EXT:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 185
    new-instance v0, Lorg/apache/log4j/Hierarchy;

    new-instance v2, Lorg/apache/log4j/spi/RootLogger;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-direct {v2, v3}, Lorg/apache/log4j/spi/RootLogger;-><init>(Lorg/apache/log4j/Level;)V

    invoke-direct {v0, v2}, Lorg/apache/log4j/Hierarchy;-><init>(Lorg/apache/log4j/Logger;)V

    .line 186
    iget-object v2, p0, Lorg/apache/log4j/net/SocketServer;->hierarchyMap:Ljava/util/Hashtable;

    invoke-virtual {v2, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    new-instance p1, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {p1}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-object v0

    .line 192
    :cond_1
    sget-object p1, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not find config file ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 193
    invoke-virtual {p0}, Lorg/apache/log4j/net/SocketServer;->genericHierarchy()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object p1

    return-object p1
.end method

.method genericHierarchy()Lorg/apache/log4j/spi/LoggerRepository;
    .locals 4

    .line 199
    iget-object v0, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    if-nez v0, :cond_1

    .line 200
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/apache/log4j/net/SocketServer;->dir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    sget-object v3, Lorg/apache/log4j/net/SocketServer;->GENERIC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v3, Lorg/apache/log4j/net/SocketServer;->CONFIG_FILE_EXT:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    new-instance v1, Lorg/apache/log4j/Hierarchy;

    new-instance v2, Lorg/apache/log4j/spi/RootLogger;

    sget-object v3, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-direct {v2, v3}, Lorg/apache/log4j/spi/RootLogger;-><init>(Lorg/apache/log4j/Level;)V

    invoke-direct {v1, v2}, Lorg/apache/log4j/Hierarchy;-><init>(Lorg/apache/log4j/Logger;)V

    iput-object v1, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    .line 203
    new-instance v1, Lorg/apache/log4j/PropertyConfigurator;

    invoke-direct {v1}, Lorg/apache/log4j/PropertyConfigurator;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-virtual {v1, v0, v2}, Lorg/apache/log4j/PropertyConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    goto :goto_0

    .line 205
    :cond_0
    sget-object v1, Lorg/apache/log4j/net/SocketServer;->cat:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not find config file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v0, "]. Will use the default hierarchy."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->warn(Ljava/lang/Object;)V

    .line 207
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    .line 210
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/net/SocketServer;->genericHierarchy:Lorg/apache/log4j/spi/LoggerRepository;

    return-object v0
.end method
