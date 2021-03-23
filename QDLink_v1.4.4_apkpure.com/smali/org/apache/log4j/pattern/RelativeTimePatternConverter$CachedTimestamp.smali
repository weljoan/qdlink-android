.class final Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;
.super Ljava/lang/Object;
.source "RelativeTimePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/pattern/RelativeTimePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CachedTimestamp"
.end annotation


# instance fields
.field private final formatted:Ljava/lang/String;

.field private final timestamp:J


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-wide p1, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->timestamp:J

    .line 87
    iput-object p3, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->formatted:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public format(JLjava/lang/StringBuffer;)Z
    .locals 3

    .line 97
    iget-wide v0, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->timestamp:J

    cmp-long v2, p1, v0

    if-nez v2, :cond_0

    .line 98
    iget-object p1, p0, Lorg/apache/log4j/pattern/RelativeTimePatternConverter$CachedTimestamp;->formatted:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
