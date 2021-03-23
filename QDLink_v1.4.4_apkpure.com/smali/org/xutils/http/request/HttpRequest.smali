.class public Lorg/xutils/http/request/HttpRequest;
.super Lorg/xutils/http/request/UriRequest;
.source "HttpRequest.java"


# static fields
.field private static final COOKIE_MANAGER:Ljava/net/CookieManager;


# instance fields
.field private cacheKey:Ljava/lang/String;

.field private connection:Ljava/net/HttpURLConnection;

.field private inputStream:Ljava/io/InputStream;

.field private isLoading:Z

.field private responseCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    new-instance v0, Ljava/net/CookieManager;

    sget-object v1, Lorg/xutils/http/cookie/DbCookieStore;->INSTANCE:Lorg/xutils/http/cookie/DbCookieStore;

    sget-object v2, Ljava/net/CookiePolicy;->ACCEPT_ALL:Ljava/net/CookiePolicy;

    invoke-direct {v0, v1, v2}, Ljava/net/CookieManager;-><init>(Ljava/net/CookieStore;Ljava/net/CookiePolicy;)V

    sput-object v0, Lorg/xutils/http/request/HttpRequest;->COOKIE_MANAGER:Ljava/net/CookieManager;

    return-void
.end method

.method constructor <init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/xutils/http/request/UriRequest;-><init>(Lorg/xutils/http/RequestParams;Ljava/lang/reflect/Type;)V

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    const/4 p2, 0x0

    .line 51
    iput-boolean p2, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 52
    iput-object p1, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 53
    iput-object p1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 54
    iput p2, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    return-void
.end method

