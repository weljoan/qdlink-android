.class public Lorg/apache/log4j/helpers/UtilLoggingLevel;
.super Lorg/apache/log4j/Level;
.source "UtilLoggingLevel.java"


# static fields
.field public static final CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final CONFIG_INT:I = 0x36b0

.field public static final FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final FINER_INT:I = 0x2ee0

.field public static final FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final FINEST_INT:I = 0x2af8

.field public static final FINE_INT:I = 0x32c8

.field public static final INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final SEVERE_INT:I = 0x55f0

.field public static final UNKNOWN_INT:I = 0x2710

.field public static final WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

.field public static final WARNING_INT:I = 0x5208

.field private static final serialVersionUID:J = 0xc9e7c96f753c6b3L


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 75
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const/16 v1, 0x55f0

    const-string v2, "SEVERE"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 80
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const/16 v1, 0x5208

    const-string v2, "WARNING"

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 86
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const/16 v1, 0x4e20

    const-string v2, "INFO"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 91
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const/16 v1, 0x36b0

    const-string v2, "CONFIG"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 96
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const/16 v1, 0x32c8

    const-string v2, "FINE"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 101
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const/16 v1, 0x2ee0

    const-string v2, "FINER"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    .line 106
    new-instance v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;

    const/16 v1, 0x2af8

    const-string v2, "FINEST"

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/log4j/helpers/UtilLoggingLevel;-><init>(ILjava/lang/String;I)V

    sput-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-void
.end method

.method protected constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 118
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/log4j/Level;-><init>(ILjava/lang/String;I)V

    return-void
.end method

.method public static getAllPossibleLevels()Ljava/util/List;
    .locals 2

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v1, Lorg/apache/log4j/helpers/UtilLoggingLevel;->SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static toLevel(I)Lorg/apache/log4j/Level;
    .locals 1

    .line 164
    sget-object v0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    invoke-static {p0, v0}, Lorg/apache/log4j/helpers/UtilLoggingLevel;->toLevel(ILorg/apache/log4j/helpers/UtilLoggingLevel;)Lorg/apache/log4j/helpers/UtilLoggingLevel;

    move-result-object p0

    return-object p0
.end method

.method public static toLevel(Ljava/lang/String;)Lorg/apache/log4j/Level;
    .locals 1

    .line 189
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p0, v0}, Lorg/apache/log4j/helpers/UtilLoggingLevel;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object p0

    return-object p0
.end method

.method public static toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;
    .locals 1

    if-nez p0, :cond_0

    return-object p1

    .line 205
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SEVERE"

    .line 207
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    :cond_1
    const-string v0, "WARNING"

    .line 212
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    :cond_2
    const-string v0, "INFO"

    .line 216
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    :cond_3
    const-string v0, "CONFI"

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    :cond_4
    const-string v0, "FINE"

    .line 224
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    :cond_5
    const-string v0, "FINER"

    .line 228
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 229
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    :cond_6
    const-string v0, "FINEST"

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 233
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    :cond_7
    return-object p1
.end method

.method public static toLevel(ILorg/apache/log4j/helpers/UtilLoggingLevel;)Lorg/apache/log4j/helpers/UtilLoggingLevel;
    .locals 1

    const/16 v0, 0x2af8

    if-eq p0, v0, :cond_6

    const/16 v0, 0x2ee0

    if-eq p0, v0, :cond_5

    const/16 v0, 0x32c8

    if-eq p0, v0, :cond_4

    const/16 v0, 0x36b0

    if-eq p0, v0, :cond_3

    const/16 v0, 0x4e20

    if-eq p0, v0, :cond_2

    const/16 v0, 0x5208

    if-eq p0, v0, :cond_1

    const/16 v0, 0x55f0

    if-eq p0, v0, :cond_0

    return-object p1

    .line 133
    :cond_0
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->SEVERE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    .line 136
    :cond_1
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->WARNING:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    .line 139
    :cond_2
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->INFO:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    .line 142
    :cond_3
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->CONFIG:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    .line 145
    :cond_4
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINE:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    .line 148
    :cond_5
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINER:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0

    .line 151
    :cond_6
    sget-object p0, Lorg/apache/log4j/helpers/UtilLoggingLevel;->FINEST:Lorg/apache/log4j/helpers/UtilLoggingLevel;

    return-object p0
.end method
