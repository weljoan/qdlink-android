.class public interface abstract Lorg/apache/log4j/spi/Configurator;
.super Ljava/lang/Object;
.source "Configurator.java"


# static fields
.field public static final INHERITED:Ljava/lang/String; = "inherited"

.field public static final NULL:Ljava/lang/String; = "null"


# virtual methods
.method public abstract doConfigure(Ljava/io/InputStream;Lorg/apache/log4j/spi/LoggerRepository;)V
.end method

.method public abstract doConfigure(Ljava/net/URL;Lorg/apache/log4j/spi/LoggerRepository;)V
.end method
