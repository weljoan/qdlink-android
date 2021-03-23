.class public Lorg/apache/log4j/xml/XMLLayout;
.super Lorg/apache/log4j/Layout;
.source "XMLLayout.java"


# instance fields
.field private final DEFAULT_SIZE:I

.field private final UPPER_LIMIT:I

.field private buf:Ljava/lang/StringBuffer;

.field private locationInfo:Z

.field private properties:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lorg/apache/log4j/Layout;-><init>()V

    const/16 v0, 0x100

    .line 70
    iput v0, p0, Lorg/apache/log4j/xml/XMLLayout;->DEFAULT_SIZE:I

    const/16 v1, 0x800

    .line 71
    iput v1, p0, Lorg/apache/log4j/xml/XMLLayout;->UPPER_LIMIT:I

    .line 73
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    .line 74
    iput-boolean v0, p0, Lorg/apache/log4j/xml/XMLLayout;->locationInfo:Z

    .line 75
    iput-boolean v0, p0, Lorg/apache/log4j/xml/XMLLayout;->properties:Z

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    return-void
.end method

.method public format(Lorg/apache/log4j/spi/LoggingEvent;)Ljava/lang/String;
    .locals 7

    .line 129
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->capacity()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x800

    if-le v0, v2, :cond_0

    .line 130
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 137
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v2, "<log4j:event logger=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v2, "\" timestamp=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    iget-wide v2, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 141
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v2, "\" level=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 142
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v2, "\" thread=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v2, "\">\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v2, "<log4j:message><![CDATA["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/apache/log4j/helpers/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v2, "]]></log4j:message>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 155
    iget-object v2, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v3, "<log4j:NDC><![CDATA["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    iget-object v2, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-static {v2, v0}, Lorg/apache/log4j/helpers/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 157
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v2, "]]></log4j:NDC>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 162
    iget-object v2, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v3, "<log4j:throwable><![CDATA["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    .line 163
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 164
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    aget-object v4, v0, v2

    invoke-static {v3, v4}, Lorg/apache/log4j/helpers/Transform;->appendEscapingCDATA(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 165
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 167
    :cond_2
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v2, "]]></log4j:throwable>\r\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 170
    :cond_3
    iget-boolean v0, p0, Lorg/apache/log4j/xml/XMLLayout;->locationInfo:Z

    const-string v2, "\"/>\r\n"

    if-eqz v0, :cond_4

    .line 171
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v0

    .line 172
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v4, "<log4j:locationInfo class=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 173
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/log4j/spi/LocationInfo;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 174
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v4, "\" method=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 175
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/log4j/spi/LocationInfo;->getMethodName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 176
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v4, "\" file=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 177
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/log4j/spi/LocationInfo;->getFileName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v4, "\" line=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 179
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lorg/apache/log4j/spi/LocationInfo;->getLineNumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    iget-object v0, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :cond_4
    iget-boolean v0, p0, Lorg/apache/log4j/xml/XMLLayout;->properties:Z

    if-eqz v0, :cond_7

    .line 184
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getPropertyKeySet()Ljava/util/Set;

    move-result-object v0

    .line 185
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 186
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v4, "<log4j:properties>\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 187
    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 188
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 189
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_6

    .line 190
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 191
    invoke-virtual {p1, v3}, Lorg/apache/log4j/spi/LoggingEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 193
    iget-object v5, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v6, "<log4j:data name=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    iget-object v5, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-static {v3}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v5, "\" value=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/log4j/helpers/Transform;->escapeTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 197
    iget-object v3, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 200
    :cond_6
    iget-object p1, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v0, "</log4j:properties>\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 204
    :cond_7
    iget-object p1, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    const-string v0, "</log4j:event>\r\n\r\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    iget-object p1, p0, Lorg/apache/log4j/xml/XMLLayout;->buf:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getLocationInfo()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lorg/apache/log4j/xml/XMLLayout;->locationInfo:Z

    return v0
.end method

.method public getProperties()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lorg/apache/log4j/xml/XMLLayout;->properties:Z

    return v0
.end method

.method public ignoresThrowable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setLocationInfo(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lorg/apache/log4j/xml/XMLLayout;->locationInfo:Z

    return-void
.end method

.method public setProperties(Z)V
    .locals 0

    .line 105
    iput-boolean p1, p0, Lorg/apache/log4j/xml/XMLLayout;->properties:Z

    return-void
.end method
