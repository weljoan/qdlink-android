.class public interface abstract Lorg/apache/log4j/spi/LoggerRepository;
.super Ljava/lang/Object;
.source "LoggerRepository.java"


# virtual methods
.method public abstract addHierarchyEventListener(Lorg/apache/log4j/spi/HierarchyEventListener;)V
.end method

.method public abstract emitNoAppenderWarning(Lorg/apache/log4j/Category;)V
.end method

.method public abstract exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
.end method

.method public abstract fireAddAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
.end method

.method public abstract getCurrentCategories()Ljava/util/Enumeration;
.end method

.method public abstract getCurrentLoggers()Ljava/util/Enumeration;
.end method

.method public abstract getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
.end method

.method public abstract getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
.end method

.method public abstract getRootLogger()Lorg/apache/log4j/Logger;
.end method

.method public abstract getThreshold()Lorg/apache/log4j/Level;
.end method

.method public abstract isDisabled(I)Z
.end method

.method public abstract resetConfiguration()V
.end method

.method public abstract setThreshold(Ljava/lang/String;)V
.end method

.method public abstract setThreshold(Lorg/apache/log4j/Level;)V
.end method

.method public abstract shutdown()V
.end method
