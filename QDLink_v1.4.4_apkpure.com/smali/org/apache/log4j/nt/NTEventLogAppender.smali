.class public Lorg/apache/log4j/nt/NTEventLogAppender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "NTEventLogAppender.java"


# instance fields
.field private _handle:I

.field private server:Ljava/lang/String;

.field private source:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "os.arch"

    .line 164
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "amd64"

    const-string v3, "ia64"

    const-string v4, "x86"

    .line 166
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    .line 169
    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 171
    :try_start_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "NTEventLogAppender."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v0, 0x1

    goto :goto_2

    :catch_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    :goto_2
    if-nez v0, :cond_1

    const-string v0, "NTEventLogAppender"

    .line 179
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, v0, v0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, v0, p1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 2

    .line 68
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    const/4 v1, 0x0

    .line 44
    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    .line 45
    iput-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    if-nez p2, :cond_0

    const-string p2, "Log4j"

    :cond_0
    if-nez p3, :cond_1

    .line 73
    new-instance p3, Lorg/apache/log4j/TTCCLayout;

    invoke-direct {p3}, Lorg/apache/log4j/TTCCLayout;-><init>()V

    iput-object p3, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->layout:Lorg/apache/log4j/Layout;

    goto :goto_0

    .line 75
    :cond_1
    iput-object p3, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->layout:Lorg/apache/log4j/Layout;

    .line 79
    :goto_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 81
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Layout;)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, v0, p1, p2}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0, p1}, Lorg/apache/log4j/nt/NTEventLogAppender;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/apache/log4j/Layout;)V

    return-void
.end method

.method private native deregisterEventSource(I)V
.end method

.method private native registerEventSource(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native reportEvent(ILjava/lang/String;I)V
.end method


# virtual methods
.method public activateOptions()V
    .locals 2

    .line 93
    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 95
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->server:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->registerEventSource(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Could not register event source."

    .line 97
    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    .line 98
    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    :cond_0
    :goto_0
    return-void
.end method

.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 5

    .line 106
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Layout;->format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    iget-object v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->layout:Lorg/apache/log4j/Layout;

    invoke-virtual {v1}, Lorg/apache/log4j/Layout;->ignoresThrowable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 112
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 114
    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/Level;->toInt()I

    move-result p1

    .line 125
    iget v1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0, p1}, Lorg/apache/log4j/nt/NTEventLogAppender;->reportEvent(ILjava/lang/String;I)V

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public finalize()V
    .locals 1

    .line 131
    iget v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    invoke-direct {p0, v0}, Lorg/apache/log4j/nt/NTEventLogAppender;->deregisterEventSource(I)V

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->_handle:I

    return-void
.end method

.method public getSource()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    .line 141
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/nt/NTEventLogAppender;->source:Ljava/lang/String;

    return-void
.end method
