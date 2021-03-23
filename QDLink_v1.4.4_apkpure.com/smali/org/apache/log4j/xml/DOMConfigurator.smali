.class public Lorg/apache/log4j/xml/DOMConfigurator;
.super Ljava/lang/Object;
.source "DOMConfigurator.java"

# interfaces
.implements Lorg/apache/log4j/spi/Configurator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
    }
.end annotation


# static fields
.field static final ADDITIVITY_ATTR:Ljava/lang/String; = "additivity"

.field static final APPENDER_REF_TAG:Ljava/lang/String; = "appender-ref"

.field static final APPENDER_TAG:Ljava/lang/String; = "appender"

.field static final CATEGORY:Ljava/lang/String; = "category"

.field static final CATEGORY_FACTORY_TAG:Ljava/lang/String; = "categoryFactory"

.field static final CLASS_ATTR:Ljava/lang/String; = "class"

.field static final CONFIGURATION_TAG:Ljava/lang/String; = "log4j:configuration"

.field static final CONFIG_DEBUG_ATTR:Ljava/lang/String; = "configDebug"

.field static final EMPTY_STR:Ljava/lang/String; = ""

.field static final ERROR_HANDLER_TAG:Ljava/lang/String; = "errorHandler"

.field static final FILTER_TAG:Ljava/lang/String; = "filter"

.field static final INTERNAL_DEBUG_ATTR:Ljava/lang/String; = "debug"

.field static final LAYOUT_TAG:Ljava/lang/String; = "layout"

.field static final LEVEL_TAG:Ljava/lang/String; = "level"

.field static final LOGGER:Ljava/lang/String; = "logger"

.field static final LOGGER_FACTORY_TAG:Ljava/lang/String; = "loggerFactory"

.field static final LOGGER_REF:Ljava/lang/String; = "logger-ref"

.field static final NAME_ATTR:Ljava/lang/String; = "name"

.field static final OLD_CONFIGURATION_TAG:Ljava/lang/String; = "configuration"

