.class public Lorg/apache/log4j/lf5/util/ResourceUtils;
.super Ljava/lang/Object;
.source "ResourceUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getResourceAsStream(Ljava/lang/Object;Lorg/apache/log4j/lf5/util/Resource;)Ljava/io/InputStream;
    .locals 0

    .line 73
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getResourceAsURL(Ljava/lang/Object;Lorg/apache/log4j/lf5/util/Resource;)Ljava/net/URL;
    .locals 0

    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 107
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    goto :goto_0

    .line 109
    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/util/Resource;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    :goto_0
    return-object p0
.end method
