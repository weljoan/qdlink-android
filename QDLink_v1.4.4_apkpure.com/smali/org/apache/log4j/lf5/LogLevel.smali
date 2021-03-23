.class public Lorg/apache/log4j/lf5/LogLevel;
.super Ljava/lang/Object;
.source "LogLevel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONFIG:Lorg/apache/log4j/lf5/LogLevel;

.field public static final DEBUG:Lorg/apache/log4j/lf5/LogLevel;

.field public static final ERROR:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FATAL:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FINE:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FINER:Lorg/apache/log4j/lf5/LogLevel;

.field public static final FINEST:Lorg/apache/log4j/lf5/LogLevel;

.field public static final INFO:Lorg/apache/log4j/lf5/LogLevel;

.field public static final SEVERE:Lorg/apache/log4j/lf5/LogLevel;

.field public static final WARN:Lorg/apache/log4j/lf5/LogLevel;

.field public static final WARNING:Lorg/apache/log4j/lf5/LogLevel;

.field private static _allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

.field private static _jdk14Levels:[Lorg/apache/log4j/lf5/LogLevel;

.field private static _log4JLevels:[Lorg/apache/log4j/lf5/LogLevel;

.field private static _logLevelColorMap:Ljava/util/Map;

.field private static _logLevelMap:Ljava/util/Map;

.field private static _registeredLogLevelMap:Ljava/util/Map;


# instance fields
.field protected _label:Ljava/lang/String;

.field protected _precedence:I


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 48
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const/4 v1, 0x0

    const-string v2, "FATAL"

    invoke-direct {v0, v2, v1}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    .line 49
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const/4 v2, 0x1

    const-string v3, "ERROR"

    invoke-direct {v0, v3, v2}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    .line 50
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const/4 v3, 0x2

    const-string v4, "WARN"

    invoke-direct {v0, v4, v3}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    .line 51
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const/4 v4, 0x3

    const-string v5, "INFO"

    invoke-direct {v0, v5, v4}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    .line 52
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const/4 v5, 0x4

    const-string v6, "DEBUG"

    invoke-direct {v0, v6, v5}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    .line 55
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v6, "SEVERE"

    invoke-direct {v0, v6, v2}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->SEVERE:Lorg/apache/log4j/lf5/LogLevel;

    .line 56
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v6, "WARNING"

    invoke-direct {v0, v6, v3}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->WARNING:Lorg/apache/log4j/lf5/LogLevel;

    .line 57
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const-string v6, "CONFIG"

    invoke-direct {v0, v6, v5}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->CONFIG:Lorg/apache/log4j/lf5/LogLevel;

    .line 58
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const/4 v6, 0x5

    const-string v7, "FINE"

    invoke-direct {v0, v7, v6}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->FINE:Lorg/apache/log4j/lf5/LogLevel;

    .line 59
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const/4 v7, 0x6

    const-string v8, "FINER"

    invoke-direct {v0, v8, v7}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->FINER:Lorg/apache/log4j/lf5/LogLevel;

    .line 60
    new-instance v0, Lorg/apache/log4j/lf5/LogLevel;

    const/4 v8, 0x7

    const-string v9, "FINEST"

    invoke-direct {v0, v9, v8}, Lorg/apache/log4j/lf5/LogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->FINEST:Lorg/apache/log4j/lf5/LogLevel;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    new-array v0, v6, [Lorg/apache/log4j/lf5/LogLevel;

    .line 81
    sget-object v9, Lorg/apache/log4j/lf5/LogLevel;->FATAL:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v9, v0, v1

    sget-object v10, Lorg/apache/log4j/lf5/LogLevel;->ERROR:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v10, v0, v2

    sget-object v11, Lorg/apache/log4j/lf5/LogLevel;->WARN:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v11, v0, v3

    sget-object v12, Lorg/apache/log4j/lf5/LogLevel;->INFO:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v12, v0, v4

    sget-object v13, Lorg/apache/log4j/lf5/LogLevel;->DEBUG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v13, v0, v5

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_log4JLevels:[Lorg/apache/log4j/lf5/LogLevel;

    new-array v0, v8, [Lorg/apache/log4j/lf5/LogLevel;

    .line 82
    sget-object v14, Lorg/apache/log4j/lf5/LogLevel;->SEVERE:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v14, v0, v1

    sget-object v15, Lorg/apache/log4j/lf5/LogLevel;->WARNING:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v15, v0, v2

    aput-object v12, v0, v3

    sget-object v16, Lorg/apache/log4j/lf5/LogLevel;->CONFIG:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v16, v0, v4

    sget-object v17, Lorg/apache/log4j/lf5/LogLevel;->FINE:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v17, v0, v5

    sget-object v18, Lorg/apache/log4j/lf5/LogLevel;->FINER:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v18, v0, v6

    sget-object v19, Lorg/apache/log4j/lf5/LogLevel;->FINEST:Lorg/apache/log4j/lf5/LogLevel;

    aput-object v19, v0, v7

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_jdk14Levels:[Lorg/apache/log4j/lf5/LogLevel;

    const/16 v0, 0xb

    new-array v0, v0, [Lorg/apache/log4j/lf5/LogLevel;

    aput-object v9, v0, v1

    aput-object v10, v0, v2

    aput-object v11, v0, v3

    aput-object v12, v0, v4

    aput-object v13, v0, v5

    aput-object v14, v0, v6

    aput-object v15, v0, v7

    aput-object v16, v0, v8

    const/16 v2, 0x8

    aput-object v17, v0, v2

    const/16 v2, 0x9

    aput-object v18, v0, v2

    const/16 v2, 0xa

    aput-object v19, v0, v2

    .line 84
    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    const/4 v0, 0x0

    .line 88
    :goto_0
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 89
    sget-object v3, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v2

    sget-object v4, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    aget-object v4, v4, v0

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    .line 94
    :goto_1
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 95
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    aget-object v0, v0, v1

    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p1, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    .line 101
    iput p2, p0, Lorg/apache/log4j/lf5/LogLevel;->_precedence:I

    return-void
.end method

.method public static getAllDefaultLevels()Ljava/util/List;
    .locals 1

    .line 249
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getJdk14Levels()Ljava/util/List;
    .locals 1

    .line 245
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_jdk14Levels:[Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLog4JLevels()Ljava/util/List;
    .locals 1

    .line 241
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_log4JLevels:[Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getLogLevelColorMap()Ljava/util/Map;
    .locals 1

    .line 253
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    return-object v0
.end method

.method public static register(Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/LogLevel;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 169
    :cond_0
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 170
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/log4j/lf5/LogLevel;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static register(Ljava/util/List;)V
    .locals 1

    if-eqz p0, :cond_0

    .line 186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 187
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogLevel;

    invoke-static {v0}, Lorg/apache/log4j/lf5/LogLevel;->register(Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static register([Lorg/apache/log4j/lf5/LogLevel;)V
    .locals 2

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 178
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 179
    aget-object v1, p0, v0

    invoke-static {v1}, Lorg/apache/log4j/lf5/LogLevel;->register(Lorg/apache/log4j/lf5/LogLevel;)Lorg/apache/log4j/lf5/LogLevel;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static resetLogLevelColorMap()V
    .locals 4

    .line 228
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 231
    :goto_0
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_allDefaultLevels:[Lorg/apache/log4j/lf5/LogLevel;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 232
    sget-object v2, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    aget-object v1, v1, v0

    sget-object v3, Ljava/awt/Color;->black:Ljava/awt/Color;

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/LogLevel;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/log4j/lf5/LogLevelFormatException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 142
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogLevel;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 146
    sget-object v1, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 147
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_registeredLogLevelMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/LogLevel;

    :cond_1
    if-eqz v0, :cond_2

    return-object v0

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 152
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Error while trying to parse ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, ") into"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p0, " a LogLevel."

    .line 153
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    new-instance p0, Lorg/apache/log4j/lf5/LogLevelFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/LogLevelFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public encompasses(Lorg/apache/log4j/lf5/LogLevel;)Z
    .locals 1

    .line 122
    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result p1

    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 196
    instance-of v0, p1, Lorg/apache/log4j/lf5/LogLevel;

    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result v0

    check-cast p1, Lorg/apache/log4j/lf5/LogLevel;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/LogLevel;->getPrecedence()I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    return-object v0
.end method

.method protected getPrecedence()I
    .locals 1

    .line 261
    iget v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_precedence:I

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 208
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setLogLevelColorMap(Lorg/apache/log4j/lf5/LogLevel;Ljava/awt/Color;)V
    .locals 1

    .line 218
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 221
    sget-object p2, Ljava/awt/Color;->black:Ljava/awt/Color;

    .line 223
    :cond_0
    sget-object v0, Lorg/apache/log4j/lf5/LogLevel;->_logLevelColorMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 212
    iget-object v0, p0, Lorg/apache/log4j/lf5/LogLevel;->_label:Ljava/lang/String;

    return-object v0
.end method
