.class public interface abstract Lorg/apache/log4j/spi/ErrorHandler;
.super Ljava/lang/Object;
.source "ErrorHandler.java"

# interfaces
.implements Lorg/apache/log4j/spi/OptionHandler;


# virtual methods
.method public abstract error(Ljava/lang/String;)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Exception;I)V
.end method

.method public abstract error(Ljava/lang/String;Ljava/lang/Exception;ILorg/apache/log4j/spi/LoggingEvent;)V
.end method

.method public abstract setAppender(Lorg/apache/log4j/Appender;)V
.end method

.method public abstract setBackupAppender(Lorg/apache/log4j/Appender;)V
.end method

.method public abstract setLogger(Lorg/apache/log4j/Logger;)V
.end method
