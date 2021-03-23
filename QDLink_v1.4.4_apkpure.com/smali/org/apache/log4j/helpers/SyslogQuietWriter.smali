.class public Lorg/apache/log4j/helpers/SyslogQuietWriter;
.super Lorg/apache/log4j/helpers/QuietWriter;
.source "SyslogQuietWriter.java"


# instance fields
.field level:I

.field syslogFacility:I


# direct methods
.method public constructor <init>(Ljava/io/Writer;ILorg/apache/log4j/spi/ErrorHandler;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p3}, Lorg/apache/log4j/helpers/QuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    .line 39
    iput p2, p0, Lorg/apache/log4j/helpers/SyslogQuietWriter;->syslogFacility:I

    return-void
.end method


# virtual methods
.method public setLevel(I)V
    .locals 0

    .line 44
    iput p1, p0, Lorg/apache/log4j/helpers/SyslogQuietWriter;->level:I

    return-void
.end method

.method public setSyslogFacility(I)V
    .locals 0

    .line 49
    iput p1, p0, Lorg/apache/log4j/helpers/SyslogQuietWriter;->syslogFacility:I

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .line 54
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lorg/apache/log4j/helpers/SyslogQuietWriter;->syslogFacility:I

    iget v2, p0, Lorg/apache/log4j/helpers/SyslogQuietWriter;->level:I

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lorg/apache/log4j/helpers/QuietWriter;->write(Ljava/lang/String;)V

    return-void
.end method
