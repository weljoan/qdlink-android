.class public final Lorg/apache/log4j/LogSF;
.super Lorg/apache/log4j/LogXF;
.source "LogSF.java"


# static fields
.field private static final FQCN:Ljava/lang/String;

.field static synthetic class$org$apache$log4j$LogSF:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 135
    sget-object v0, Lorg/apache/log4j/LogSF;->class$org$apache$log4j$LogSF:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.LogSF"

    invoke-static {v0}, Lorg/apache/log4j/LogSF;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/LogSF;->class$org$apache$log4j$LogSF:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/LogSF;->FQCN:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lorg/apache/log4j/LogXF;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 135
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 1

    .line 542
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 543
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 1

    .line 529
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 1

    .line 607
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 1

    .line 594
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 1

    .line 568
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 1

    .line 581
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 582
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 620
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 621
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 634
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 650
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 651
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 668
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 669
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 1

    .line 555
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 556
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 1

    .line 516
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 517
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 186
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static debug(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 271
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static error(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 225
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static error(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 319
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 320
    sget-object v0, Lorg/apache/log4j/Level;->ERROR:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static fatal(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 238
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static fatal(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 335
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lorg/apache/log4j/Level;->FATAL:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V
    .locals 7

    .line 147
    new-instance v6, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogSF;->FQCN:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lorg/apache/log4j/Logger;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    return-void
.end method

.method private static forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 162
    new-instance v6, Lorg/apache/log4j/spi/LoggingEvent;

    sget-object v1, Lorg/apache/log4j/LogSF;->FQCN:Ljava/lang/String;

    move-object v0, v6

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/log4j/spi/LoggingEvent;-><init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p0, v6}, Lorg/apache/log4j/Logger;->callAppenders(Lorg/apache/log4j/spi/LoggingEvent;)V

    return-void
.end method

.method private static format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    const-string v0, "\\{"

    .line 93
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v1

    .line 94
    invoke-static {p0, v0}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "{}"

    .line 96
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 98
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private static format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 119
    :try_start_0
    invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object p0

    .line 121
    invoke-virtual {p0, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :catch_0
    :cond_0
    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_5

    const-string v0, "{"

    .line 57
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, ""

    const/4 v4, 0x0

    :goto_0
    if-ltz v1, :cond_4

    if-eqz v1, :cond_1

    add-int/lit8 v5, v1, -0x1

    .line 59
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x5c

    if-eq v6, v7, :cond_0

    goto :goto_2

    .line 73
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    move-object v3, v2

    :goto_1
    move v2, v1

    goto :goto_4

    .line 60
    :cond_1
    :goto_2
    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    .line 61
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x7d

    if-ne v5, v6, :cond_3

    if-eqz p1, :cond_2

    .line 62
    array-length v3, p1

    if-ge v4, v3, :cond_2

    .line 63
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v4, 0x1

    aget-object v4, p1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    .line 65
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "{}"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    move v2, v4

    :goto_3
    add-int/lit8 v1, v1, 0x2

    move v4, v2

    goto :goto_1

    .line 69
    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    move v2, v3

    move-object v3, v1

    .line 76
    :goto_4
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    goto/16 :goto_0

    .line 78
    :cond_4
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 1

    .line 708
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 709
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 1

    .line 695
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 1

    .line 773
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 774
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 1

    .line 760
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 1

    .line 734
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 735
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 1

    .line 747
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 748
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 786
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 800
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 815
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 833
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 1

    .line 721
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 722
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 1

    .line 682
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 683
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 199
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static info(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lorg/apache/log4j/Logger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    sget-object v0, Lorg/apache/log4j/Level;->INFO:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;B)V
    .locals 1

    .line 1087
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1088
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;C)V
    .locals 1

    .line 1105
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1106
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;D)V
    .locals 1

    .line 1193
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    invoke-static {p3, p4}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;F)V
    .locals 1

    .line 1175
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1176
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;I)V
    .locals 1

    .line 1139
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1140
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;J)V
    .locals 1

    .line 1157
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1158
    invoke-static {p3, p4}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1052
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1053
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1212
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    invoke-static {p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1231
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1232
    invoke-static {p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1252
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1253
    invoke-static {p3, p4, p5, p6}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;S)V
    .locals 1

    .line 1122
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1123
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Z)V
    .locals 1

    .line 1069
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1070
    invoke-static {p3}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1016
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1017
    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1035
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1036
    invoke-static {p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p3, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 1

    .line 1369
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1370
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;C)V
    .locals 1

    .line 1350
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1351
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 1

    .line 1464
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1465
    invoke-static {p4, p5}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;F)V
    .locals 1

    .line 1444
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1445
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 1407
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1408
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    .line 1426
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1427
    invoke-static {p4, p5}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1312
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1313
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1485
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1486
    invoke-static {p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1509
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1510
    invoke-static {p4, p5, p6}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1535
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1536
    invoke-static {p4, p5, p6, p7}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;S)V
    .locals 1

    .line 1388
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1389
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 1331
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1332
    invoke-static {p4}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-static {p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1272
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1273
    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logrb(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 1293
    invoke-virtual {p0, p1}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1294
    invoke-static {p3, p4, p5}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p3, p2}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 1

    .line 376
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 1

    .line 363
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 364
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 1

    .line 441
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 1

    .line 428
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 429
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 1

    .line 402
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 1

    .line 415
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 416
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 454
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 468
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 484
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 485
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 502
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 503
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 1

    .line 389
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 1

    .line 350
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 173
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static trace(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 255
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    sget-object v0, Lorg/apache/log4j/LogSF;->TRACE:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;B)V
    .locals 1

    .line 873
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 874
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;C)V
    .locals 1

    .line 860
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 861
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(C)Ljava/lang/Character;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;D)V
    .locals 1

    .line 938
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;F)V
    .locals 1

    .line 925
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 926
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;I)V
    .locals 1

    .line 899
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 900
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;J)V
    .locals 1

    .line 912
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 913
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 951
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 952
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 965
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 981
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 982
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 999
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1000
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3, p4, p5}, Lorg/apache/log4j/LogSF;->toArray(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;S)V
    .locals 1

    .line 886
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;Z)V
    .locals 1

    .line 847
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 848
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2}, Lorg/apache/log4j/LogSF;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 212
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p1, p2}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static warn(Lorg/apache/log4j/Logger;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 303
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Logger;->isEnabledFor(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 304
    sget-object v0, Lorg/apache/log4j/Level;->WARN:Lorg/apache/log4j/Level;

    invoke-static {p2, p3}, Lorg/apache/log4j/LogSF;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, v0, p2, p1}, Lorg/apache/log4j/LogSF;->forcedLog(Lorg/apache/log4j/Logger;Lorg/apache/log4j/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
