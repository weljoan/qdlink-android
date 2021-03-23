.class public Lcn/dr/lib/log/log4j/Log4jFactory;
.super Ljava/lang/Object;
.source "Log4jFactory.java"


# static fields
.field public static final DEFAULT_APP_NAME:Ljava/lang/String; = "MyApp"

.field public static final DEFAULT_LOG_FILE_PATH:Ljava/lang/String;

.field public static final DEFAULT_LOG_FILE_PATTERN:Ljava/lang/String; = "[%-d{yyyy-MM-dd HH:mm:ss}][Class: %c.%M(%F:%L)] %n[Level: %-5p] - Msg: %m%n%n"

.field public static final DEFAULT_LOG_LEVEL_PRODUCE:Lorg/apache/log4j/Level;

.field public static final DEFAULT_LOG_LEVEL_RELEASE:Lorg/apache/log4j/Level;

.field public static final LogEnvirment_PRODUCE:Ljava/lang/Integer;

.field public static final LogEnvirment_RELEASE:Ljava/lang/Integer;

.field private static final mInstance:Lcn/dr/lib/log/log4j/Log4jFactory;


# instance fields
.field private isEnable:Ljava/lang/Boolean;

.field private logEnvirment:Ljava/lang/Integer;

.field private logFilePath:Ljava/lang/String;

.field private logFilePatttern:Ljava/lang/String;

.field private logLevel_produce:Lorg/apache/log4j/Level;

.field private logLevel_release:Lorg/apache/log4j/Level;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MyApp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Log"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->DEFAULT_LOG_FILE_PATH:Ljava/lang/String;

    .line 53
    sget-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    sput-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->DEFAULT_LOG_LEVEL_PRODUCE:Lorg/apache/log4j/Level;

    .line 58
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    sput-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->DEFAULT_LOG_LEVEL_RELEASE:Lorg/apache/log4j/Level;

    const/16 v0, 0x64

    .line 63
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->LogEnvirment_PRODUCE:Ljava/lang/Integer;

    const/16 v0, 0xc8

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->LogEnvirment_RELEASE:Ljava/lang/Integer;

    .line 73
    new-instance v0, Lcn/dr/lib/log/log4j/Log4jFactory;

    invoke-direct {v0}, Lcn/dr/lib/log/log4j/Log4jFactory;-><init>()V

    sput-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->mInstance:Lcn/dr/lib/log/log4j/Log4jFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    sget-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->DEFAULT_LOG_FILE_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logFilePath:Ljava/lang/String;

    const-string v0, "[%-d{yyyy-MM-dd HH:mm:ss}][Class: %c.%M(%F:%L)] %n[Level: %-5p] - Msg: %m%n%n"

    .line 83
    iput-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logFilePatttern:Ljava/lang/String;

    .line 88
    sget-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->DEFAULT_LOG_LEVEL_PRODUCE:Lorg/apache/log4j/Level;

    iput-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logLevel_produce:Lorg/apache/log4j/Level;

    .line 93
    sget-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->DEFAULT_LOG_LEVEL_RELEASE:Lorg/apache/log4j/Level;

    iput-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logLevel_release:Lorg/apache/log4j/Level;

    .line 98
    sget-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->LogEnvirment_PRODUCE:Ljava/lang/Integer;

    iput-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logEnvirment:Ljava/lang/Integer;

    const/4 v0, 0x1

    .line 103
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->isEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public static getInstance()Lcn/dr/lib/log/log4j/Log4jFactory;
    .locals 1

    .line 115
    sget-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->mInstance:Lcn/dr/lib/log/log4j/Log4jFactory;

    return-object v0
.end method

