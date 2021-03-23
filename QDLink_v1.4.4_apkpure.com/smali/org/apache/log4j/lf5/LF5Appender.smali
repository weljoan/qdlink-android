.class public Lorg/apache/log4j/lf5/LF5Appender;
.super Lorg/apache/log4j/AppenderSkeleton;
.source "LF5Appender.java"


# static fields
.field protected static _defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

.field protected static _finalizer:Lorg/apache/log4j/lf5/AppenderFinalizer;


# instance fields
.field protected _logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultInstance()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/LF5Appender;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lorg/apache/log4j/AppenderSkeleton;-><init>()V

    if-eqz p1, :cond_0

    .line 83
    iput-object p1, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    :cond_0
    return-void
.end method

.method protected static declared-synchronized getDefaultInstance()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .locals 4

    const-class v0, Lorg/apache/log4j/lf5/LF5Appender;

    monitor-enter v0

    .line 205
    :try_start_0
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 207
    :try_start_1
    new-instance v1, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLog4JLevels()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;-><init>(Ljava/util/List;)V

    sput-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 209
    new-instance v1, Lorg/apache/log4j/lf5/AppenderFinalizer;

    sget-object v2, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-direct {v1, v2}, Lorg/apache/log4j/lf5/AppenderFinalizer;-><init>(Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;)V

    sput-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_finalizer:Lorg/apache/log4j/lf5/AppenderFinalizer;

    .line 211
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorWidth()I

    move-result v2

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorHeight()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFrameSize(II)V

    .line 213
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(I)V

    .line 214
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->show()V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 217
    :try_start_2
    sput-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    .line 221
    :cond_0
    :goto_0
    sget-object v1, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected static getDefaultMonitorHeight()I
    .locals 1

    .line 255
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getScreenHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getDefaultMonitorWidth()I
    .locals 1

    .line 251
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getScreenWidth()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    return v0
.end method

.method protected static getScreenHeight()I
    .locals 1

    .line 244
    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->height:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/16 v0, 0x258

    return v0
.end method

.method protected static getScreenWidth()I
    .locals 1

    .line 231
    :try_start_0
    invoke-static {}, Ljava/awt/Toolkit;->getDefaultToolkit()Ljava/awt/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/Toolkit;->getScreenSize()Ljava/awt/Dimension;

    move-result-object v0

    iget v0, v0, Ljava/awt/Dimension;->width:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    const/16 v0, 0x320

    return v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 0

    .line 191
    new-instance p0, Lorg/apache/log4j/lf5/LF5Appender;

    invoke-direct {p0}, Lorg/apache/log4j/lf5/LF5Appender;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 9

    .line 99
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v0

    .line 100
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v1

    .line 101
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v2

    .line 102
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v3

    .line 103
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v4

    invoke-virtual {v4}, Lorg/apache/log4j/Level;->toString()Ljava/lang/String;

    move-result-object v4

    .line 104
    iget-wide v5, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 105
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v7

    .line 108
    new-instance v8, Lorg/apache/log4j/lf5/Log4JLogRecord;

    invoke-direct {v8}, Lorg/apache/log4j/lf5/Log4JLogRecord;-><init>()V

    .line 110
    invoke-virtual {v8, v0}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setCategory(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v8, v1}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setMessage(Ljava/lang/String;)V

    .line 112
    iget-object v0, v7, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {v8, v0}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setLocation(Ljava/lang/String;)V

    .line 113
    invoke-virtual {v8, v5, v6}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setMillis(J)V

    .line 114
    invoke-virtual {v8, v3}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setThreadDescription(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    .line 117
    invoke-virtual {v8, v2}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setNDC(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 119
    invoke-virtual {v8, v0}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setNDC(Ljava/lang/String;)V

    .line 122
    :goto_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setThrownStackTrace(Lorg/apache/log4j/spi/ThrowableInformation;)V

    .line 127
    :cond_1
    :try_start_0
    invoke-static {v4}, Lorg/apache/log4j/lf5/LogLevel;->valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;

    move-result-object p1

    invoke-virtual {v8, p1}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V
    :try_end_0
    .catch Lorg/apache/log4j/lf5/LogLevelFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 131
    :catch_0
    sget-object p1, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {v8, p1}, Lorg/apache/log4j/lf5/Log4JLogRecord;->setLevel(Lorg/apache/log4j/lf5/LogLevel;)V

    .line 134
    :goto_1
    iget-object p1, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    if-eqz p1, :cond_2

    .line 135
    invoke-virtual {p1, v8}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->addMessage(Lorg/apache/log4j/lf5/LogRecord;)V

    :cond_2
    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public equals(Lorg/apache/log4j/lf5/LF5Appender;)Z
    .locals 1

    .line 183
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LF5Appender;->getLogBrokerMonitor()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    move-result-object p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getLogBrokerMonitor()Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;
    .locals 1

    .line 187
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    return-object v0
.end method

.method public requiresLayout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setCallSystemExitOnClose(Z)V
    .locals 1

    .line 169
    iget-object v0, p0, Lorg/apache/log4j/lf5/LF5Appender;->_logMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setCallSystemExitOnClose(Z)V

    return-void
.end method

.method public setMaxNumberOfRecords(I)V
    .locals 1

    .line 195
    sget-object v0, Lorg/apache/log4j/lf5/LF5Appender;->_defaultLogMonitor:Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setMaxNumberOfLogRecords(I)V

    return-void
.end method
