.class Lorg/xutils/cache/LruDiskCache$1;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/cache/LruDiskCache;->get(Ljava/lang/String;)Lorg/xutils/cache/DiskCacheEntity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/cache/LruDiskCache;

.field final synthetic val$finalResult:Lorg/xutils/cache/DiskCacheEntity;


# direct methods
.method constructor <init>(Lorg/xutils/cache/LruDiskCache;Lorg/xutils/cache/DiskCacheEntity;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$1;->this$0:Lorg/xutils/cache/LruDiskCache;

    iput-object p2, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 102
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    invoke-virtual {v0}, Lorg/xutils/cache/DiskCacheEntity;->getHits()J

    move-result-wide v1

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Lorg/xutils/cache/DiskCacheEntity;->setHits(J)V

    .line 103
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/xutils/cache/DiskCacheEntity;->setLastAccess(J)V

    .line 105
    :try_start_0
    iget-object v0, p0, Lorg/xutils/cache/LruDiskCache$1;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v0}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v0

    iget-object v1, p0, Lorg/xutils/cache/LruDiskCache$1;->val$finalResult:Lorg/xutils/cache/DiskCacheEntity;

    const-string v2, "hits"

    const-string v3, "lastAccess"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xutils/DbManager;->update(Ljava/lang/Object;[Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 107
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
