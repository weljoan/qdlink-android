.class Lorg/xutils/http/loader/ObjectLoader;
.super Lorg/xutils/http/loader/Loader;
.source "ObjectLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/xutils/http/loader/Loader<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private final objectClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final objectType:Ljava/lang/reflect/Type;

.field private final parser:Lorg/xutils/http/app/ResponseParser;

.field private resultStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .locals 5

    .line 34
    invoke-direct {p0}, Lorg/xutils/http/loader/Loader;-><init>()V

    const-string v0, "UTF-8"

    .line 27
    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->charset:Ljava/lang/String;

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->resultStr:Ljava/lang/String;

    .line 35
    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    .line 39
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    const-string v1, "not support callback type "

    if-eqz v0, :cond_0

    .line 40
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    goto :goto_0

    .line 41
    :cond_0
    instance-of v0, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v0, :cond_6

    .line 45
    check-cast p1, Ljava/lang/Class;

    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    .line 49
    :goto_0
    const-class p1, Ljava/util/List;

    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v0, "create parser error"

    const-string v2, "not found @HttpResponse from "

    if-eqz p1, :cond_4

    .line 50
    iget-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    const-class v3, Ljava/util/List;

    const/4 v4, 0x0

    invoke-static {p1, v3, v4}, Lorg/xutils/common/util/ParameterizedTypeUtil;->getParameterizedType(Ljava/lang/reflect/Type;Ljava/lang/Class;I)Ljava/lang/reflect/Type;

    move-result-object p1

    .line 52
    instance-of v3, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_1

    .line 53
    move-object v1, p1

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    goto :goto_1

    .line 54
    :cond_1
    instance-of v3, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v3, :cond_3

    .line 58
    move-object v1, p1

    check-cast v1, Ljava/lang/Class;

    .line 61
    :goto_1
    const-class v3, Lorg/xutils/http/annotation/HttpResponse;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lorg/xutils/http/annotation/HttpResponse;

    if-eqz v1, :cond_2

    .line 64
    :try_start_0
    invoke-interface {v1}, Lorg/xutils/http/annotation/HttpResponse;->parser()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xutils/http/app/ResponseParser;

    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 66
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 69
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 55
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4
    iget-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    const-class v1, Lorg/xutils/http/annotation/HttpResponse;

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/xutils/http/annotation/HttpResponse;

    if-eqz p1, :cond_5

    .line 75
    :try_start_1
    invoke-interface {p1}, Lorg/xutils/http/annotation/HttpResponse;->parser()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xutils/http/app/ResponseParser;

    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_2
    return-void

    :catchall_1
    move-exception p1

    .line 77
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 80
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 42
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public load(Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    instance-of v1, v0, Lorg/xutils/http/app/InputStreamResponseParser;

    if-eqz v1, :cond_0

    .line 104
    check-cast v0, Lorg/xutils/http/app/InputStreamResponseParser;

    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2, p1}, Lorg/xutils/http/app/InputStreamResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 106
    :cond_0
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->charset:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/xutils/common/util/IOUtil;->readStr(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->resultStr:Ljava/lang/String;

    .line 107
    iget-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->resultStr:Ljava/lang/String;

    invoke-interface {p1, v0, v1, v2}, Lorg/xutils/http/app/ResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public load(Lorg/xutils/http/request/UriRequest;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 115
    :try_start_0
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->sendRequest()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    invoke-interface {v0, p1}, Lorg/xutils/http/app/ResponseParser;->checkResponse(Lorg/xutils/http/request/UriRequest;)V

    .line 119
    invoke-virtual {p1}, Lorg/xutils/http/request/UriRequest;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xutils/http/loader/ObjectLoader;->load(Ljava/io/InputStream;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :catchall_0
    move-exception v0

    .line 117
    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    invoke-interface {v1, p1}, Lorg/xutils/http/app/ResponseParser;->checkResponse(Lorg/xutils/http/request/UriRequest;)V

    throw v0
.end method

.method public loadFromCache(Lorg/xutils/cache/DiskCacheEntity;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 125
    invoke-virtual {p1}, Lorg/xutils/cache/DiskCacheEntity;->getTextContent()Ljava/lang/String;

    move-result-object p1

    .line 126
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->parser:Lorg/xutils/http/app/ResponseParser;

    iget-object v1, p0, Lorg/xutils/http/loader/ObjectLoader;->objectType:Ljava/lang/reflect/Type;

    iget-object v2, p0, Lorg/xutils/http/loader/ObjectLoader;->objectClass:Ljava/lang/Class;

    invoke-interface {v0, v1, v2, p1}, Lorg/xutils/http/app/ResponseParser;->parse(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public newInstance()Lorg/xutils/http/loader/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/xutils/http/loader/Loader<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/lang/IllegalAccessError;

    const-string v1, "use constructor create ObjectLoader."

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public save2Cache(Lorg/xutils/http/request/UriRequest;)V
    .locals 1

    .line 136
    iget-object v0, p0, Lorg/xutils/http/loader/ObjectLoader;->resultStr:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lorg/xutils/http/loader/ObjectLoader;->saveStringCache(Lorg/xutils/http/request/UriRequest;Ljava/lang/String;)V

    return-void
.end method

.method public setParams(Lorg/xutils/http/RequestParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p1}, Lorg/xutils/http/RequestParams;->getCharset()Ljava/lang/String;

    move-result-object p1

    .line 94
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iput-object p1, p0, Lorg/xutils/http/loader/ObjectLoader;->charset:Ljava/lang/String;

    :cond_0
    return-void
.end method
