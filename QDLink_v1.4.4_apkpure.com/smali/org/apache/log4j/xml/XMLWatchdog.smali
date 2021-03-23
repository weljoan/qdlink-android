.class Lorg/apache/log4j/xml/XMLWatchdog;
.super Lorg/apache/log4j/helpers/FileWatchdog;
.source "DOMConfigurator.java"


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1117
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/FileWatchdog;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public doOnChange()V
    .locals 3

    .line 1125
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/xml/XMLWatchdog;->filename:Ljava/lang/String;

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-void
.end method
