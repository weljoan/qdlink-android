.class public interface abstract Lorg/apache/log4j/Appender;
.super Ljava/lang/Object;
.source "Appender.java"


# virtual methods
.method public abstract addFilter(Lorg/apache/log4j/spi/Filter;)V
.end method

.method public abstract clearFilters()V
.end method

.method public abstract close()V
.end method

.method public abstract doAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
.end method

.method public abstract getErrorHandler()Lorg/apache/log4j/spi/ErrorHandler;
.end method

.method public abstract getFilter()Lorg/apache/log4j/spi/Filter;
.end method

.method public abstract getLayout()Lorg/apache/log4j/Layout;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract requiresLayout()Z
.end method

.method public abstract setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V
.end method

.method public abstract setLayout(Lorg/apache/log4j/Layout;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method
