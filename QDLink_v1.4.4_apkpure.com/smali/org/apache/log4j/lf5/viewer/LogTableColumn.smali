.class public Lorg/apache/log4j/lf5/viewer/LogTableColumn;
.super Ljava/lang/Object;
.source "LogTableColumn.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CATEGORY:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final DATE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final LEVEL:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final LOCATION:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final MESSAGE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final MESSAGE_NUM:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final NDC:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final THREAD:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field public static final THROWN:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

.field private static _log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn; = null

.field private static _logTableColumnMap:Ljava/util/Map; = null

.field private static final serialVersionUID:J = -0x3b56cab007a951e3L


# instance fields
.field protected _label:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "Date"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->DATE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 38
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "Thread"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THREAD:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 39
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "Message #"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE_NUM:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 40
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "Level"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LEVEL:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 41
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "NDC"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->NDC:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 42
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "Category"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->CATEGORY:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 43
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "Message"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 44
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "Location"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LOCATION:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 45
    new-instance v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const-string v1, "Thrown"

    invoke-direct {v0, v1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THROWN:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/16 v0, 0x9

    new-array v0, v0, [Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 63
    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->DATE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THREAD:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE_NUM:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LEVEL:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->NDC:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->CATEGORY:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->MESSAGE:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->LOCATION:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->THROWN:Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_logTableColumnMap:Ljava/util/Map;

    .line 68
    :goto_0
    sget-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 69
    sget-object v1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_logTableColumnMap:Ljava/util/Map;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    aget-object v3, v3, v2

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    return-void
.end method

.method public static getLogTableColumnArray()[Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .locals 1

    .line 145
    sget-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    return-object v0
.end method

.method public static getLogTableColumns()Ljava/util/List;
    .locals 1

    .line 141
    sget-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_log4JColumns:[Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/log4j/lf5/viewer/LogTableColumn;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException;
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 102
    sget-object v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_logTableColumnMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    .line 106
    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 107
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

    const-string p0, " a LogTableColumn."

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    new-instance p0, Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/log4j/lf5/viewer/LogTableColumnFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 118
    instance-of v0, p1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {p0}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Lorg/apache/log4j/lf5/viewer/LogTableColumn;

    invoke-virtual {p1}, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->getLabel()Ljava/lang/String;

    move-result-object p1

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

    .line 86
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 129
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/log4j/lf5/viewer/LogTableColumn;->_label:Ljava/lang/String;

    return-object v0
.end method
