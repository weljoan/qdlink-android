.class public Lorg/apache/log4j/lf5/StartLogFactor5;
.super Ljava/lang/Object;
.source "StartLogFactor5.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final main([Ljava/lang/String;)V
    .locals 2

    .line 57
    new-instance p0, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;

    invoke-static {}, Lorg/apache/log4j/lf5/LogLevel;->getLog4JLevels()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;-><init>(Ljava/util/List;)V

    .line 60
    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorWidth()I

    move-result v0

    invoke-static {}, Lorg/apache/log4j/lf5/LF5Appender;->getDefaultMonitorHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFrameSize(II)V

    const/16 v0, 0xc

    .line 62
    invoke-virtual {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->setFontSize(I)V

    .line 63
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogBrokerMonitor;->show()V

    return-void
.end method
