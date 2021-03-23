.class Lorg/xutils/cache/LruDiskCache$2;
.super Ljava/lang/Object;
.source "LruDiskCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/xutils/cache/LruDiskCache;->trimSize()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/xutils/cache/LruDiskCache;


# direct methods
.method constructor <init>(Lorg/xutils/cache/LruDiskCache;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    const-string v0, ".tmp"

    const-string v1, "hits"

    const-string v2, "lastAccess"

    .line 250
    iget-object v3, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v3}, Lorg/xutils/cache/LruDiskCache;->access$100(Lorg/xutils/cache/LruDiskCache;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 252
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 253
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v5}, Lorg/xutils/cache/LruDiskCache;->access$200(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x3e8

    cmp-long v9, v5, v7

    if-gez v9, :cond_0

    return-void

    .line 256
    :cond_0
    iget-object v5, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v5, v3, v4}, Lorg/xutils/cache/LruDiskCache;->access$202(Lorg/xutils/cache/LruDiskCache;J)J

    .line 260
    iget-object v3, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v3}, Lorg/xutils/cache/LruDiskCache;->access$300(Lorg/xutils/cache/LruDiskCache;)V

    const/4 v3, 0x0

    .line 264
    :try_start_0
    iget-object v4, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v4}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v4

    const-class v5, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v4, v5}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xutils/db/Selector;->count()J

    move-result-wide v4

    long-to-int v5, v4

    const/16 v4, 0x1392

    if-le v5, v4, :cond_2

    .line 266
    iget-object v4, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v4}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v4

    const-class v6, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v4, v6}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v4

    .line 267
    invoke-virtual {v4, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v4

    add-int/lit16 v5, v5, -0x1388

    .line 268
    invoke-virtual {v4, v5}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 269
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 271
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_1

    .line 274
    :try_start_1
    iget-object v6, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v6}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 276
    invoke-virtual {v5}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 278
    iget-object v6, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v6, v5}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 279
    iget-object v6, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_1
    .catch Lorg/xutils/ex/DbException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    .line 282
    :try_start_2
    invoke-virtual {v5}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Lorg/xutils/ex/DbException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v4

    .line 289
    invoke-virtual {v4}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    :cond_2
    :try_start_3
    iget-object v4, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v4}, Lorg/xutils/cache/LruDiskCache;->access$500(Lorg/xutils/cache/LruDiskCache;)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lorg/xutils/common/util/FileUtil;->getFileOrDirSize(Ljava/io/File;)J

    move-result-wide v4

    iget-object v6, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v6}, Lorg/xutils/cache/LruDiskCache;->access$600(Lorg/xutils/cache/LruDiskCache;)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-lez v8, :cond_4

    .line 295
    iget-object v4, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v4}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v4

    const-class v5, Lorg/xutils/cache/DiskCacheEntity;

    invoke-interface {v4, v5}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v4

    .line 296
    invoke-virtual {v4, v2}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/xutils/db/Selector;->orderBy(Ljava/lang/String;)Lorg/xutils/db/Selector;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lorg/xutils/db/Selector;->limit(I)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4, v3}, Lorg/xutils/db/Selector;->offset(I)Lorg/xutils/db/Selector;

    move-result-object v4

    invoke-virtual {v4}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 297
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 299
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xutils/cache/DiskCacheEntity;
    :try_end_3
    .catch Lorg/xutils/ex/DbException; {:try_start_3 .. :try_end_3} :catch_3

    .line 302
    :try_start_4
    iget-object v6, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v6}, Lorg/xutils/cache/LruDiskCache;->access$000(Lorg/xutils/cache/LruDiskCache;)Lorg/xutils/DbManager;

    move-result-object v6

    invoke-interface {v6, v5}, Lorg/xutils/DbManager;->delete(Ljava/lang/Object;)V

    .line 304
    invoke-virtual {v5}, Lorg/xutils/cache/DiskCacheEntity;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 305
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 306
    iget-object v6, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    invoke-static {v6, v5}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z

    .line 307
    iget-object v6, p0, Lorg/xutils/cache/LruDiskCache$2;->this$0:Lorg/xutils/cache/LruDiskCache;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lorg/xutils/cache/LruDiskCache;->access$400(Lorg/xutils/cache/LruDiskCache;Ljava/lang/String;)Z
    :try_end_4
    .catch Lorg/xutils/ex/DbException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    .line 310
    :try_start_5
    invoke-virtual {v5}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Lorg/xutils/ex/DbException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_1

    :catch_3
    move-exception v0

    .line 316
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/xutils/common/util/LogUtil;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method
