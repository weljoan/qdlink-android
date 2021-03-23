.class public Lorg/xutils/http/body/InputStreamBody;
.super Ljava/lang/Object;
.source "InputStreamBody.java"

# interfaces
.implements Lorg/xutils/http/body/ProgressBody;


# instance fields
.field private callBackHandler:Lorg/xutils/http/ProgressHandler;

.field private content:Ljava/io/InputStream;

.field private contentType:Ljava/lang/String;

.field private current:J

.field private final total:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/InputStreamBody;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 26
    iput-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    .line 35
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    .line 36
    iput-object p2, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    .line 37
    invoke-static {p1}, Lorg/xutils/http/body/InputStreamBody;->getInputStreamLength(Ljava/io/InputStream;)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    return-void
.end method

.method public static getInputStreamLength(Ljava/io/InputStream;)J
    .locals 2

    .line 88
    :try_start_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v0, p0

    return-wide v0

    :catchall_0
    :cond_1
    const-wide/16 v0, -0x1

    return-wide v0
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 47
    iget-wide v0, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/octet-stream"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    const-string v6, "upload stopped!"

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    iget-wide v3, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p1, v6}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 69
    :cond_2
    :goto_1
    :try_start_0
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 71
    iget-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    .line 72
    iget-object v1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_2

    iget-object v7, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v8, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    iget-wide v10, p0, Lorg/xutils/http/body/InputStreamBody;->current:J

    const/4 v12, 0x0

    invoke-interface/range {v7 .. v12}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 73
    :cond_3
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    invoke-direct {p1, v6}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 76
    :cond_4
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 78
    iget-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz p1, :cond_5

    .line 79
    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v1, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    iget-wide v3, p0, Lorg/xutils/http/body/InputStreamBody;->total:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    :cond_5
    iget-object p1, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    invoke-static {p1}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception p1

    iget-object v0, p0, Lorg/xutils/http/body/InputStreamBody;->content:Ljava/io/InputStream;

    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method
