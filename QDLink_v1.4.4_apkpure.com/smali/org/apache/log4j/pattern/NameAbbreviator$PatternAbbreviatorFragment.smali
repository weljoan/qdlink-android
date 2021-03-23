.class Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;
.super Ljava/lang/Object;
.source "NameAbbreviator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/pattern/NameAbbreviator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternAbbreviatorFragment"
.end annotation


# instance fields
.field private final charCount:I

.field private final ellipsis:C


# direct methods
.method public constructor <init>(IC)V
    .locals 0

    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput p1, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;->charCount:I

    .line 267
    iput-char p2, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;->ellipsis:C

    return-void
.end method


# virtual methods
.method public abbreviate(Ljava/lang/StringBuffer;I)I
    .locals 3

    .line 277
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    sub-int v1, v0, p2

    .line 280
    iget v2, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;->charCount:I

    if-le v1, v2, :cond_0

    add-int/2addr v2, p2

    .line 281
    invoke-virtual {p1, v2, v0}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 282
    iget v0, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;->charCount:I

    add-int/2addr v0, p2

    .line 284
    iget-char p2, p0, Lorg/apache/log4j/pattern/NameAbbreviator$PatternAbbreviatorFragment;->ellipsis:C

    if-eqz p2, :cond_0

    .line 285
    invoke-virtual {p1, v0, p2}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method
