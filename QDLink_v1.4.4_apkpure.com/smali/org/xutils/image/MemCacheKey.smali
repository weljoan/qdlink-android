.class final Lorg/xutils/image/MemCacheKey;
.super Ljava/lang/Object;
.source "MemCacheKey.java"


# instance fields
.field public final options:Lorg/xutils/image/ImageOptions;

.field public final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lorg/xutils/image/ImageOptions;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 20
    :cond_1
    check-cast p1, Lorg/xutils/image/MemCacheKey;

    .line 22
    iget-object v1, p0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    iget-object v2, p1, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 23
    :cond_2
    iget-object v0, p0, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    iget-object p1, p1, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v0, p1}, Lorg/xutils/image/ImageOptions;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 29
    iget-object v0, p0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 30
    iget-object v1, p0, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xutils/image/MemCacheKey;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xutils/image/MemCacheKey;->options:Lorg/xutils/image/ImageOptions;

    invoke-virtual {v1}, Lorg/xutils/image/ImageOptions;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
