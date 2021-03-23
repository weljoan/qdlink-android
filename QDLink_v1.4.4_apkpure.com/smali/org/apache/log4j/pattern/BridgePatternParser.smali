.class public final Lorg/apache/log4j/pattern/BridgePatternParser;
.super Lorg/apache/log4j/helpers/PatternParser;
.source "BridgePatternParser.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lorg/apache/log4j/helpers/PatternParser;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parse()Lorg/apache/log4j/helpers/PatternConverter;
    .locals 2

    .line 46
    new-instance v0, Lorg/apache/log4j/pattern/BridgePatternConverter;

    iget-object v1, p0, Lorg/apache/log4j/pattern/BridgePatternParser;->pattern:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/apache/log4j/pattern/BridgePatternConverter;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
