.class public final Lorg/apache/log4j/pattern/FileDatePatternConverter;
.super Ljava/lang/Object;
.source "FileDatePatternConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/PatternConverter;
    .locals 1

    if-eqz p0, :cond_1

    .line 41
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-static {p0}, Lorg/apache/log4j/pattern/DatePatternConverter;->newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/DatePatternConverter;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const-string p0, "yyyy-MM-dd"

    .line 42
    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/log4j/pattern/DatePatternConverter;->newInstance([Ljava/lang/String;)Lorg/apache/log4j/pattern/DatePatternConverter;

    move-result-object p0

    return-object p0
.end method