.field static final ONE_STRING_PARAM:[Ljava/lang/Class;

.field static final PARAM_TAG:Ljava/lang/String; = "param"

.field static final PRIORITY_TAG:Ljava/lang/String; = "priority"

.field static final REF_ATTR:Ljava/lang/String; = "ref"

.field static final RENDERED_CLASS_ATTR:Ljava/lang/String; = "renderedClass"

.field static final RENDERER_TAG:Ljava/lang/String; = "renderer"

.field static final RENDERING_CLASS_ATTR:Ljava/lang/String; = "renderingClass"

.field private static final RESET_ATTR:Ljava/lang/String; = "reset"

.field static final ROOT_REF:Ljava/lang/String; = "root-ref"

.field static final ROOT_TAG:Ljava/lang/String; = "root"

.field static final THRESHOLD_ATTR:Ljava/lang/String; = "threshold"

.field private static final THROWABLE_RENDERER_TAG:Ljava/lang/String; = "throwableRenderer"

.field static final VALUE_ATTR:Ljava/lang/String; = "value"

.field static synthetic class$java$lang$String:Ljava/lang/Class; = null

.field static synthetic class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class; = null

.field static synthetic class$org$apache$log4j$spi$Filter:Ljava/lang/Class; = null

.field static synthetic class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class; = null

.field static final dbfKey:Ljava/lang/String; = "javax.xml.parsers.DocumentBuilderFactory"


# instance fields
.field appenderBag:Ljava/util/Hashtable;

.field protected catFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field props:Ljava/util/Properties;

.field repository:Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    .line 124
    sget-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "java.lang.String"

    invoke-static {v1}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$java$lang$String:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    .line 142
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 124
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static configure(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 896
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-void
.end method

.method public static configure(Ljava/net/URL;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 906
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-void
.end method

.method public static configure(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 703
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator;

    invoke-direct {v0}, Lorg/apache/log4j/xml/DOMConfigurator;-><init>()V

    .line 704
    invoke-static {}, Lorg/apache/log4j/LogManager;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;)V
    .locals 2

    const-wide/32 v0, 0xea60

    .line 718
    invoke-static {p0, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->configureAndWatch(Ljava/lang/String;J)V

    return-void
.end method

.method public static configureAndWatch(Ljava/lang/String;J)V
    .locals 1

    .line 735
    new-instance v0, Lorg/apache/log4j/xml/XMLWatchdog;

    invoke-direct {v0, p0}, Lorg/apache/log4j/xml/XMLWatchdog;-><init>(Ljava/lang/String;)V

    .line 736
    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/xml/XMLWatchdog;->setDelay(J)V

    .line 737
    invoke-virtual {v0}, Lorg/apache/log4j/xml/XMLWatchdog;->start()V

    return-void
.end method

.method private final doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 849
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 851
    :try_start_0
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "System property is :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "javax.xml.parsers.DocumentBuilderFactory"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/log4j/helpers/OptionConverter;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 854
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p2

    const-string v0, "Standard DocumentBuilderFactory search succeded."

    .line 855
    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 856
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "DocumentBuilderFactory is: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x1

    .line 864
    :try_start_1
    invoke-virtual {p2, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 866
    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    .line 868
    new-instance v0, Lorg/apache/log4j/xml/SAXErrorHandler;

    invoke-direct {v0}, Lorg/apache/log4j/xml/SAXErrorHandler;-><init>()V

    invoke-virtual {p2, v0}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 869
    new-instance v0, Lorg/apache/log4j/xml/Log4jEntityResolver;

    invoke-direct {v0}, Lorg/apache/log4j/xml/Log4jEntityResolver;-><init>()V

    invoke-virtual {p2, v0}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 871
    invoke-interface {p1, p2}, Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;->parse(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 872
    invoke-interface {p2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 874
    instance-of v0, p2, Ljava/lang/InterruptedException;

    if-nez v0, :cond_0

    instance-of v0, p2, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_1

    .line 875
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 878
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not parse "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 858
    invoke-virtual {p1}, Ljavax/xml/parsers/FactoryConfigurationError;->getException()Ljava/lang/Exception;

    move-result-object p2

    const-string v0, "Could not instantiate a DocumentBuilderFactory."

    .line 859
    invoke-static {v0, p2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 860
    throw p1
.end method

.method public static parseElement(Lorg/w3c/dom/Element;Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "class"

    .line 1085
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1086
    invoke-static {v0, p2, v1}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1090
    new-instance v0, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v0, p2}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 1091
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p0

    .line 1092
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    .line 1095
    invoke-interface {p0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 1096
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 1097
    check-cast v3, Lorg/w3c/dom/Element;

    .line 1098
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "param"

    .line 1099
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1100
    invoke-static {v3, v0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;Ljava/util/Properties;)V

    goto :goto_1

    .line 1102
    :cond_0
    invoke-static {p2, v3, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object p2

    :cond_3
    return-object v1
.end method

.method private static parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 208
    instance-of v0, p0, Lorg/apache/log4j/xml/UnrecognizedElementHandler;

    if-eqz v0, :cond_0

    .line 209
    check-cast p0, Lorg/apache/log4j/xml/UnrecognizedElementHandler;

    invoke-interface {p0, p1, p2}, Lorg/apache/log4j/xml/UnrecognizedElementHandler;->parseUnrecognizedElement(Lorg/w3c/dom/Element;Ljava/util/Properties;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 213
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const-string p2, "Unrecognized element "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    .locals 0

    .line 230
    :try_start_0
    invoke-static {p0, p1, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 232
    instance-of p1, p0, Ljava/lang/InterruptedException;

    if-nez p1, :cond_0

    instance-of p1, p0, Ljava/io/InterruptedIOException;

    if-eqz p1, :cond_1

    .line 233
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    const-string p1, "Error in extension content: "

    .line 235
    invoke-static {p1, p0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;Ljava/util/Properties;)V
    .locals 2

    const-string v0, "name"

    .line 1062
    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    .line 1063
    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1064
    invoke-static {p0}, Lorg/apache/log4j/helpers/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0

    .line 1065
    invoke-virtual {p1, v0, p0}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;
    .locals 1

    .line 1043
    :try_start_0
    invoke-static {p0, p1}, Lorg/apache/log4j/helpers/OptionConverter;->substVars(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    const-string v0, "Could not perform variable substitution."

    .line 1045
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p0
.end method


# virtual methods
.method public doConfigure(Ljava/io/InputStream;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 789
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$3;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$3;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/InputStream;)V

    .line 799
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-void
.end method

.method public doConfigure(Ljava/io/Reader;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 810
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$4;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$4;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/io/Reader;)V

    .line 820
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-void
.end method

.method public doConfigure(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1

    .line 747
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$1;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$1;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/lang/String;)V

    .line 755
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-void
.end method

.method public doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1

    .line 761
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$2;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$2;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Ljava/net/URL;)V

    .line 778
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-void
.end method

.method public doConfigure(Lorg/w3c/dom/Element;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 0

    .line 886
    iput-object p2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    .line 887
    invoke-virtual {p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->parse(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method protected doConfigure(Lorg/xml/sax/InputSource;Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/FactoryConfigurationError;
        }
    .end annotation

    .line 831
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "dummy://log4j.dtd"

    .line 832
    invoke-virtual {p1, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 834
    :cond_0
    new-instance v0, Lorg/apache/log4j/xml/DOMConfigurator$5;

    invoke-direct {v0, p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator$5;-><init>(Lorg/apache/log4j/xml/DOMConfigurator;Lorg/xml/sax/InputSource;)V

    .line 842
    invoke-direct {p0, v0, p2}, Lorg/apache/log4j/xml/DOMConfigurator;->doConfigure(Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;Lorg/apache/log4j/spi/LoggerRepository;)V

    return-void
.end method

.method protected findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;
    .locals 5

    .line 150
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v0, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/Appender;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "appender"

    .line 160
    invoke-interface {p1, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 161
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    .line 162
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 163
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "name"

    .line 164
    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 165
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    move-object p1, v1

    check-cast p1, Lorg/w3c/dom/Element;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_1
    if-nez p1, :cond_3

    .line 173
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "No appender named ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "] could be found."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    return-object v2

    .line 176
    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 178
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->appenderBag:Ljava/util/Hashtable;

    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p1
.end method

.method protected findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .locals 1

    const-string v0, "ref"

    .line 189
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    .line 191
    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByName(Lorg/w3c/dom/Document;Ljava/lang/String;)Lorg/apache/log4j/Appender;

    move-result-object p1

    return-object p1
.end method

.method protected parse(Lorg/w3c/dom/Element;)V
    .locals 8

    .line 918
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "log4j:configuration"

    .line 920
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "configuration"

    .line 921
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "The <configuration> element has been deprecated."

    .line 922
    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    const-string v0, "Use the <log4j:configuration> element instead."

    .line 924
    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "DOM element is - not a <log4j:configuration> element."

    .line 926
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    const-string v0, "debug"

    .line 932
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 934
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "debug attribute= \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    const-string v1, ""

    .line 937
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "null"

    const/4 v5, 0x1

    if-nez v3, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 938
    invoke-static {v0, v5}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    goto :goto_1

    :cond_2
    const-string v0, "Ignoring debug attribute."

    .line 940
    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    :goto_1
    const-string v0, "reset"

    .line 947
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "reset attribute= \""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 949
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v6, 0x0

    if-nez v3, :cond_3

    .line 950
    invoke-static {v0, v6}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 951
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->resetConfiguration()V

    :cond_3
    const-string v0, "configDebug"

    .line 957
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "The \"configDebug\" attribute is deprecated."

    .line 959
    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    const-string v3, "Use the \"debug\" attribute instead."

    .line 960
    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 961
    invoke-static {v0, v5}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->setInternalDebugging(Z)V

    :cond_4
    const-string v0, "threshold"

    .line 964
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 965
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Threshold =\""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 966
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 967
    iget-object v1, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v1, v0}, Lorg/apache/log4j/spi/LoggerRepository;->setThreshold(Ljava/lang/String;)V

    .line 982
    :cond_5
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 983
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_2
    const-string v2, "loggerFactory"

    const-string v3, "categoryFactory"

    if-ge v1, v0, :cond_8

    .line 986
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 987
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v5, :cond_7

    .line 988
    check-cast v4, Lorg/w3c/dom/Element;

    .line 989
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v7

    .line 991
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 992
    :cond_6
    invoke-virtual {p0, v4}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategoryFactory(Lorg/w3c/dom/Element;)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    if-ge v6, v0, :cond_f

    .line 998
    invoke-interface {p1, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 999
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_e

    .line 1000
    check-cast v1, Lorg/w3c/dom/Element;

    .line 1001
    invoke-interface {v1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v7, "category"

    .line 1003
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "logger"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    goto :goto_4

    :cond_9
    const-string v7, "root"

    .line 1005
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1006
    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRoot(Lorg/w3c/dom/Element;)V

    goto :goto_5

    :cond_a
    const-string v7, "renderer"

    .line 1007
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1008
    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseRenderer(Lorg/w3c/dom/Element;)V

    goto :goto_5

    :cond_b
    const-string v7, "throwableRenderer"

    .line 1009
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1010
    iget-object v4, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    instance-of v4, v4, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    if-eqz v4, :cond_e

    .line 1011
    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseThrowableRenderer(Lorg/w3c/dom/Element;)Lorg/apache/log4j/spi/ThrowableRenderer;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 1013
    iget-object v4, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    check-cast v4, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    invoke-interface {v4, v1}, Lorg/apache/log4j/spi/ThrowableRendererSupport;->setThrowableRenderer(Lorg/apache/log4j/spi/ThrowableRenderer;)V

    goto :goto_5

    :cond_c
    const-string v7, "appender"

    .line 1016
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1019
    iget-object v4, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    iget-object v7, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v4, v1, v7}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    goto :goto_5

    .line 1004
    :cond_d
    :goto_4
    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseCategory(Lorg/w3c/dom/Element;)V

    :cond_e
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_f
    return-void
.end method

.method protected parseAppender(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;
    .locals 11

    const-string v0, "class"

    .line 244
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 245
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Class name: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 247
    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 248
    move-object v1, v0

    check-cast v1, Lorg/apache/log4j/Appender;

    .line 249
    new-instance v2, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v2, v1}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    const-string v3, "name"

    .line 251
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/apache/log4j/Appender;->setName(Ljava/lang/String;)V

    .line 253
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 254
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_7

    .line 257
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 260
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 261
    check-cast v5, Lorg/w3c/dom/Element;

    .line 264
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "param"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 265
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto/16 :goto_1

    .line 268
    :cond_0
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "layout"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;

    move-result-object v5

    invoke-interface {v1, v5}, Lorg/apache/log4j/Appender;->setLayout(Lorg/apache/log4j/Layout;)V

    goto/16 :goto_1

    .line 272
    :cond_1
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "filter"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 273
    invoke-virtual {p0, v5, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto/16 :goto_1

    .line 275
    :cond_2
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "errorHandler"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 276
    invoke-virtual {p0, v5, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V

    goto :goto_1

    .line 278
    :cond_3
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "appender-ref"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "ref"

    .line 279
    invoke-interface {v5, v6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 280
    instance-of v7, v1, Lorg/apache/log4j/spi/AppenderAttachable;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v8, "] to appender named ["

    if-eqz v7, :cond_4

    .line 281
    :try_start_1
    move-object v7, v1

    check-cast v7, Lorg/apache/log4j/spi/AppenderAttachable;

    .line 282
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v10, "Attaching appender named ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "]."

    invoke-virtual {v9, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v5

    invoke-interface {v7, v5}, Lorg/apache/log4j/spi/AppenderAttachable;->addAppender(Lorg/apache/log4j/Appender;)V

    goto :goto_1

    .line 286
    :cond_4
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Requesting attachment of appender named ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v1}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v6, "] which does not implement org.apache.log4j.spi.AppenderAttachable."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 291
    :cond_5
    iget-object v6, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v0, v5, v6}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    :cond_6
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 295
    :cond_7
    invoke-virtual {v2}, Lorg/apache/log4j/config/PropertySetter;->activate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 301
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-nez v0, :cond_8

    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_9

    .line 302
    :cond_8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_9
    const-string v0, "Could not create an Appender. Reported error follows."

    .line 304
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected parseCategory(Lorg/w3c/dom/Element;)V
    .locals 6

    const-string v0, "name"

    .line 393
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "class"

    .line 397
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    .line 400
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    const-string v1, "Retreiving an instance of org.apache.log4j.Logger."

    .line 401
    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v1, v0}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v2, v0, v1}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v0

    :goto_0
    move-object v1, v0

    goto :goto_1

    .line 405
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Desired logger sub-class: ["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v5, 0x5d

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 407
    :try_start_0
    invoke-static {v1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLogger"

    .line 408
    sget-object v5, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    aput-object v0, v5, v3

    .line 410
    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/Logger;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :goto_1
    monitor-enter v1

    :try_start_1
    const-string v0, "additivity"

    .line 430
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lorg/apache/log4j/helpers/OptionConverter;->toBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 434
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Setting ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, "] additivity to ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v4, "]."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 435
    invoke-virtual {v1, v0}, Lorg/apache/log4j/Logger;->setAdditivity(Z)V

    .line 436
    invoke-virtual {p0, p1, v1, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 437
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :catch_0
    move-exception p1

    .line 420
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not retrieve category ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]. Reported error follows."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p1

    .line 412
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_3

    .line 414
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 416
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not retrieve category ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]. Reported error follows."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method protected parseCategoryFactory(Lorg/w3c/dom/Element;)V
    .locals 7

    const-string v0, "class"

    .line 446
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 448
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "Category Factory tag class attribute not found."

    .line 449
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    const-string p1, "No Category Factory configured."

    .line 450
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 453
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Desired category factory: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 454
    sget-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    if-nez v1, :cond_1

    const-string v1, "org.apache.log4j.spi.LoggerFactory"

    invoke-static {v1}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$LoggerFactory:Ljava/lang/Class;

    :cond_1
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 457
    instance-of v2, v1, Lorg/apache/log4j/spi/LoggerFactory;

    if-eqz v2, :cond_2

    .line 458
    move-object v0, v1

    check-cast v0, Lorg/apache/log4j/spi/LoggerFactory;

    iput-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    goto :goto_0

    .line 460
    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Category Factory class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, " does not implement org.apache.log4j.LoggerFactory"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    .line 462
    :goto_0
    new-instance v0, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v0, v1}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 466
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 467
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    .line 470
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 471
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 472
    check-cast v4, Lorg/w3c/dom/Element;

    .line 473
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "param"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 474
    invoke-virtual {p0, v4, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_2

    .line 476
    :cond_3
    iget-object v5, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v1, v4, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    :goto_3
    return-void
.end method

.method protected parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .locals 7

    .line 504
    new-instance v0, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v0, p2}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 508
    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->removeAllAppenders()V

    .line 511
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 512
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    .line 515
    invoke-interface {p1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 517
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_5

    .line 518
    check-cast v3, Lorg/w3c/dom/Element;

    .line 519
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "appender-ref"

    .line 521
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 523
    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v4

    const-string v5, "ref"

    .line 524
    invoke-interface {v3, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_0

    .line 526
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Adding appender named ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "] to category ["

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 529
    :cond_0
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "Appender named ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "] not found."

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 531
    :goto_1
    invoke-virtual {p2, v4}, Lorg/apache/log4j/Logger;->addAppender(Lorg/apache/log4j/Appender;)V

    goto :goto_2

    :cond_1
    const-string v5, "level"

    .line 533
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 534
    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_2

    :cond_2
    const-string v5, "priority"

    .line 535
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 536
    invoke-virtual {p0, v3, p2, p3}, Lorg/apache/log4j/xml/DOMConfigurator;->parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    goto :goto_2

    :cond_3
    const-string v5, "param"

    .line 537
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 538
    invoke-virtual {p0, v3, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_2

    .line 540
    :cond_4
    iget-object v4, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {p2, v3, v4}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 544
    :cond_6
    invoke-virtual {v0}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    return-void
.end method

.method protected parseErrorHandler(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .locals 7

    const-string v0, "class"

    .line 315
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.spi.ErrorHandler"

    invoke-static {v1}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$ErrorHandler:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/spi/ErrorHandler;

    if-eqz v0, :cond_8

    .line 321
    invoke-interface {v0, p2}, Lorg/apache/log4j/spi/ErrorHandler;->setAppender(Lorg/apache/log4j/Appender;)V

    .line 323
    new-instance v1, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v1, v0}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 324
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 325
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_7

    .line 328
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 329
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    .line 330
    check-cast v4, Lorg/w3c/dom/Element;

    .line 331
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "param"

    .line 332
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 333
    invoke-virtual {p0, v4, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_2

    :cond_1
    const-string v6, "appender-ref"

    .line 334
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 335
    invoke-virtual {p0, v4}, Lorg/apache/log4j/xml/DOMConfigurator;->findAppenderByReference(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Appender;

    move-result-object v4

    invoke-interface {v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->setBackupAppender(Lorg/apache/log4j/Appender;)V

    goto :goto_2

    :cond_2
    const-string v6, "logger-ref"

    .line 336
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v5, "ref"

    .line 337
    invoke-interface {v4, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 338
    iget-object v5, p0, Lorg/apache/log4j/xml/DOMConfigurator;->catFactory:Lorg/apache/log4j/spi/LoggerFactory;

    if-nez v5, :cond_3

    iget-object v5, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v5, v4}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object v4

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v6, v4, v5}, Lorg/apache/log4j/spi/LoggerRepository;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object v4

    .line 340
    :goto_1
    invoke-interface {v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    goto :goto_2

    :cond_4
    const-string v6, "root-ref"

    .line 341
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 342
    iget-object v4, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v4}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v4

    .line 343
    invoke-interface {v0, v4}, Lorg/apache/log4j/spi/ErrorHandler;->setLogger(Lorg/apache/log4j/Logger;)V

    goto :goto_2

    .line 345
    :cond_5
    iget-object v5, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v0, v4, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    :cond_6
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 349
    :cond_7
    invoke-virtual {v1}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 350
    invoke-interface {p2, v0}, Lorg/apache/log4j/Appender;->setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V

    :cond_8
    return-void
.end method

.method protected parseFilters(Lorg/w3c/dom/Element;Lorg/apache/log4j/Appender;)V
    .locals 7

    const-string v0, "class"

    .line 359
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    sget-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.spi.Filter"

    invoke-static {v1}, Lorg/apache/log4j/xml/DOMConfigurator;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/xml/DOMConfigurator;->class$org$apache$log4j$spi$Filter:Ljava/lang/Class;

    :cond_0
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/helpers/OptionConverter;->instantiateByClassName(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/spi/Filter;

    if-eqz v0, :cond_4

    .line 364
    new-instance v1, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v1, v0}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 365
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 366
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_3

    .line 369
    invoke-interface {p1, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 370
    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    .line 371
    check-cast v4, Lorg/w3c/dom/Element;

    .line 372
    invoke-interface {v4}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "param"

    .line 373
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 374
    invoke-virtual {p0, v4, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_1

    .line 376
    :cond_1
    iget-object v5, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v0, v4, v5}, Lorg/apache/log4j/xml/DOMConfigurator;->quietParseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 380
    :cond_3
    invoke-virtual {v1}, Lorg/apache/log4j/config/PropertySetter;->activate()V

    .line 381
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Adding filter of type ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, "] to appender named ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p2}, Lorg/apache/log4j/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 383
    invoke-interface {p2, v0}, Lorg/apache/log4j/Appender;->addFilter(Lorg/apache/log4j/spi/Filter;)V

    :cond_4
    return-void
.end method

.method protected parseLayout(Lorg/w3c/dom/Element;)Lorg/apache/log4j/Layout;
    .locals 8

    const-string v0, "class"

    .line 552
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 553
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Parsing layout of class: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 555
    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 556
    move-object v1, v0

    check-cast v1, Lorg/apache/log4j/Layout;

    .line 557
    new-instance v2, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v2, v1}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 559
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 560
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 563
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 564
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 565
    check-cast v5, Lorg/w3c/dom/Element;

    .line 566
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "param"

    .line 567
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 568
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_1

    .line 570
    :cond_0
    iget-object v6, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v0, v5, v6}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 575
    :cond_2
    invoke-virtual {v2}, Lorg/apache/log4j/config/PropertySetter;->activate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 579
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_4

    .line 580
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    const-string v0, "Could not create the Layout. Reported error follows."

    .line 582
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected parseLevel(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V
    .locals 4

    .line 646
    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v0, "root"

    :cond_0
    const-string v1, "value"

    .line 651
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 652
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Level value for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, " is  ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    const-string v2, "inherited"

    .line 654
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_5

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string p3, "class"

    .line 661
    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p3, ""

    .line 662
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 663
    sget-object p1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {v1, p1}, Lorg/apache/log4j/helpers/OptionConverter;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    goto :goto_1

    .line 665
    :cond_2
    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Desired Level sub-class: ["

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x5d

    invoke-virtual {p3, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 667
    :try_start_0
    invoke-static {p1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p3, "toLevel"

    .line 668
    sget-object v2, Lorg/apache/log4j/xml/DOMConfigurator;->ONE_STRING_PARAM:[Ljava/lang/Class;

    invoke-virtual {p1, p3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, p3, v2

    .line 670
    invoke-virtual {p1, v3, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/log4j/Level;

    .line 672
    invoke-virtual {p2, p1}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 674
    instance-of p2, p1, Ljava/lang/InterruptedException;

    if-nez p2, :cond_3

    instance-of p2, p1, Ljava/io/InterruptedIOException;

    if-eqz p2, :cond_4

    .line 675
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V

    .line 677
    :cond_4
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    const-string p3, "Could not create level ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, "]. Reported error follows."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_5
    :goto_0
    if-eqz p3, :cond_6

    const-string p1, "Root level cannot be inherited. Ignoring directive."

    .line 656
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V

    goto :goto_1

    .line 658
    :cond_6
    invoke-virtual {p2, v3}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 683
    :goto_1
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p3, " level set to "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2}, Lorg/apache/log4j/Logger;->getLevel()Lorg/apache/log4j/Level;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected parseRenderer(Lorg/w3c/dom/Element;)V
    .locals 3

    const-string v0, "renderingClass"

    .line 590
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "renderedClass"

    .line 591
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 592
    iget-object v1, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    instance-of v2, v1, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v2, :cond_0

    .line 593
    check-cast v1, Lorg/apache/log4j/spi/RendererSupport;

    invoke-static {v1, p1, v0}, Lorg/apache/log4j/or/RendererMap;->addRenderer(Lorg/apache/log4j/spi/RendererSupport;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected parseRoot(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 489
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    invoke-interface {v0}, Lorg/apache/log4j/spi/LoggerRepository;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 491
    monitor-enter v0

    const/4 v1, 0x1

    .line 492
    :try_start_0
    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/log4j/xml/DOMConfigurator;->parseChildrenOfLoggerElement(Lorg/w3c/dom/Element;Lorg/apache/log4j/Logger;Z)V

    .line 493
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected parseThrowableRenderer(Lorg/w3c/dom/Element;)Lorg/apache/log4j/spi/ThrowableRenderer;
    .locals 8

    const-string v0, "class"

    .line 605
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 606
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Parsing throwableRenderer of class: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 608
    :try_start_0
    invoke-static {v0}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    .line 609
    move-object v1, v0

    check-cast v1, Lorg/apache/log4j/spi/ThrowableRenderer;

    .line 610
    new-instance v2, Lorg/apache/log4j/config/PropertySetter;

    invoke-direct {v2, v1}, Lorg/apache/log4j/config/PropertySetter;-><init>(Ljava/lang/Object;)V

    .line 612
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object p1

    .line 613
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 616
    invoke-interface {p1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 617
    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_1

    .line 618
    check-cast v5, Lorg/w3c/dom/Element;

    .line 619
    invoke-interface {v5}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "param"

    .line 620
    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 621
    invoke-virtual {p0, v5, v2}, Lorg/apache/log4j/xml/DOMConfigurator;->setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V

    goto :goto_1

    .line 623
    :cond_0
    iget-object v6, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {v0, v5, v6}, Lorg/apache/log4j/xml/DOMConfigurator;->parseUnrecognizedElement(Ljava/lang/Object;Lorg/w3c/dom/Element;Ljava/util/Properties;)V

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 628
    :cond_2
    invoke-virtual {v2}, Lorg/apache/log4j/config/PropertySetter;->activate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p1

    .line 632
    instance-of v0, p1, Ljava/lang/InterruptedException;

    if-nez v0, :cond_3

    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-eqz v0, :cond_4

    .line 633
    :cond_3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    const-string v0, "Could not create the ThrowableRenderer. Reported error follows."

    .line 635
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected setParameter(Lorg/w3c/dom/Element;Lorg/apache/log4j/config/PropertySetter;)V
    .locals 2

    const-string v0, "name"

    .line 688
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "value"

    .line 689
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 690
    invoke-static {p1}, Lorg/apache/log4j/helpers/OptionConverter;->convertSpecialChars(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 691
    invoke-virtual {p2, v0, p1}, Lorg/apache/log4j/config/PropertySetter;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected subst(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1028
    iget-object v0, p0, Lorg/apache/log4j/xml/DOMConfigurator;->props:Ljava/util/Properties;

    invoke-static {p1, v0}, Lorg/apache/log4j/xml/DOMConfigurator;->subst(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
