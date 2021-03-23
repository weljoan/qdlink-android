.class public Lcn/dr/lib/log/log4j/LogConfig;
.super Ljava/lang/Object;
.source "LogConfig.java"


# instance fields
.field private fileName:Ljava/lang/String;

.field private filePattern:Ljava/lang/String;

.field private immediateFlush:Z

.field private internalDebugging:Z

.field private logCatPattern:Ljava/lang/String;

.field private maxBackupSize:I

.field private maxFileSize:J

.field private resetConfiguration:Z

.field private rootLevel:Lorg/apache/log4j/Level;

.field private useFileAppender:Z

.field private useLogCatAppender:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    iput-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->rootLevel:Lorg/apache/log4j/Level;

    const-string v0, "[%-d{yyyy-MM-dd HH:mm:ss}][Class: %c.%M(%F:%L)] %n[Level: %-5p] - Msg: %m%n"

    .line 41
    iput-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->filePattern:Ljava/lang/String;

    const-string v0, "[Class: %c.%M(%F:%L)] %n[Level: %-5p] - Msg: %m%n"

    .line 49
    iput-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->logCatPattern:Ljava/lang/String;

    const-string v0, "android-log4j.log"

    .line 50
    iput-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->fileName:Ljava/lang/String;

    const/4 v0, 0x5

    .line 51
    iput v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->maxBackupSize:I

    const-wide/32 v0, 0x500000

    .line 52
    iput-wide v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->maxFileSize:J

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->immediateFlush:Z

    .line 54
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->useLogCatAppender:Z

    .line 55
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->useFileAppender:Z

    .line 56
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->resetConfiguration:Z

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->internalDebugging:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    iput-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->rootLevel:Lorg/apache/log4j/Level;

    const-string v0, "[%-d{yyyy-MM-dd HH:mm:ss}][Class: %c.%M(%F:%L)] %n[Level: %-5p] - Msg: %m%n"

    .line 41
    iput-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->filePattern:Ljava/lang/String;

    const-string v0, "[Class: %c.%M(%F:%L)] %n[Level: %-5p] - Msg: %m%n"

    .line 49
    iput-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->logCatPattern:Ljava/lang/String;

    const-string v0, "android-log4j.log"

    .line 50
    iput-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->fileName:Ljava/lang/String;

    const/4 v0, 0x5

    .line 51
    iput v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->maxBackupSize:I

    const-wide/32 v0, 0x500000

    .line 52
    iput-wide v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->maxFileSize:J

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->immediateFlush:Z

    .line 54
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->useLogCatAppender:Z

    .line 55
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->useFileAppender:Z

    .line 56
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->resetConfiguration:Z

    const/4 v0, 0x0

    .line 57
    iput-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->internalDebugging:Z

    .line 63
    invoke-virtual {p0, p1}, Lcn/dr/lib/log/log4j/LogConfig;->setFileName(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IJLjava/lang/String;Lorg/apache/log4j/Level;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p6, p5}, Lcn/dr/lib/log/log4j/LogConfig;-><init>(Ljava/lang/String;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p2}, Lcn/dr/lib/log/log4j/LogConfig;->setMaxBackupSize(I)V

    .line 80
    invoke-virtual {p0, p3, p4}, Lcn/dr/lib/log/log4j/LogConfig;->setMaxFileSize(J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Level;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcn/dr/lib/log/log4j/LogConfig;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0, p2}, Lcn/dr/lib/log/log4j/LogConfig;->setRootLevel(Lorg/apache/log4j/Level;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Level;Ljava/lang/String;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcn/dr/lib/log/log4j/LogConfig;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p2}, Lcn/dr/lib/log/log4j/LogConfig;->setRootLevel(Lorg/apache/log4j/Level;)V

    .line 74
    invoke-virtual {p0, p3}, Lcn/dr/lib/log/log4j/LogConfig;->setFilePattern(Ljava/lang/String;)V

    return-void
.end method

