.class public Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;
.super Ljava/lang/Object;
.source "OnlyOnceErrorHandler.java"

# interfaces
.implements Lorg/apache/log4j/spi/ErrorHandler;


# instance fields
.field final ERROR_PREFIX:Ljava/lang/String;

.field final WARN_PREFIX:Ljava/lang/String;

.field firstTime:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "log4j warning: "

    .line 43
    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->WARN_PREFIX:Ljava/lang/String;

    const-string v0, "log4j error: "

    .line 44
    iput-object v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->ERROR_PREFIX:Ljava/lang/String;

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 1

    .line 95
    iget-boolean v0, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    :cond_0
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V

    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V
    .locals 0

    .line 79
    instance-of p3, p2, Ljava/io/InterruptedIOException;

    if-nez p3, :cond_0

    instance-of p3, p2, Ljava/lang/InterruptedException;

    if-eqz p3, :cond_1

    .line 80
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->interrupt()V

    .line 82
    :cond_1
    iget-boolean p3, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    if-eqz p3, :cond_2

    .line 83
    invoke-static {p1, p2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    .line 84
    iput-boolean p1, p0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;->firstTime:Z

    :cond_2
    return-void
.end method

.method public setAppender(Lorg/apache/log4j/Appender;)V
    .locals 0

    return-void
.end method

.method public setBackupAppender(Lorg/apache/log4j/Appender;)V
    .locals 0

    return-void
.end method

.method public setLogger(Lorg/apache/log4j/Logger;)V
    .locals 0

    return-void
.end method