.method private static toGMTString(Ljava/util/Date;)Ljava/lang/String;
    .locals 5

    .line 458
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "EEE, dd MMM y HH:mm:ss \'GMT\'"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v1, "GMT"

    .line 460
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 462
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 463
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 464
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected buildQueryUrl(Lorg/xutils/http/RequestParams;)Ljava/lang/String;
    .locals 6

    .line 67
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getUri()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "?"

    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "&"

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getQueryStringParams()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xutils/common/util/KeyValue;

    .line 77
    iget-object v3, v2, Lorg/xutils/common/util/KeyValue;->key:Ljava/lang/String;

    .line 78
    invoke-virtual {v2}, Lorg/xutils/common/util/KeyValue;->getValueStr()Ljava/lang/String;

    move-result-object v2

    .line 79
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    .line 81
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    .line 82
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v0, 0x26

    if-ne p1, v0, :cond_4

    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 93
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    const/16 v0, 0x3f

    if-ne p1, v0, :cond_5

    .line 94
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 96
    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public clearCacheHeader()V
    .locals 3

    .line 312
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const/4 v1, 0x0

    const-string v2, "If-Modified-Since"

    invoke-virtual {v0, v2, v1}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v2, "If-None-Match"

    invoke-virtual {v0, v2, v1}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 328
    invoke-static {v0}, Lorg/xutils/common/util/IOUtil;->closeQuietly(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    .line 329
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 331
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .line 263
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 265
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    .line 271
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->cacheKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 5

    .line 340
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 342
    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v0, v1, v3

    if-gez v0, :cond_1

    .line 348
    :try_start_1
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    goto :goto_1

    .line 354
    :cond_0
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    int-to-long v1, v0

    :catchall_1
    :cond_1
    return-wide v1
.end method

.method public getETag()Ljava/lang/String;
    .locals 2

    .line 435
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v1, "ETag"

    .line 436
    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpiration()J
    .locals 8

    .line 385
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    const-string v3, "Cache-Control"

    .line 390
    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-wide/16 v4, 0x0

    if-nez v3, :cond_2

    .line 392
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v6, ","

    invoke-direct {v3, v0, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 394
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v6, "max-age"

    .line 395
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/16 v3, 0x3d

    .line 396
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-lez v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    .line 399
    :try_start_0
    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 400
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_2

    .line 402
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x3e8

    mul-long v6, v6, v2

    add-long/2addr v0, v6

    move-wide v1, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 405
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    cmp-long v0, v1, v4

    if-gtz v0, :cond_3

    .line 415
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getExpiration()J

    move-result-wide v1

    :cond_3
    cmp-long v0, v1, v4

    if-gtz v0, :cond_4

    .line 418
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheMaxAge()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-lez v0, :cond_4

    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v2}, Lorg/xutils/http/RequestParams;->getCacheMaxAge()J

    move-result-wide v2

    add-long v1, v0, v2

    :cond_4
    cmp-long v0, v1, v4

    if-gtz v0, :cond_5

    const-wide v1, 0x7fffffffffffffffL

    :cond_5
    return-wide v1
.end method

.method public getHeaderFieldDate(Ljava/lang/String;J)J
    .locals 1

    .line 453
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    return-wide p2

    .line 454
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Ljava/net/HttpURLConnection;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 318
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    if-nez v1, :cond_1

    .line 319
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 320
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    .line 322
    :cond_1
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->inputStream:Ljava/io/InputStream;

    return-object v0
.end method

.method public getLastModified()J
    .locals 3

    .line 430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "Last-Modified"

    invoke-virtual {p0, v2, v0, v1}, Lorg/xutils/http/request/HttpRequest;->getHeaderFieldDate(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRequestUri()Ljava/lang/String;
    .locals 2

    .line 101
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->queryUrl:Ljava/lang/String;

    .line 102
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v1, :cond_0

    .line 103
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 105
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getResponseCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 364
    iget v0, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    return v0

    .line 366
    :cond_0
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_1

    const/16 v0, 0xc8

    return v0

    :cond_1
    const/16 v0, 0x194

    return v0
.end method

.method public getResponseHeader(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 441
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 442
    :cond_0
    invoke-virtual {v0, p1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 447
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 448
    :cond_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isLoading()Z
    .locals 1

    .line 258
    iget-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    return v0
.end method

.method public loadResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 276
    iput-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 277
    invoke-super {p0}, Lorg/xutils/http/request/UriRequest;->loadResult()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public loadResultFromCache()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x1

    .line 288
    iput-boolean v0, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 289
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getCacheDirName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->getDiskCache(Ljava/lang/String;)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    .line 290
    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getCacheSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/xutils/cache/LruDiskCache;->setMaxSize(J)Lorg/xutils/cache/LruDiskCache;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 294
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v1}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v1

    invoke-static {v1}, Lorg/xutils/http/HttpMethod;->permitsCache(Lorg/xutils/http/HttpMethod;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getLastModify()Ljava/util/Date;

    move-result-object v1

    .line 296
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 297
    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-static {v1}, Lorg/xutils/http/request/HttpRequest;->toGMTString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "If-Modified-Since"

    invoke-virtual {v2, v3, v1}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :cond_0
    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getEtag()Ljava/lang/String;

    move-result-object v1

    .line 300
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 301
    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    const-string v3, "If-None-Match"

    invoke-virtual {v2, v3, v1}, Lorg/xutils/http/RequestParams;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    :cond_1
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->loader:Lorg/xutils/http/loader/Loader;

    invoke-virtual {v1, v0}, Lorg/xutils/http/loader/Loader;->loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendRequest()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "Cookie"

    const/4 v1, 0x0

    .line 119
    iput-boolean v1, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    .line 120
    iput v1, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 122
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->queryUrl:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 124
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getProxy()Ljava/net/Proxy;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v2, v3}, Ljava/net/URL;->openConnection(Ljava/net/Proxy;)Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    check-cast v3, Ljava/net/HttpURLConnection;

    iput-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    .line 132
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-ge v3, v4, :cond_1

    .line 133
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v5, "Connection"

    const-string v6, "close"

    invoke-virtual {v3, v5, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    :cond_1
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v5}, Lorg/xutils/http/RequestParams;->getReadTimeout()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 137
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v5}, Lorg/xutils/http/RequestParams;->getConnectTimeout()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 138
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v5}, Lorg/xutils/http/RequestParams;->getRedirectHandler()Lorg/xutils/http/app/RedirectHandler;

    move-result-object v5

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v3, v5}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 139
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    instance-of v3, v3, Ljavax/net/ssl/HttpsURLConnection;

    if-eqz v3, :cond_3

    .line 140
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 142
    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    check-cast v5, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v5, v3}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 147
    :cond_3
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v3}, Lorg/xutils/http/RequestParams;->isUseCookie()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    :try_start_0
    sget-object v3, Lorg/xutils/http/request/HttpRequest;->COOKIE_MANAGER:Ljava/net/CookieManager;

    .line 150
    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v3, v5, v7}, Ljava/net/CookieManager;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 151
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 153
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v5, ";"

    invoke-static {v5, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 161
    :cond_4
    :goto_2
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getHeaders()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 163
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xutils/http/BaseParams$Header;

    .line 164
    iget-object v3, v1, Lorg/xutils/http/BaseParams$Header;->key:Ljava/lang/String;

    .line 165
    invoke-virtual {v1}, Lorg/xutils/http/BaseParams$Header;->getValueStr()Ljava/lang/String;

    move-result-object v5

    .line 166
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 167
    iget-boolean v1, v1, Lorg/xutils/http/BaseParams$Header;->setHeader:Z

    if-eqz v1, :cond_6

    .line 168
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v3, v5}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 170
    :cond_6
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v3, v5}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 178
    :cond_7
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz v0, :cond_8

    .line 179
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    invoke-interface {v0, p0}, Lorg/xutils/http/app/RequestInterceptListener;->beforeRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 183
    :cond_8
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getMethod()Lorg/xutils/http/HttpMethod;

    move-result-object v0

    .line 185
    :try_start_1
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lorg/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 188
    :try_start_2
    const-class v3, Ljava/net/HttpURLConnection;

    const-string v5, "method"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 189
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 190
    iget-object v5, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Lorg/xutils/http/HttpMethod;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v7}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 195
    :goto_4
    invoke-static {v0}, Lorg/xutils/http/HttpMethod;->permitsRequestBody(Lorg/xutils/http/HttpMethod;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 196
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->getRequestBody()Lorg/xutils/http/body/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 198
    instance-of v1, v0, Lorg/xutils/http/body/ProgressBody;

    if-eqz v1, :cond_9

    .line 199
    move-object v1, v0

    check-cast v1, Lorg/xutils/http/body/ProgressBody;

    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->progressHandler:Lorg/xutils/http/ProgressHandler;

    invoke-interface {v1, v3}, Lorg/xutils/http/body/ProgressBody;->setProgressHandler(Lorg/xutils/http/ProgressHandler;)V

    .line 201
    :cond_9
    invoke-interface {v0}, Lorg/xutils/http/body/RequestBody;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 203
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    const-string v5, "Content-Type"

    invoke-virtual {v3, v5, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :cond_a
    invoke-interface {v0}, Lorg/xutils/http/body/RequestBody;->getContentLength()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/high16 v1, 0x40000

    cmp-long v3, v7, v9

    if-gez v3, :cond_b

    .line 207
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    goto :goto_5

    :cond_b
    const-wide/32 v9, 0x7fffffff

    cmp-long v3, v7, v9

    if-gez v3, :cond_c

    .line 210
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    long-to-int v3, v7

    invoke-virtual {v1, v3}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(I)V

    goto :goto_5

    .line 211
    :cond_c
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v4, :cond_d

    .line 212
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v7, v8}, Ljava/net/HttpURLConnection;->setFixedLengthStreamingMode(J)V

    goto :goto_5

    .line 214
    :cond_d
    iget-object v3, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v3, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 217
    :goto_5
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Content-Length"

    invoke-virtual {v1, v4, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 219
    iget-object v1, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xutils/http/body/RequestBody;->writeTo(Ljava/io/OutputStream;)V

    .line 224
    :cond_e
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v0}, Lorg/xutils/http/RequestParams;->isUseCookie()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 226
    :try_start_3
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 228
    sget-object v1, Lorg/xutils/http/request/HttpRequest;->COOKIE_MANAGER:Ljava/net/CookieManager;

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/net/CookieManager;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    :cond_f
    :goto_6
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    .line 238
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    if-eqz v0, :cond_10

    .line 239
    iget-object v0, p0, Lorg/xutils/http/request/HttpRequest;->requestInterceptListener:Lorg/xutils/http/app/RequestInterceptListener;

    invoke-interface {v0, p0}, Lorg/xutils/http/app/RequestInterceptListener;->afterRequest(Lorg/xutils/http/request/UriRequest;)V

    .line 241
    :cond_10
    iget v0, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    const/16 v1, 0xcc

    if-eq v0, v1, :cond_12

    const/16 v1, 0xcd

    if-eq v0, v1, :cond_12

    const/16 v1, 0x12c

    if-ge v0, v1, :cond_11

    .line 253
    iput-boolean v6, p0, Lorg/xutils/http/request/HttpRequest;->isLoading:Z

    return-void

    .line 244
    :cond_11
    new-instance v1, Lorg/xutils/ex/HttpException;

    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lorg/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    .line 246
    :try_start_4
    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->params:Lorg/xutils/http/RequestParams;

    invoke-virtual {v2}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/xutils/ex/HttpException;->setResult(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 249
    :catchall_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lorg/xutils/ex/HttpException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", url: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lorg/xutils/http/request/HttpRequest;->queryUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;)V

    .line 250
    throw v1

    .line 242
    :cond_12
    new-instance v0, Lorg/xutils/ex/HttpException;

    iget v1, p0, Lorg/xutils/http/request/HttpRequest;->responseCode:I

    invoke-virtual {p0}, Lorg/xutils/http/request/HttpRequest;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/xutils/ex/HttpException;-><init>(ILjava/lang/String;)V

    throw v0

    .line 192
    :catchall_3
    throw v1
.end method
