.class Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;
.super Ljava/text/DateFormat;
.source "DatePatternConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/log4j/pattern/DatePatternConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultZoneDateFormat"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Ljava/text/DateFormat;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/text/DateFormat;-><init>()V

    .line 88
    iput-object p1, p0, Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;->dateFormat:Ljava/text/DateFormat;

    return-void
.end method


# virtual methods
.method public format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .locals 2

    .line 95
    iget-object v0, p0, Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;->dateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 96
    iget-object v0, p0, Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2, p3}, Ljava/text/DateFormat;->format(Ljava/util/Date;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;

    move-result-object p1

    return-object p1
.end method

.method public parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;->dateFormat:Ljava/text/DateFormat;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 104
    iget-object v0, p0, Lorg/apache/log4j/pattern/DatePatternConverter$DefaultZoneDateFormat;->dateFormat:Ljava/text/DateFormat;

    invoke-virtual {v0, p1, p2}, Ljava/text/DateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object p1

    return-object p1
.end method
