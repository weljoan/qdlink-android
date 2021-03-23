.class public Lorg/apache/log4j/varia/DenyAllFilter;
.super Lorg/apache/log4j/spi/Filter;
.source "DenyAllFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/apache/log4j/spi/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public decide(Lorg/apache/log4j/spi/LoggingEvent;)I
    .locals 0

    const/4 p1, -0x1

    return p1
.end method

.method public getOptionStrings()[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setOption(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
