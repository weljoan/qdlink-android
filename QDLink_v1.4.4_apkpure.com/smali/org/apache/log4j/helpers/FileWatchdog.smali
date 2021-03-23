.class public abstract Lorg/apache/log4j/helpers/FileWatchdog;
.super Ljava/lang/Thread;
.source "FileWatchdog.java"


# static fields
.field public static final DEFAULT_DELAY:J = 0xea60L


# instance fields
.field protected delay:J

.field file:Ljava/io/File;

.field protected filename:Ljava/lang/String;

.field interrupted:Z

.field lastModif:J

.field warnedAlready:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 2

    const-string v0, "FileWatchdog"

    .line 54
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/32 v0, 0xea60

    .line 45
    iput-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    const-wide/16 v0, 0x0

    .line 48
    iput-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    .line 50
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    .line 55
    iput-object p1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    .line 56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lorg/apache/log4j/helpers/FileWatchdog;->setDaemon(Z)V

    .line 58
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->checkAndConfigure()V

    return-void
.end method


# virtual methods
.method protected checkAndConfigure()V
    .locals 5

    const/4 v0, 0x1

    .line 77
    :try_start_0
    iget-object v1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 86
    iget-object v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 87
    iget-wide v2, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 88
    iput-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->lastModif:J

    .line 89
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->doOnChange()V

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    goto :goto_0

    .line 93
    :cond_0
    iget-boolean v1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    if-nez v1, :cond_1

    .line 94
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "] does not exist."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 95
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->warnedAlready:Z

    :cond_1
    :goto_0
    return-void

    .line 79
    :catch_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Was not allowed to read check file existance, file:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/helpers/FileWatchdog;->filename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 81
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    return-void
.end method

.method protected abstract doOnChange()V
.end method

.method public run()V
    .locals 2

    .line 102
    :goto_0
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->interrupted:Z

    if-nez v0, :cond_0

    .line 104
    :try_start_0
    iget-wide v0, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :catch_0
    invoke-virtual {p0}, Lorg/apache/log4j/helpers/FileWatchdog;->checkAndConfigure()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDelay(J)V
    .locals 0

    .line 66
    iput-wide p1, p0, Lorg/apache/log4j/helpers/FileWatchdog;->delay:J

    return-void
.end method
