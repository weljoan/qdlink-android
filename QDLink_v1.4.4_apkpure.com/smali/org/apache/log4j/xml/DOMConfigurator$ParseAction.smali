.class interface abstract Lorg/apache/log4j/xml/DOMConfigurator$ParseAction;
.super Ljava/lang/Object;
.source "DOMConfigurator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/xml/DOMConfigurator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ParseAction"
.end annotation


# virtual methods
.method public abstract parse(Ljavax/xml/parsers/DocumentBuilder;)Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
