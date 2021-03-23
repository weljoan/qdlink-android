.class public Lorg/apache/log4j/xml/SAXErrorHandler;
.super Ljava/lang/Object;
.source "SAXErrorHandler.java"

# interfaces
.implements Lorg/xml/sax/ErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V
    .locals 1

    .line 42
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string p0, " and column "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    const-string v0, "Continuable parsing error "

    .line 28
    invoke-static {v0, p1}, Lorg/apache/log4j/xml/SAXErrorHandler;->emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    const-string v0, "Fatal parsing error "

    .line 33
    invoke-static {v0, p1}, Lorg/apache/log4j/xml/SAXErrorHandler;->emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 1

    const-string v0, "Parsing warning "

    .line 38
    invoke-static {v0, p1}, Lorg/apache/log4j/xml/SAXErrorHandler;->emitMessage(Ljava/lang/String;Lorg/xml/sax/SAXParseException;)V

    return-void
.end method