.method private setLogToProduce(Lcn/dr/lib/log/log4j/LogConfig;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logLevel_produce:Lorg/apache/log4j/Level;

    invoke-virtual {p1, v0}, Lcn/dr/lib/log/log4j/LogConfig;->setRootLevel(Lorg/apache/log4j/Level;)V

    return-void
.end method

.method private setLogToRelease(Lcn/dr/lib/log/log4j/LogConfig;)V
    .locals 1

    .line 240
    iget-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logLevel_release:Lorg/apache/log4j/Level;

    invoke-virtual {p1, v0}, Lcn/dr/lib/log/log4j/LogConfig;->setRootLevel(Lorg/apache/log4j/Level;)V

    return-void
.end method


# virtual methods
.method public configLog()V
    .locals 3

    .line 123
    invoke-virtual {p0}, Lcn/dr/lib/log/log4j/Log4jFactory;->getIsEnable()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 127
    :cond_0
    new-instance v0, Lcn/dr/lib/log/log4j/LogConfig;

    invoke-direct {v0}, Lcn/dr/lib/log/log4j/LogConfig;-><init>()V

    .line 129
    iget-object v1, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/dr/lib/log/log4j/LogConfig;->setFileName(Ljava/lang/String;)V

    .line 131
    sget-object v1, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    const-string v2, "org.apache"

    invoke-virtual {v0, v2, v1}, Lcn/dr/lib/log/log4j/LogConfig;->setLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)V

    .line 133
    iget-object v1, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logFilePatttern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/dr/lib/log/log4j/LogConfig;->setFilePattern(Ljava/lang/String;)V

    const-wide/32 v1, 0x500000

    .line 135
    invoke-virtual {v0, v1, v2}, Lcn/dr/lib/log/log4j/LogConfig;->setMaxFileSize(J)V

    const/4 v1, 0x1

    .line 137
    invoke-virtual {v0, v1}, Lcn/dr/lib/log/log4j/LogConfig;->setImmediateFlush(Z)V

    .line 139
    iget-object v1, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logEnvirment:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_2

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 146
    :cond_1
    invoke-direct {p0, v0}, Lcn/dr/lib/log/log4j/Log4jFactory;->setLogToRelease(Lcn/dr/lib/log/log4j/LogConfig;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-direct {p0, v0}, Lcn/dr/lib/log/log4j/Log4jFactory;->setLogToProduce(Lcn/dr/lib/log/log4j/LogConfig;)V

    .line 150
    :goto_0
    invoke-virtual {v0}, Lcn/dr/lib/log/log4j/LogConfig;->configure()V

    return-void
.end method

.method public getIsEnable()Ljava/lang/Boolean;
    .locals 1

    .line 217
    iget-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->isEnable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getLogEnvirment()Ljava/lang/Integer;
    .locals 1

    .line 244
    iget-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logEnvirment:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLogFilePath()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getLogFilePatttern()Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logFilePatttern:Ljava/lang/String;

    return-object v0
.end method

.method public getLogLevel_produce()Lorg/apache/log4j/Level;
    .locals 1

    .line 191
    iget-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logLevel_produce:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLogLevel_release()Lorg/apache/log4j/Level;
    .locals 1

    .line 204
    iget-object v0, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logLevel_release:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public setIsEnable(Ljava/lang/Boolean;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->isEnable:Ljava/lang/Boolean;

    return-void
.end method

.method public setLogEnvirment(Ljava/lang/Integer;)V
    .locals 1

    .line 254
    sget-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->LogEnvirment_PRODUCE:Ljava/lang/Integer;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/dr/lib/log/log4j/Log4jFactory;->LogEnvirment_RELEASE:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please modify the parameter logEnvirment to LogFactory.LogEnvirment_PRODUCE or LogFactory.LogEnvirment_RELEASE!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 258
    :cond_1
    :goto_0
    iput-object p1, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logEnvirment:Ljava/lang/Integer;

    return-void
.end method

.method public setLogFilePath(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iput-object p1, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logFilePath:Ljava/lang/String;

    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n1\u3001Please make sure that the two uses-permissions READ_EXTERNAL_STORAGE and WRITE_EXTERNAL_STORAGE have been added to your application! \n2\u3001Please make sure that the FilePath \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is exist!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLogFilePatttern(Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_0

    const-string v0, ""

    .line 183
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    iput-object p1, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logFilePatttern:Ljava/lang/String;

    return-void

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The parameter logFilePatttern: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" cannot be null or \"\"!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLogLevel_produce(Lorg/apache/log4j/Level;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logLevel_produce:Lorg/apache/log4j/Level;

    return-void
.end method

.method public setLogLevel_release(Lorg/apache/log4j/Level;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcn/dr/lib/log/log4j/Log4jFactory;->logLevel_release:Lorg/apache/log4j/Level;

    return-void
.end method