.method private configureFileAppender()V
    .locals 5

    .line 108
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 110
    new-instance v1, Lorg/apache/log4j/PatternLayout;

    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->getFilePattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    .line 113
    :try_start_0
    new-instance v2, Lorg/apache/log4j/RollingFileAppender;

    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->getFileName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/log4j/RollingFileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->getMaxBackupSize()I

    move-result v1

    invoke-virtual {v2, v1}, Lorg/apache/log4j/RollingFileAppender;->setMaxBackupIndex(I)V

    .line 119
    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->getMaxFileSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lorg/apache/log4j/RollingFileAppender;->setMaximumFileSize(J)V

    .line 120
    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->isImmediateFlush()Z

    move-result v1

    invoke-virtual {v2, v1}, Lorg/apache/log4j/RollingFileAppender;->setImmediateFlush(Z)V

    .line 122
    invoke-virtual {v0, v2}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V

    return-void

    :catch_0
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception configuring log system"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private configureLogCatAppender()V
    .locals 3

    .line 126
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 127
    new-instance v1, Lorg/apache/log4j/PatternLayout;

    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->getLogCatPattern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/log4j/PatternLayout;-><init>(Ljava/lang/String;)V

    .line 128
    new-instance v2, Lcn/dr/lib/log/log4j/LogCatAppender;

    invoke-direct {v2, v1}, Lcn/dr/lib/log/log4j/LogCatAppender;-><init>(Lorg/apache/log4j/Layout;)V

    .line 130
    invoke-virtual {v0, v2}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V

    return-void
.end method


# virtual methods
.method public configure()V
    .locals 2

    .line 84
    invoke-static {}, Lorg/apache/log4j/Logger;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->isResetConfiguration()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->isInternalDebugging()Z

    move-result v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    .line 92
    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->isUseFileAppender()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    invoke-direct {p0}, Lcn/dr/lib/log/log4j/LogConfig;->configureFileAppender()V

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->isUseLogCatAppender()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 97
    invoke-direct {p0}, Lcn/dr/lib/log/log4j/LogConfig;->configureLogCatAppender()V

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/LogConfig;->getRootLevel()Lorg/apache/log4j/Level;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePattern()Ljava/lang/String;
    .locals 1

    .line 142
    iget-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->filePattern:Ljava/lang/String;

    return-object v0
.end method

.method public getLogCatPattern()Ljava/lang/String;
    .locals 1

    .line 150
    iget-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->logCatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxBackupSize()I
    .locals 1

    .line 166
    iget v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->maxBackupSize:I

    return v0
.end method

.method public getMaxFileSize()J
    .locals 2

    .line 174
    iget-wide v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->maxFileSize:J

    return-wide v0
.end method

.method public getRootLevel()Lorg/apache/log4j/Level;
    .locals 1

    .line 134
    iget-object v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->rootLevel:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public isImmediateFlush()Z
    .locals 1

    .line 182
    iget-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->immediateFlush:Z

    return v0
.end method

.method public isInternalDebugging()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->internalDebugging:Z

    return v0
.end method

.method public isResetConfiguration()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->resetConfiguration:Z

    return v0
.end method

.method public isUseFileAppender()Z
    .locals 1

    .line 190
    iget-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->useFileAppender:Z

    return v0
.end method

.method public isUseLogCatAppender()Z
    .locals 1

    .line 198
    iget-boolean v0, p0, Lcn/dr/lib/log/log4j/LogConfig;->useLogCatAppender:Z

    return v0
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->fileName:Ljava/lang/String;

    return-void
.end method

.method public setFilePattern(Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->filePattern:Ljava/lang/String;

    return-void
.end method

.method public setImmediateFlush(Z)V
    .locals 0

    .line 186
    iput-boolean p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->immediateFlush:Z

    return-void
.end method

.method public setInternalDebugging(Z)V
    .locals 0

    .line 214
    iput-boolean p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->internalDebugging:Z

    return-void
.end method

.method public setLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)V
    .locals 0

    .line 104
    invoke-static {p1}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object p1

    invoke-virtual {p1, p2}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    return-void
.end method

.method public setLogCatPattern(Ljava/lang/String;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->logCatPattern:Ljava/lang/String;

    return-void
.end method

.method public setMaxBackupSize(I)V
    .locals 0

    .line 170
    iput p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->maxBackupSize:I

    return-void
.end method

.method public setMaxFileSize(J)V
    .locals 0

    .line 178
    iput-wide p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->maxFileSize:J

    return-void
.end method

.method public setResetConfiguration(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->resetConfiguration:Z

    return-void
.end method

.method public setRootLevel(Lorg/apache/log4j/Level;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->rootLevel:Lorg/apache/log4j/Level;

    return-void
.end method

.method public setUseFileAppender(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->useFileAppender:Z

    return-void
.end method

.method public setUseLogCatAppender(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcn/dr/lib/log/log4j/LogConfig;->useLogCatAppender:Z

    return-void
.end method
