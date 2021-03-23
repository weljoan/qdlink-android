.class Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;
.super Lorg/apache/log4j/pattern/NameAbbreviator;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternAbbreviator"
.end annotation


# instance fields
.field private final fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1

    .line 313
    invoke-direct {p0}, Lorg/apache/log4j/pattern/NameAbbreviator;-><init>()V

    .line 314
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    iput-object v0, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    .line 320
    iget-object v0, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-void

    .line 315
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "fragments must have at least one element"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public abbreviate(ILjava/lang/StringBuffer;)V
    .locals 2

    const/4 v0, 0x0

    .line 334
    :goto_0
    iget-object v1, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 336
    iget-object v1, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    aget-object v1, v1, v0

    invoke-virtual {v1, p2, p1}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;->abbreviate(Ljava/lang/StringBuffer;I)I

    move-result p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 342
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviator;->fragments:[Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    .line 345
    :goto_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge p1, v1, :cond_1

    if-ltz p1, :cond_1

    .line 346
    invoke-virtual {v0, p2, p1}, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;->abbreviate(Ljava/lang/StringBuffer;I)I

    move-result p1

    goto :goto_1

    :cond_1
    return-void
.end method
