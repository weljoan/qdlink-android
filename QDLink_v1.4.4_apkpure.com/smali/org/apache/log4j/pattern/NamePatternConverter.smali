.class public abstract Lorg/apache/log4j/pattern/NamePatternConverter;
.super Lorg/apache/log4j/pattern/LoggingEventPatternConverter;
.source "NamePatternConverter.java"


# instance fields
.field private final abbreviator:Lorg/apache/log4j/pattern/NameAbbreviator;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lorg/apache/log4j/pattern/LoggingEventPatternConverter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 46
    array-length p1, p3

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 47
    aget-object p1, p3, p1

    invoke-static {p1}, Lorg/apache/log4j/pattern/NameAbbreviator;->getAbbreviator(Ljava/lang/String;)Lorg/apache/log4j/pattern/NameAbbreviator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/pattern/NamePatternConverter;->abbreviator:Lorg/apache/log4j/pattern/NameAbbreviator;

    goto :goto_0

    .line 49
    :cond_0
    invoke-static {}, Lorg/apache/log4j/pattern/NameAbbreviator;->getDefaultAbbreviator()Lorg/apache/log4j/pattern/NameAbbreviator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/pattern/NamePatternConverter;->abbreviator:Lorg/apache/log4j/pattern/NameAbbreviator;

    :goto_0
    return-void
.end method


# virtual methods
.method protected final abbreviate(ILjava/lang/StringBuffer;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/log4j/pattern/NamePatternConverter;->abbreviator:Lorg/apache/log4j/pattern/NameAbbreviator;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/pattern/NameAbbreviator;->abbreviate(ILjava/lang/StringBuffer;)V

    return-void
.end method
