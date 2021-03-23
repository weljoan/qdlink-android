.class public Lorg/xutils/http/body/MultipartBody;
.super Ljava/lang/Object;
.source "MultipartBody.java"

# interfaces
.implements Lorg/xutils/http/body/ProgressBody;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xutils/http/body/MultipartBody$CounterOutputStream;
    }
.end annotation


# static fields
.field private static BOUNDARY_PREFIX_BYTES:[B

.field private static END_BYTES:[B

.field private static TWO_DASHES_BYTES:[B


# instance fields
.field private boundaryPostfixBytes:[B

.field private callBackHandler:Lorg/xutils/http/ProgressHandler;

.field private charset:Ljava/lang/String;

.field private contentType:Ljava/lang/String;

.field private current:J

.field private multipartParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;"
        }
    .end annotation
.end field

.field private total:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "--------7da3d81520810"

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    const-string v0, "\r\n"

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->END_BYTES:[B

    const-string v0, "--"

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/xutils/common/util/KeyValue;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    .line 31
    iput-object v0, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 34
    iput-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    .line 35
    iput-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    .line 38
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iput-object p2, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    .line 41
    :cond_0
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->multipartParams:Ljava/util/List;

    .line 42
    invoke-direct {p0}, Lorg/xutils/http/body/MultipartBody;->generateContentType()V

    .line 45
    new-instance p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    invoke-direct {p1, p0}, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;-><init>(Lorg/xutils/http/body/MultipartBody;)V

    .line 47
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/xutils/http/body/MultipartBody;->writeTo(Ljava/io/OutputStream;)V

    .line 48
    iget-object p1, p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->total:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/xutils/http/body/MultipartBody;->total:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-wide/16 p1, -0x1

    .line 50
    iput-wide p1, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    :goto_0
    return-void
.end method

.method private static buildContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 205
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; name=\""

    .line 206
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\\\""

    const-string v2, "\""

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "; filename=\""

    .line 208
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private static buildContentType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 216
    instance-of p0, p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 217
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "text/plain; charset="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string p0, "\\/jpg$"

    const-string v1, "/jpeg"

    .line 222
    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 224
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method private generateContentType()V
    .locals 4

    .line 62
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40efffe000000000L    # 65535.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lorg/xutils/http/body/MultipartBody;->boundaryPostfixBytes:[B

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method private writeEntry(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [[B

    .line 120
    sget-object v1, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->boundaryPostfixBytes:[B

    const/4 v4, 0x2

    aput-object v1, v0, v4

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 124
    instance-of v0, p3, Lorg/xutils/http/body/BodyItemWrapper;

    if-eqz v0, :cond_0

    .line 125
    check-cast p3, Lorg/xutils/http/body/BodyItemWrapper;

    .line 126
    invoke-virtual {p3}, Lorg/xutils/http/body/BodyItemWrapper;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 127
    invoke-virtual {p3}, Lorg/xutils/http/body/BodyItemWrapper;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-virtual {p3}, Lorg/xutils/http/body/BodyItemWrapper;->getContentType()Ljava/lang/String;

    move-result-object p3

    move-object v7, v0

    move-object v0, p3

    move-object p3, v7

    goto :goto_0

    :cond_0
    const-string v1, ""

    const/4 v0, 0x0

    .line 131
    :goto_0
    instance-of v4, p3, Ljava/io/File;

    if-eqz v4, :cond_3

    .line 132
    move-object v4, p3

    check-cast v4, Ljava/io/File;

    .line 133
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 134
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    .line 136
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    invoke-static {v4}, Lorg/xutils/http/body/FileBody;->getFileContentType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    new-array v5, v3, [[B

    .line 139
    iget-object v6, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {p2, v1, v6}, Lorg/xutils/http/body/MultipartBody;->buildContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v5, v2

    invoke-direct {p0, p1, v5}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    new-array p2, v3, [[B

    .line 140
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lorg/xutils/http/body/MultipartBody;->buildContentType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p3

    aput-object p3, p2, v2

    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    new-array p2, v2, [[B

    .line 141
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 142
    invoke-direct {p0, p1, v4}, Lorg/xutils/http/body/MultipartBody;->writeFile(Ljava/io/OutputStream;Ljava/io/File;)V

    new-array p2, v2, [[B

    .line 143
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    goto :goto_2

    :cond_3
    new-array v4, v3, [[B

    .line 145
    iget-object v5, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {p2, v1, v5}, Lorg/xutils/http/body/MultipartBody;->buildContentDisposition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object p2

    aput-object p2, v4, v2

    invoke-direct {p0, p1, v4}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    new-array p2, v3, [[B

    .line 146
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-static {p3, v0, v1}, Lorg/xutils/http/body/MultipartBody;->buildContentType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    aput-object v0, p2, v2

    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    new-array p2, v2, [[B

    .line 147
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 148
    instance-of p2, p3, Ljava/io/InputStream;

    if-eqz p2, :cond_4

    .line 149
    check-cast p3, Ljava/io/InputStream;

    invoke-direct {p0, p1, p3}, Lorg/xutils/http/body/MultipartBody;->writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    new-array p2, v2, [[B

    .line 150
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    goto :goto_2

    .line 153
    :cond_4
    instance-of p2, p3, [B

    if-eqz p2, :cond_5

    .line 154
    check-cast p3, [B

    check-cast p3, [B

    goto :goto_1

    .line 156
    :cond_5
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lorg/xutils/http/body/MultipartBody;->charset:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p3

    :goto_1
    new-array p2, v3, [[B

    aput-object p3, p2, v2

    .line 158
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 159
    iget-wide p1, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    array-length p3, p3

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    .line 160
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_7

    iget-wide v1, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    iget-wide v3, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    .line 161
    :cond_6
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    const-string p2, "upload stopped!"

    invoke-direct {p1, p2}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    return-void
.end method

.method private writeFile(Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 177
    instance-of v0, p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    if-eqz v0, :cond_0

    .line 178
    check-cast p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    invoke-virtual {p1, p2}, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->addFile(Ljava/io/File;)V

    goto :goto_0

    .line 180
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    :goto_0
    return-void
.end method

.method private varargs writeLine(Ljava/io/OutputStream;[[B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 169
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p2, v1

    .line 170
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 173
    :cond_0
    sget-object p2, Lorg/xutils/http/body/MultipartBody;->END_BYTES:[B

    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private writeStreamAndCloseIn(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    instance-of v0, p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    if-eqz v0, :cond_0

    .line 186
    check-cast p1, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;

    invoke-virtual {p1, p2}, Lorg/xutils/http/body/MultipartBody$CounterOutputStream;->addStream(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_0
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    .line 191
    :cond_1
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_3

    const/4 v2, 0x0

    .line 192
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    .line 193
    iget-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    .line 194
    iget-object v1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    iget-wide v3, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    iget-wide v5, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    const/4 v7, 0x0

    invoke-interface/range {v2 .. v7}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 195
    :cond_2
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    const-string v0, "upload stopped!"

    invoke-direct {p1, v0}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_3
    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    :goto_1
    return-void

    :catchall_0
    move-exception p1

    invoke-static {p2}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method


# virtual methods
.method public getContentLength()J
    .locals 2

    .line 69
    iget-wide v0, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 86
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->contentType:Ljava/lang/String;

    return-void
.end method

.method public setProgressHandler(Lorg/xutils/http/ProgressHandler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v0, :cond_1

    iget-wide v1, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    iget-wide v3, p0, Lorg/xutils/http/body/MultipartBody;->current:J

    const/4 v5, 0x1

    invoke-interface/range {v0 .. v5}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 93
    :cond_0
    new-instance p1, Lorg/xutils/common/Callback$CancelledException;

    const-string v0, "upload stopped!"

    invoke-direct {p1, v0}, Lorg/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 96
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/xutils/http/body/MultipartBody;->multipartParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/common/util/KeyValue;

    .line 97
    iget-object v2, v1, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 98
    iget-object v1, v1, Lorg/xutils/common/util/KeyValue;->value:Ljava/lang/Object;

    .line 99
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 100
    invoke-direct {p0, p1, v2, v1}, Lorg/xutils/http/body/MultipartBody;->writeEntry(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 103
    sget-object v2, Lorg/xutils/http/body/MultipartBody;->TWO_DASHES_BYTES:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v3, Lorg/xutils/http/body/MultipartBody;->BOUNDARY_PREFIX_BYTES:[B

    aput-object v3, v0, v1

    const/4 v1, 0x2

    iget-object v3, p0, Lorg/xutils/http/body/MultipartBody;->boundaryPostfixBytes:[B

    aput-object v3, v0, v1

    const/4 v1, 0x3

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/xutils/http/body/MultipartBody;->writeLine(Ljava/io/OutputStream;[[B)V

    .line 104
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 106
    iget-object v3, p0, Lorg/xutils/http/body/MultipartBody;->callBackHandler:Lorg/xutils/http/ProgressHandler;

    if-eqz v3, :cond_4

    .line 107
    iget-wide v6, p0, Lorg/xutils/http/body/MultipartBody;->total:J

    const/4 v8, 0x1

    move-wide v4, v6

    invoke-interface/range {v3 .. v8}, Lorg/xutils/http/ProgressHandler;->updateProgress(JJZ)Z

    :cond_4
    return-void
.end method
