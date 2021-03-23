.class public Lorg/xutils/http/loader/FileLoader;
.super Lorg/xutils/http/loader/Loader;
.source "FileLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final CHECK_SIZE:I = 0x200


# instance fields
.field private contentLength:J

.field private diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

.field private isAutoRename:Z

.field private isAutoResume:Z

.field private responseFileName:Ljava/lang/String;

.field private saveFilePath:Ljava/lang/String;

.field private tempSaveFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    return-void
.end method

.method private autoRename(Ljava/io/File;)Ljava/io/File;
    .locals 5

    .line 286
    iget-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 287
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    :cond_1
    return-object p1

    .line 292
    :cond_2
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 293
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object p1, v0

    :cond_3
    return-object p1
.end method

.method private static getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;
    .locals 5

    const-string v0, "\""

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    :cond_0
    const-string v2, "Content-Disposition"

    .line 302
    invoke-virtual {p0, v2}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 303
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "filename="

    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_3

    add-int/lit8 v3, v3, 0x9

    const-string v4, ";"

    .line 307
    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_1

    .line 309
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    :cond_1
    if-le v4, v3, :cond_3

    .line 314
    :try_start_0
    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 315
    invoke-virtual {p0}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object p0

    .line 313
    invoke-static {v2, p0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 316
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p0

    :catch_0
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-object v1
.end method

.method private initDiskCacheFile(Lorg/xutils/http/request/UriRequest;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 270
    new-instance v0, Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {v0}, Lorg/xutils/cache/DiskCacheEntity;-><init>()V

    .line 271
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/DiskCacheEntity;->setKey(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/xutils/cache/LruDiskCache;->createDiskCacheFile(Lorg/xutils/cache/DiskCacheEntity;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    .line 274
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v0, :cond_0

    .line 275
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    .line 277
    iget-object p1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    const/4 p1, 0x0

    .line 278
    iput-boolean p1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    return-void

    .line 280
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create cache file error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static isSupportRange(Lorg/xutils/http/request/UriRequest;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    const-string v1, "Accept-Ranges"

    .line 331
    invoke-virtual {p0, v1}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "bytes"

    if-eqz v1, :cond_1

    .line 333
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_1
    const-string v1, "Content-Range"

    .line 335
    invoke-virtual {p0, v1}, Lorg/xutils/http/request/UriRequest;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 336
    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Ljava/io/File;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const/4 v2, 0x0

    .line 74
    :try_start_0
    new-instance v3, Ljava/io/File;

    iget-object v4, v1, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 79
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    .line 81
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not create dir: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_2
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 88
    iget-boolean v6, v1, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_5

    cmp-long v6, v4, v7

    if-lez v6, :cond_5

    const-wide/16 v9, 0x200

    sub-long v11, v4, v9

    const-string v6, "need retry"

    cmp-long v13, v11, v7

    if-lez v13, :cond_4

    .line 93
    :try_start_1
    new-instance v13, Ljava/io/FileInputStream;

    invoke-direct {v13, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v14, 0x200

    .line 94
    :try_start_2
    invoke-static {v13, v11, v12, v14}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v11

    .line 95
    invoke-static {v0, v7, v8, v14}, Lorg/xutils/common/util/IOUtil;->readBytes(Ljava/io/InputStream;JI)[B

    move-result-object v12

    .line 96
    invoke-static {v12, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 101
    iget-wide v11, v1, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    sub-long/2addr v11, v9

    iput-wide v11, v1, Lorg/xutils/http/loader/FileLoader;->contentLength:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    :try_start_3
    invoke-static {v13}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto :goto_2

    .line 97
    :cond_3
    :try_start_4
    invoke-static {v13}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 98
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 99
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 104
    :cond_4
    :try_start_5
    invoke-static {v3}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 105
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    move-object v13, v2

    .line 108
    :goto_1
    :try_start_6
    invoke-static {v13}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 115
    :cond_5
    :goto_2
    iget-boolean v6, v1, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v6, :cond_6

    .line 117
    new-instance v6, Ljava/io/FileOutputStream;

    const/4 v7, 0x1

    invoke-direct {v6, v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_3

    .line 119
    :cond_6
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-wide v4, v7

    .line 122
    :goto_3
    iget-wide v7, v1, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    add-long/2addr v7, v4

    .line 123
    new-instance v15, Ljava/io/BufferedInputStream;

    invoke-direct {v15, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    .line 124
    :try_start_7
    new-instance v14, Ljava/io/BufferedOutputStream;

    invoke-direct {v14, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 126
    :try_start_8
    iget-object v0, v1, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    const-string v2, "download stopped!"

    if-eqz v0, :cond_8

    :try_start_9
    iget-object v9, v1, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    const/4 v0, 0x1

    move-wide v10, v7

    move-wide v12, v4

    move-object v6, v14

    move v14, v0

    :try_start_a
    invoke-interface/range {v9 .. v14}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_4

    .line 127
    :cond_7
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v6, v14

    :goto_4
    const/16 v0, 0x1000

    new-array v0, v0, [B

    :cond_9
    :goto_5
    move-wide v12, v4

    .line 132
    invoke-virtual {v15, v0}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    .line 135
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    .line 140
    invoke-virtual {v6, v0, v5, v4}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v4, v4

    add-long/2addr v4, v12

    .line 142
    iget-object v9, v1, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v9, :cond_9

    .line 143
    iget-object v9, v1, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v14, 0x0

    move-wide v10, v7

    move-wide v12, v4

    invoke-interface/range {v9 .. v14}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_5

    .line 144
    :cond_a
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 145
    new-instance v0, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v0, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_b
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 137
    new-instance v0, Ljava/io/IOException;

    const-string v2, "parent be deleted!"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_c
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 151
    iget-object v0, v1, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v0, :cond_d

    .line 152
    iget-object v0, v1, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;

    move-result-object v3

    .line 155
    :cond_d
    iget-object v0, v1, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_e

    .line 156
    iget-object v9, v1, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const/4 v14, 0x1

    move-wide v10, v7

    invoke-interface/range {v9 .. v14}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 159
    :cond_e
    invoke-static {v15}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    invoke-static {v6}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 163
    invoke-direct {v1, v3}, Lorg/xutils/http/loader/FileLoader;->autoRename(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :catchall_2
    move-exception v0

    goto :goto_6

    :catchall_3
    move-exception v0

    move-object v6, v14

    :goto_6
    move-object v2, v6

    goto :goto_7

    :catchall_4
    move-exception v0

    goto :goto_7

    :catchall_5
    move-exception v0

    move-object v15, v2

    .line 159
    :goto_7
    invoke-static {v15}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 160
    invoke-static {v2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/io/File;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 173
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getSaveFilePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    .line 174
    iput-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    .line 175
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lorg/xutils/ex/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "download stopped!"

    if-eqz v1, :cond_2

    .line 177
    :try_start_1
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_1

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 182
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lorg/xutils/http/loader/FileLoader;->initDiskCacheFile(Lorg/xutils/http/request/UriRequest;)V

    goto :goto_1

    .line 184
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    .line 187
    :goto_1
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_4

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 188
    :cond_3
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :cond_4
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_lock"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lorg/xutils/common/util/ProcessLock;->tryLock(Ljava/lang/String;Z)Lorg/xutils/common/util/ProcessLock;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 193
    invoke-virtual {v0}, Lorg/xutils/common/util/ProcessLock;->isValid()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 197
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getParams()Lorg/xutils/http/RequestParams;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    .line 200
    iget-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_6

    .line 201
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v5

    const-wide/16 v7, 0x200

    cmp-long v9, v5, v7

    if-gtz v9, :cond_5

    .line 204
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    goto :goto_3

    :cond_5
    sub-long v3, v5, v7

    .line 211
    :cond_6
    :goto_3
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    const-string v5, "RANGE"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "bytes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v5, v3}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_8

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_4

    .line 215
    :cond_7
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V

    .line 220
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getContentLength()J

    move-result-wide v3

    iput-wide v3, p0, Lorg/xutils/http/loader/FileLoader;->contentLength:J

    .line 221
    iget-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v1, :cond_9

    .line 222
    invoke-static {p1}, Lorg/xutils/http/loader/FileLoader;->getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    .line 224
    :cond_9
    iget-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    if-eqz v1, :cond_a

    .line 225
    invoke-static {p1}, Lorg/xutils/http/loader/FileLoader;->isSupportRange(Lorg/xutils/http/request/UriRequest;)Z

    move-result v1

    iput-boolean v1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    .line 228
    :cond_a
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_c

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->progressHandler:Lorg/xutils/http/ProgressHandler;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_5

    .line 229
    :cond_b
    new-instance v1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {v1, v2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 232
    :cond_c
    :goto_5
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v1, :cond_d

    .line 233
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->getCacheEntity()Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v1

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 235
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getETag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xutils/cache/DiskCacheEntity;->setEtag(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getExpiration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/xutils/cache/DiskCacheEntity;->setExpires(J)V

    .line 237
    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getLastModified()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, v2}, Lorg/xutils/cache/DiskCacheEntity;->setLastModify(Ljava/util/Date;)V

    .line 239
    :cond_d
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xutils/http/loader/FileLoader;->load(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object p1

    goto :goto_7

    .line 194
    :cond_e
    new-instance v1, Lorg/xutils/ex/FileLockedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "download exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lorg/xutils/http/loader/FileLoader;->saveFilePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Lorg/xutils/ex/HttpException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception v1

    .line 241
    :try_start_2
    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->getCode()I

    move-result v2

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_12

    .line 242
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    if-eqz v1, :cond_f

    .line 243
    iget-object v1, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-virtual {v1}, Lorg/xutils/cache/DiskCacheFile;->commit()Lorg/xutils/cache/DiskCacheFile;

    move-result-object v1

    goto :goto_6

    .line 245
    :cond_f
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xutils/http/loader/FileLoader;->tempSaveFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_6
    if-eqz v1, :cond_11

    .line 248
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 249
    iget-boolean v2, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    if-eqz v2, :cond_10

    .line 250
    invoke-static {p1}, Lorg/xutils/http/loader/FileLoader;->getResponseFileName(Lorg/xutils/http/request/UriRequest;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->responseFileName:Ljava/lang/String;

    .line 252
    :cond_10
    invoke-direct {p0, v1}, Lorg/xutils/http/loader/FileLoader;->autoRename(Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 261
    :goto_7
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 262
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object p1

    .line 254
    :cond_11
    :try_start_3
    invoke-static {v1}, Lorg/xutils/common/util/IOUtil;->deleteFileOrDir(Ljava/io/File;)Z

    .line 255
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache file not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getCacheKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 258
    :cond_12
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 261
    :goto_8
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 262
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->diskCacheFile:Lorg/xutils/cache/DiskCacheFile;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public bridge synthetic load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->load(Ljava/io/InputStream;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->load(Lorg/xutils/http/request/UriRequest;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/xutils/cache/LruDiskCache;->getDiskCacheFile(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/FileLoader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/io/File;

    move-result-object p1

    return-object p1
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Lorg/xutils/http/loader/FileLoader;

    invoke-direct {v0}, Lorg/xutils/http/loader/FileLoader;-><init>()V

    return-object v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 0

    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 62
    iput-object p1, p0, Lorg/xutils/http/loader/FileLoader;->params:Lorg/xutils/http/RequestParams;

    .line 63
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->isAutoResume()Z

    move-result v0

    iput-boolean v0, p0, Lorg/xutils/http/loader/FileLoader;->isAutoResume:Z

    .line 64
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->isAutoRename()Z

    move-result p1

    iput-boolean p1, p0, Lorg/xutils/http/loader/FileLoader;->isAutoRename:Z

    :cond_0
    return-void
.end method
