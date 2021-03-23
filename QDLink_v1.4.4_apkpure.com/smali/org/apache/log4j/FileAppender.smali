.class public Lorg/apache/log4j/FileAppender;
.super Lorg/apache/log4j/WriterAppender;
.source "FileAppender.java"


# instance fields
.field protected bufferSize:I

.field protected bufferedIO:Z

.field protected fileAppend:Z

.field protected fileName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    const/16 v0, 0x2000

    .line 67
    iput v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/log4j/FileAppender;-><init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    const/16 v1, 0x2000

    .line 67
    iput v1, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 109
    iput-object p1, p0, Lorg/apache/log4j/FileAppender;->layout:Lorg/apache/log4j/Layout;

    .line 110
    iget p1, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, p2, p3, v0, p1}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/log4j/Layout;Ljava/lang/String;ZZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Lorg/apache/log4j/WriterAppender;-><init>()V

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 62
    iput-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    const/16 v0, 0x2000

    .line 67
    iput v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 93
    iput-object p1, p0, Lorg/apache/log4j/FileAppender;->layout:Lorg/apache/log4j/Layout;

    .line 94
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 4

    .line 163
    iget-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 165
    :try_start_0
    iget-boolean v1, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    iget-boolean v2, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    iget v3, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/apache/log4j/FileAppender;->setFile(Ljava/lang/String;ZZI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 168
    iget-object v1, p0, Lorg/apache/log4j/FileAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "setFile("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-boolean v3, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v3, ") call failed."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/spi/ErrorHandler;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "File option not set for appender ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/FileAppender;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    const-string v0, "Are you using FileAppender instead of ConsoleAppender?"

    .line 174
    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected closeFile()V
    .locals 3

    .line 183
    iget-object v0, p0, Lorg/apache/log4j/FileAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    if-eqz v0, :cond_1

    .line 185
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/FileAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v0}, Lorg/apache/log4j/helpers/QuietWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 188
    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_0

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 193
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lorg/apache/log4j/FileAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getAppend()Z
    .locals 1

    .line 145
    iget-boolean v0, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    return v0
.end method

.method public getBufferSize()I
    .locals 1

    .line 216
    iget v0, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    return v0
.end method

.method public getBufferedIO()Z
    .locals 1

    .line 207
    iget-boolean v0, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    return v0
.end method

.method public getFile()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method protected reset()V
    .locals 1

    .line 343
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->closeFile()V

    const/4 v0, 0x0

    .line 344
    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 345
    invoke-super {p0}, Lorg/apache/log4j/WriterAppender;->reset()V

    return-void
.end method

.method public setAppend(Z)V
    .locals 0

    .line 233
    iput-boolean p1, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    return-void
.end method

.method public setBufferSize(I)V
    .locals 0

    .line 260
    iput p1, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    return-void
.end method

.method public setBufferedIO(Z)V
    .locals 0

    .line 248
    iput-boolean p1, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 250
    iput-boolean p1, p0, Lorg/apache/log4j/FileAppender;->immediateFlush:Z

    :cond_0
    return-void
.end method

.method public setFile(Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 137
    iput-object p1, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setFile(Ljava/lang/String;ZZI)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 281
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "setFile called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v0, 0x0

    .line 285
    invoke-virtual {p0, v0}, Lorg/apache/log4j/FileAppender;->setImmediateFlush(Z)V

    .line 288
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    :try_start_1
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 301
    :try_start_2
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 303
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    .line 313
    :goto_0
    invoke-virtual {p0, v0}, Lorg/apache/log4j/FileAppender;->createWriter(Ljava/io/OutputStream;)Ljava/io/OutputStreamWriter;

    move-result-object v0

    if-eqz p3, :cond_1

    .line 315
    new-instance v1, Ljava/io/BufferedWriter;

    invoke-direct {v1, v0, p4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    move-object v0, v1

    .line 317
    :cond_1
    invoke-virtual {p0, v0}, Lorg/apache/log4j/FileAppender;->setQWForFiles(Ljava/io/Writer;)V

    .line 318
    iput-object p1, p0, Lorg/apache/log4j/FileAppender;->fileName:Ljava/lang/String;

    .line 319
    iput-boolean p2, p0, Lorg/apache/log4j/FileAppender;->fileAppend:Z

    .line 320
    iput-boolean p3, p0, Lorg/apache/log4j/FileAppender;->bufferedIO:Z

    .line 321
    iput p4, p0, Lorg/apache/log4j/FileAppender;->bufferSize:I

    .line 322
    invoke-virtual {p0}, Lorg/apache/log4j/FileAppender;->writeHeader()V

    const-string p1, "setFile ended"

    .line 323
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 324
    monitor-exit p0

    return-void

    .line 307
    :cond_2
    :try_start_3
    throw v0

    .line 310
    :cond_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected setQWForFiles(Ljava/io/Writer;)V
    .locals 2

    .line 334
    new-instance v0, Lorg/apache/log4j/helpers/QuietWriter;

    iget-object v1, p0, Lorg/apache/log4j/FileAppender;->errorHandler:Lorg/apache/log4j/spi/ErrorHandler;

    invoke-direct {v0, p1, v1}, Lorg/apache/log4j/helpers/QuietWriter;-><init>(Ljava/io/Writer;Lorg/apache/log4j/spi/ErrorHandler;)V

    iput-object v0, p0, Lorg/apache/log4j/FileAppender;->qw:Lorg/apache/log4j/helpers/QuietWriter;

    return-void
.end method
