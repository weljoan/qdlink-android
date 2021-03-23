.class public final Lorg/apache/log4j/spi/NOPLoggerRepository;
.super Ljava/lang/Object;
.source "NOPLoggerRepository.java"

# interfaces
.implements Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addHierarchyEventListener(Lorg/apache/log4j/spi/HierarchyEventListener;)V
    .locals 0

    return-void
.end method

.method public emitNoAppenderWarning(Lorg/apache/log4j/Category;)V
    .locals 0

    return-void
.end method

.method public exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public fireAddAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 0

    return-void
.end method

.method public getCurrentCategories()Ljava/util/Enumeration;
    .locals 1

    .line 116
    invoke-virtual {p0}, Lorg/apache/log4j/spi/NOPLoggerRepository;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoggers()Ljava/util/Enumeration;
    .locals 1

    .line 109
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1

    .line 75
    new-instance v0, Lorg/apache/log4j/spi/NOPLogger;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/spi/NOPLogger;-><init>(Lorg/apache/log4j/spi/NOPLoggerRepository;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .locals 0

    .line 82
    new-instance p2, Lorg/apache/log4j/spi/NOPLogger;

    invoke-direct {p2, p0, p1}, Lorg/apache/log4j/spi/NOPLogger;-><init>(Lorg/apache/log4j/spi/NOPLoggerRepository;Ljava/lang/String;)V

    return-object p2
.end method

.method public getRootLogger()Lorg/apache/log4j/Logger;
    .locals 2

    .line 89
    new-instance v0, Lorg/apache/log4j/spi/NOPLogger;

    const-string v1, "root"

    invoke-direct {v0, p0, v1}, Lorg/apache/log4j/spi/NOPLogger;-><init>(Lorg/apache/log4j/spi/NOPLoggerRepository;Ljava/lang/String;)V

    return-object v0
.end method

.method public getThreshold()Lorg/apache/log4j/Level;
    .locals 1

    .line 68
    sget-object v0, Lorg/apache/log4j/Level;->OFF:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public isDisabled(I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public resetConfiguration()V
    .locals 0

    return-void
.end method

.method public setThreshold(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setThreshold(Lorg/apache/log4j/Level;)V
    .locals 0

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method
