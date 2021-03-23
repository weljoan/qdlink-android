.class public abstract Lorg/apache/log4j/AppenderSkeleton;
.super Ljava/lang/Object;
.source "AppenderSkeleton.java"

# interfaces
.implements Lorg/apache/log4j/Appender;
.implements Lorg/apache/log4j/spi/OptionHandler;


# instance fields
.field protected closed:Z

.field protected errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

.field protected headFilter:Lorg/apache/log4j/spi/Filter;

.field protected layout:Lorg/apache/log4j/Layout;

.field protected name:Ljava/lang/String;

.field protected tailFilter:Lorg/apache/log4j/spi/Filter;

.field protected threshold:Lorg/apache/log4j/Priority;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance p1, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;

    invoke-direct {p1}, Lorg/apache/log4j/helpers/OnlyOnceErrorHandler;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    const/4 p1, 0x0

    .line 64
    iput-boolean p1, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    return-void
.end method

.method public addFilter(Lorg/apache/log4j/spi/Filter;)V
    .locals 1

    .line 102
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    if-nez v0, :cond_0

    .line 103
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->tailFilter:Lorg/apache/log4j/spi/Filter;

    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->tailFilter:Lorg/apache/log4j/spi/Filter;

    invoke-virtual {v0, p1}, Lorg/apache/log4j/spi/Filter;->setNext(Lorg/apache/log4j/spi/Filter;)V

    .line 106
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->tailFilter:Lorg/apache/log4j/spi/Filter;

    :goto_0
    return-void
.end method

.method protected abstract append(Lorg/apache/log4j/spi/LoggingEvent;)V
.end method

.method public clearFilters()V
    .locals 1

    const/4 v0, 0x0

    .line 128
    iput-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->tailFilter:Lorg/apache/log4j/spi/Filter;

    iput-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    return-void
.end method

.method public declared-synchronized doAppend(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 3

    monitor-enter p0

    .line 231
    :try_start_0
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-eqz v0, :cond_0

    .line 232
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v0, "Attempted to append to closed appender named ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "]."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    monitor-exit p0

    return-void

    .line 236
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/log4j/AppenderSkeleton;->isAsSevereAsThreshold(Lorg/apache/log4j/Priority;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 237
    monitor-exit p0

    return-void

    .line 240
    :cond_1
    :try_start_2
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    :goto_0
    if-eqz v0, :cond_4

    .line 244
    invoke-virtual {v0, p1}, Lorg/apache/log4j/spi/Filter;->decide(Lorg/apache/log4j/spi/LoggingEvent;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v0}, Lorg/apache/log4j/spi/Filter;->getNext()Lorg/apache/log4j/spi/Filter;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 245
    :cond_3
    monitor-exit p0

    return-void

    .line 251
    :cond_4
    :try_start_3
    invoke-virtual {p0, p1}, Lorg/apache/log4j/AppenderSkeleton;->append(Lorg/apache/log4j/spi/LoggingEvent;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 252
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public finalize()V
    .locals 2

    .line 140
    iget-boolean v0, p0, Lorg/apache/log4j/AppenderSkeleton;->closed:Z

    if-eqz v0, :cond_0

    return-void

    .line 143
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Finalizing appender named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lorg/apache/log4j/AppenderSkeleton;->close()V

    return-void
.end method

.method public getErrorHandler()Lorg/apache/log4j/spi/ErrorHandler;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    return-object v0
.end method

.method public getFilter()Lorg/apache/log4j/spi/Filter;
    .locals 1

    .line 166
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    return-object v0
.end method

.method public final getFirstFilter()Lorg/apache/log4j/spi/Filter;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->headFilter:Lorg/apache/log4j/spi/Filter;

    return-object v0
.end method

.method public getLayout()Lorg/apache/log4j/Layout;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getThreshold()Lorg/apache/log4j/Priority;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->threshold:Lorg/apache/log4j/Priority;

    return-object v0
.end method

.method public isAsSevereAsThreshold(Lorg/apache/log4j/Priority;)Z
    .locals 1

    .line 219
    iget-object v0, p0, Lorg/apache/log4j/AppenderSkeleton;->threshold:Lorg/apache/log4j/Priority;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Priority;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public declared-synchronized setErrorHandler(Lorg/apache/log4j/spi/ErrorHandler;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, "You have tried to set a null error-handler."

    .line 264
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_0
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLayout(Lorg/apache/log4j/Layout;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->layout:Lorg/apache/log4j/Layout;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->name:Ljava/lang/String;

    return-void
.end method

.method public setThreshold(Lorg/apache/log4j/Priority;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lorg/apache/log4j/AppenderSkeleton;->threshold:Lorg/apache/log4j/Priority;

    return-void
.end method
