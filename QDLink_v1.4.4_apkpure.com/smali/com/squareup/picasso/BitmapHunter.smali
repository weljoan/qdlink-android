.class Lcom/squareup/picasso/BitmapHunter;
.super Ljava/lang/Object;
.source "BitmapHunter.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DECODE_LOCK:Ljava/lang/Object;

.field private static final ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

.field private static final NAME_BUILDER:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/StringBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private static final SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field action:Lcom/squareup/picasso/Action;

.field actions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation
.end field

.field final cache:Lcom/squareup/picasso/Cache;

.field final data:Lcom/squareup/picasso/Request;

.field final dispatcher:Lcom/squareup/picasso/Dispatcher;

.field exception:Ljava/lang/Exception;

.field exifRotation:I

.field future:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/String;

.field loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

.field final memoryPolicy:I

.field networkPolicy:I

.field final picasso:Lcom/squareup/picasso/Picasso;

.field priority:Lcom/squareup/picasso/Picasso$Priority;

.field final requestHandler:Lcom/squareup/picasso/RequestHandler;

.field result:Landroid/graphics/Bitmap;

.field retryCount:I

.field final sequence:I

.field final stats:Lcom/squareup/picasso/Stats;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$1;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$1;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 60
    new-instance v0, Lcom/squareup/picasso/BitmapHunter$2;

    invoke-direct {v0}, Lcom/squareup/picasso/BitmapHunter$2;-><init>()V

    sput-object v0, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->SEQUENCE_GENERATOR:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->sequence:I

    .line 94
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    .line 95
    iput-object p2, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    .line 96
    iput-object p3, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    .line 97
    iput-object p4, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    .line 98
    iput-object p5, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    .line 99
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    .line 100
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    .line 101
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 102
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getMemoryPolicy()I

    move-result p1

    iput p1, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    .line 103
    invoke-virtual {p5}, Lcom/squareup/picasso/Action;->getNetworkPolicy()I

    move-result p1

    iput p1, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    .line 104
    iput-object p6, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    .line 105
    invoke-virtual {p6}, Lcom/squareup/picasso/RequestHandler;->getRetryCount()I

    move-result p1

    iput p1, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    return-void
.end method

.method static applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Transformation;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .line 425
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 426
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/Transformation;

    const/4 v3, 0x0

    .line 429
    :try_start_0
    invoke-interface {v2, p1}, Lcom/squareup/picasso/Transformation;->transform(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    .line 441
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Transformation "

    .line 442
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    invoke-interface {v2}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " returned null after "

    .line 444
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " previous transformation(s).\n\nTransformation list:\n"

    .line 446
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/picasso/Transformation;

    .line 448
    invoke-interface {v0}, Lcom/squareup/picasso/Transformation;->key()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 450
    :cond_0
    sget-object p0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/picasso/BitmapHunter$4;

    invoke-direct {v0, p1}, Lcom/squareup/picasso/BitmapHunter$4;-><init>(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_1
    if-ne v4, p1, :cond_2

    .line 458
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 459
    sget-object p0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/picasso/BitmapHunter$5;

    invoke-direct {p1, v2}, Lcom/squareup/picasso/BitmapHunter$5;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_2
    if-eq v4, p1, :cond_3

    .line 470
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 471
    sget-object p0, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance p1, Lcom/squareup/picasso/BitmapHunter$6;

    invoke-direct {p1, v2}, Lcom/squareup/picasso/BitmapHunter$6;-><init>(Lcom/squareup/picasso/Transformation;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_3
    add-int/lit8 v1, v1, 0x1

    move-object p1, v4

    goto :goto_0

    :catch_0
    move-exception p0

    .line 431
    sget-object p1, Lcom/squareup/picasso/Picasso;->HANDLER:Landroid/os/Handler;

    new-instance v0, Lcom/squareup/picasso/BitmapHunter$3;

    invoke-direct {v0, v2, p0}, Lcom/squareup/picasso/BitmapHunter$3;-><init>(Lcom/squareup/picasso/Transformation;Ljava/lang/RuntimeException;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v3

    :cond_4
    return-object p1
.end method

.method private computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 6

    .line 306
    sget-object v0, Lcom/squareup/picasso/Picasso$Priority;->LOW:Lcom/squareup/picasso/Picasso$Priority;

    .line 308
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 309
    :goto_0
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-nez v4, :cond_2

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    return-object v0

    .line 316
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-eqz v2, :cond_4

    .line 317
    invoke-virtual {v2}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    :cond_4
    if-eqz v1, :cond_6

    .line 322
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_2
    if-ge v3, v1, :cond_6

    .line 323
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/squareup/picasso/Action;

    invoke-virtual {v2}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v2

    .line 324
    invoke-virtual {v2}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v4

    invoke-virtual {v0}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v5

    if-le v4, v5, :cond_5

    move-object v0, v2

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    return-object v0
.end method

.method static decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 114
    new-instance v0, Lcom/squareup/picasso/MarkableInputStream;

    invoke-direct {v0, p0}, Lcom/squareup/picasso/MarkableInputStream;-><init>(Ljava/io/InputStream;)V

    const/high16 p0, 0x10000

    .line 117
    invoke-virtual {v0, p0}, Lcom/squareup/picasso/MarkableInputStream;->savePosition(I)J

    move-result-wide v1

    .line 119
    invoke-static {p1}, Lcom/squareup/picasso/RequestHandler;->createBitmapOptions(Lcom/squareup/picasso/Request;)Landroid/graphics/BitmapFactory$Options;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/squareup/picasso/RequestHandler;->requiresInSampleSize(Landroid/graphics/BitmapFactory$Options;)Z

    move-result v3

    .line 122
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->isWebPFile(Ljava/io/InputStream;)Z

    move-result v4

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    if-eqz v4, :cond_1

    .line 127
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v3, :cond_0

    .line 129
    array-length v2, v0

    invoke-static {v0, v1, v2, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 130
    iget v2, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v3, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v2, v3, p0, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 133
    :cond_0
    array-length p1, v0

    invoke-static {v0, v1, p1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 136
    invoke-static {v0, v4, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 137
    iget v3, p1, Lcom/squareup/picasso/Request;->targetWidth:I

    iget v5, p1, Lcom/squareup/picasso/Request;->targetHeight:I

    invoke-static {v3, v5, p0, p1}, Lcom/squareup/picasso/RequestHandler;->calculateInSampleSize(IILandroid/graphics/BitmapFactory$Options;Lcom/squareup/picasso/Request;)V

    .line 140
    invoke-virtual {v0, v1, v2}, Lcom/squareup/picasso/MarkableInputStream;->reset(J)V

    .line 142
    :cond_2
    invoke-static {v0, v4, p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_3

    return-object p0

    .line 145
    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Failed to decode stream."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static forRequest(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;)Lcom/squareup/picasso/BitmapHunter;
    .locals 12

    .line 409
    invoke-virtual/range {p4 .. p4}, Lcom/squareup/picasso/Action;->getRequest()Lcom/squareup/picasso/Request;

    move-result-object v0

    .line 410
    invoke-virtual {p0}, Lcom/squareup/picasso/Picasso;->getRequestHandlers()Ljava/util/List;

    move-result-object v1

    .line 414
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    .line 415
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/squareup/picasso/RequestHandler;

    .line 416
    invoke-virtual {v11, v0}, Lcom/squareup/picasso/RequestHandler;->canHandleRequest(Lcom/squareup/picasso/Request;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 417
    new-instance v0, Lcom/squareup/picasso/BitmapHunter;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    move-object/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    return-object v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 421
    :cond_1
    new-instance v0, Lcom/squareup/picasso/BitmapHunter;

    sget-object v10, Lcom/squareup/picasso/BitmapHunter;->ERRORING_HANDLER:Lcom/squareup/picasso/RequestHandler;

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/squareup/picasso/BitmapHunter;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/Dispatcher;Lcom/squareup/picasso/Cache;Lcom/squareup/picasso/Stats;Lcom/squareup/picasso/Action;Lcom/squareup/picasso/RequestHandler;)V

    return-object v0
.end method

.method private static shouldResize(ZIIII)Z
    .locals 0

    if-eqz p0, :cond_1

    if-gt p1, p3, :cond_1

    if-le p2, p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method static transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 13

    .line 487
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 488
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 489
    iget-boolean v2, p0, Lcom/squareup/picasso/Request;->onlyScaleDown:Z

    .line 496
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 498
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_b

    .line 499
    iget v3, p0, Lcom/squareup/picasso/Request;->targetWidth:I

    .line 500
    iget v5, p0, Lcom/squareup/picasso/Request;->targetHeight:I

    .line 502
    iget v6, p0, Lcom/squareup/picasso/Request;->rotationDegrees:F

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-eqz v7, :cond_1

    .line 504
    iget-boolean v7, p0, Lcom/squareup/picasso/Request;->hasRotationPivot:Z

    if-eqz v7, :cond_0

    .line 505
    iget v7, p0, Lcom/squareup/picasso/Request;->rotationPivotX:F

    iget v9, p0, Lcom/squareup/picasso/Request;->rotationPivotY:F

    invoke-virtual {v8, v6, v7, v9}, Landroid/graphics/Matrix;->setRotate(FFF)V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {v8, v6}, Landroid/graphics/Matrix;->setRotate(F)V

    .line 511
    :cond_1
    :goto_0
    iget-boolean v6, p0, Lcom/squareup/picasso/Request;->centerCrop:Z

    if-eqz v6, :cond_4

    int-to-float p0, v3

    int-to-float v6, v0

    div-float v7, p0, v6

    int-to-float v9, v5

    int-to-float v10, v1

    div-float v11, v9, v10

    cmpl-float v12, v7, v11

    if-lez v12, :cond_2

    div-float/2addr v11, v7

    mul-float v10, v10, v11

    float-to-double v10, v10

    .line 516
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int p0, v10

    sub-int v6, v1, p0

    .line 517
    div-int/lit8 v6, v6, 0x2

    int-to-float v10, p0

    div-float v11, v9, v10

    move v9, p0

    move p0, v7

    move v7, v0

    goto :goto_1

    :cond_2
    div-float/2addr v7, v11

    mul-float v6, v6, v7

    float-to-double v6, v6

    .line 522
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v6, v6

    sub-int v7, v0, v6

    .line 523
    div-int/lit8 v7, v7, 0x2

    int-to-float v9, v6

    div-float/2addr p0, v9

    move v9, v1

    move v4, v7

    move v7, v6

    const/4 v6, 0x0

    .line 528
    :goto_1
    invoke-static {v2, v0, v1, v3, v5}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 529
    invoke-virtual {v8, p0, v11}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_3
    move v5, v6

    move v6, v7

    move v7, v9

    goto :goto_6

    .line 531
    :cond_4
    iget-boolean p0, p0, Lcom/squareup/picasso/Request;->centerInside:Z

    if-eqz p0, :cond_6

    int-to-float p0, v3

    int-to-float v6, v0

    div-float/2addr p0, v6

    int-to-float v6, v5

    int-to-float v7, v1

    div-float/2addr v6, v7

    cmpg-float v7, p0, v6

    if-gez v7, :cond_5

    goto :goto_2

    :cond_5
    move p0, v6

    .line 535
    :goto_2
    invoke-static {v2, v0, v1, v3, v5}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 536
    invoke-virtual {v8, p0, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_5

    :cond_6
    if-nez v3, :cond_7

    if-eqz v5, :cond_b

    :cond_7
    if-ne v3, v0, :cond_8

    if-eq v5, v1, :cond_b

    :cond_8
    if-eqz v3, :cond_9

    int-to-float p0, v3

    int-to-float v6, v0

    goto :goto_3

    :cond_9
    int-to-float p0, v5

    int-to-float v6, v1

    :goto_3
    div-float/2addr p0, v6

    if-eqz v5, :cond_a

    int-to-float v6, v5

    int-to-float v7, v1

    goto :goto_4

    :cond_a
    int-to-float v6, v3

    int-to-float v7, v0

    :goto_4
    div-float/2addr v6, v7

    .line 547
    invoke-static {v2, v0, v1, v3, v5}, Lcom/squareup/picasso/BitmapHunter;->shouldResize(ZIIII)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 548
    invoke-virtual {v8, p0, v6}, Landroid/graphics/Matrix;->preScale(FF)Z

    :cond_b
    :goto_5
    move v6, v0

    move v7, v1

    const/4 v5, 0x0

    :goto_6
    if-eqz p2, :cond_c

    int-to-float p0, p2

    .line 554
    invoke-virtual {v8, p0}, Landroid/graphics/Matrix;->preRotate(F)Z

    :cond_c
    const/4 v9, 0x1

    move-object v3, p1

    .line 558
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eq p0, p1, :cond_d

    .line 560
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_7

    :cond_d
    move-object p0, p1

    :goto_7
    return-object p0
.end method

.method static updateThreadName(Lcom/squareup/picasso/Request;)V
    .locals 3

    .line 398
    invoke-virtual {p0}, Lcom/squareup/picasso/Request;->getName()Ljava/lang/String;

    move-result-object p0

    .line 400
    sget-object v0, Lcom/squareup/picasso/BitmapHunter;->NAME_BUILDER:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/StringBuilder;

    .line 401
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x8

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 402
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1, p0}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method attach(Lcom/squareup/picasso/Action;)V
    .locals 7

    .line 254
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    .line 255
    iget-object v1, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    .line 257
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    const-string v3, "to "

    const-string v4, "joined"

    const-string v5, "Hunter"

    if-nez v2, :cond_3

    .line 258
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-eqz v0, :cond_2

    .line 260
    iget-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v4, p1, v0}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 261
    :cond_1
    :goto_0
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "to empty hunter"

    invoke-static {v5, v4, p1, v0}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void

    .line 269
    :cond_3
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-nez v2, :cond_4

    .line 270
    new-instance v2, Ljava/util/ArrayList;

    const/4 v6, 0x3

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    .line 273
    :cond_4
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_5

    .line 276
    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v3}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v4, v0, v1}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    :cond_5
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object p1

    .line 280
    invoke-virtual {p1}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    invoke-virtual {v1}, Lcom/squareup/picasso/Picasso$Priority;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_6

    .line 281
    iput-object p1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    :cond_6
    return-void
.end method

.method cancel()Z
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 335
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_1

    .line 337
    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method detach(Lcom/squareup/picasso/Action;)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x0

    .line 288
    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    const/4 v0, 0x1

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 291
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {p1}, Lcom/squareup/picasso/Action;->getPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    if-ne v0, v1, :cond_2

    .line 297
    invoke-direct {p0}, Lcom/squareup/picasso/BitmapHunter;->computeNewPriority()Lcom/squareup/picasso/Picasso$Priority;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    .line 300
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v0, v0, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v0, :cond_3

    .line 301
    iget-object p1, p1, Lcom/squareup/picasso/Action;->request:Lcom/squareup/picasso/Request;

    invoke-virtual {p1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object p1

    const-string v0, "from "

    invoke-static {p0, v0}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hunter"

    const-string v2, "removed"

    invoke-static {v1, v2, p1, v0}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method getAction()Lcom/squareup/picasso/Action;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->action:Lcom/squareup/picasso/Action;

    return-object v0
.end method

.method getActions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/picasso/Action;",
            ">;"
        }
    .end annotation

    .line 382
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->actions:Ljava/util/List;

    return-object v0
.end method

.method getData()Lcom/squareup/picasso/Request;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    return-object v0
.end method

.method getException()Ljava/lang/Exception;
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    return-object v0
.end method

.method getKey()Ljava/lang/String;
    .locals 1

    .line 362
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    return-object v0
.end method

.method getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    return-object v0
.end method

.method getMemoryPolicy()I
    .locals 1

    .line 366
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    return v0
.end method

.method getPicasso()Lcom/squareup/picasso/Picasso;
    .locals 1

    .line 378
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    return-object v0
.end method

.method getPriority()Lcom/squareup/picasso/Picasso$Priority;
    .locals 1

    .line 394
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->priority:Lcom/squareup/picasso/Picasso$Priority;

    return-object v0
.end method

.method getResult()Landroid/graphics/Bitmap;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method hunt()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->memoryPolicy:I

    invoke-static {v0}, Lcom/squareup/picasso/MemoryPolicy;->shouldReadFromMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->cache:Lcom/squareup/picasso/Cache;

    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/squareup/picasso/Cache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1}, Lcom/squareup/picasso/Stats;->dispatchCacheHit()V

    .line 197
    sget-object v1, Lcom/squareup/picasso/Picasso$LoadedFrom;->MEMORY:Lcom/squareup/picasso/Picasso$LoadedFrom;

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 198
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hunter"

    const-string v3, "decoded"

    const-string v4, "from cache"

    invoke-static {v2, v3, v1, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    .line 205
    :cond_2
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    if-nez v2, :cond_3

    sget-object v2, Lcom/squareup/picasso/NetworkPolicy;->OFFLINE:Lcom/squareup/picasso/NetworkPolicy;

    iget v2, v2, Lcom/squareup/picasso/NetworkPolicy;->index:I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    :goto_0
    iput v2, v1, Lcom/squareup/picasso/Request;->networkPolicy:I

    .line 206
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->networkPolicy:I

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestHandler;->load(Lcom/squareup/picasso/Request;I)Lcom/squareup/picasso/RequestHandler$Result;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 208
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getLoadedFrom()Lcom/squareup/picasso/Picasso$LoadedFrom;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->loadedFrom:Lcom/squareup/picasso/Picasso$LoadedFrom;

    .line 209
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getExifOrientation()I

    move-result v0

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    .line 211
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 215
    invoke-virtual {v1}, Lcom/squareup/picasso/RequestHandler$Result;->getStream()Ljava/io/InputStream;

    move-result-object v0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v0, v1}, Lcom/squareup/picasso/BitmapHunter;->decodeStream(Ljava/io/InputStream;Lcom/squareup/picasso/Request;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 219
    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    move-object v0, v1

    goto :goto_1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/squareup/picasso/Utils;->closeQuietly(Ljava/io/InputStream;)V

    throw v1

    :cond_4
    :goto_1
    if-eqz v0, :cond_a

    .line 225
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_5

    .line 226
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hunter"

    const-string v3, "decoded"

    invoke-static {v2, v3, v1}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_5
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapDecoded(Landroid/graphics/Bitmap;)V

    .line 229
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v1}, Lcom/squareup/picasso/Request;->needsTransformation()Z

    move-result v1

    if-nez v1, :cond_6

    iget v1, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    if-eqz v1, :cond_a

    .line 230
    :cond_6
    sget-object v1, Lcom/squareup/picasso/BitmapHunter;->DECODE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 231
    :try_start_1
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->needsMatrixTransform()Z

    move-result v2

    if-nez v2, :cond_7

    iget v2, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    if-eqz v2, :cond_8

    .line 232
    :cond_7
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget v3, p0, Lcom/squareup/picasso/BitmapHunter;->exifRotation:I

    invoke-static {v2, v0, v3}, Lcom/squareup/picasso/BitmapHunter;->transformResult(Lcom/squareup/picasso/Request;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_8

    const-string v2, "Hunter"

    const-string v3, "transformed"

    .line 234
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_8
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v2}, Lcom/squareup/picasso/Request;->hasCustomTransformations()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 238
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    iget-object v2, v2, Lcom/squareup/picasso/Request;->transformations:Ljava/util/List;

    invoke-static {v2, v0}, Lcom/squareup/picasso/BitmapHunter;->applyCustomTransformations(Ljava/util/List;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 239
    iget-object v2, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v2, :cond_9

    const-string v2, "Hunter"

    const-string v3, "transformed"

    .line 240
    iget-object v4, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-virtual {v4}, Lcom/squareup/picasso/Request;->logId()Ljava/lang/String;

    move-result-object v4

    const-string v5, "from custom transformations"

    invoke-static {v2, v3, v4, v5}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :cond_9
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_a

    .line 245
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v1, v0}, Lcom/squareup/picasso/Stats;->dispatchBitmapTransformed(Landroid/graphics/Bitmap;)V

    goto :goto_2

    :catchall_1
    move-exception v0

    .line 243
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_a
    :goto_2
    return-object v0
.end method

.method isCancelled()Z
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->future:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public run()V
    .locals 5

    const-string v0, "Picasso-Idle"

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->data:Lcom/squareup/picasso/Request;

    invoke-static {v1}, Lcom/squareup/picasso/BitmapHunter;->updateThreadName(Lcom/squareup/picasso/Request;)V

    .line 155
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->picasso:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, "Hunter"

    const-string v2, "executing"

    .line 156
    invoke-static {p0}, Lcom/squareup/picasso/Utils;->getLogIdsForHunter(Lcom/squareup/picasso/BitmapHunter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/squareup/picasso/Utils;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/squareup/picasso/BitmapHunter;->hunt()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    .line 161
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->result:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    .line 162
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    .line 164
    :cond_1
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchComplete(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_0
    .catch Lcom/squareup/picasso/Downloader$ResponseException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/squareup/picasso/NetworkRequestHandler$ContentLengthException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :catch_0
    move-exception v1

    .line 183
    :try_start_1
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 184
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    :catch_1
    move-exception v1

    .line 178
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 179
    iget-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->stats:Lcom/squareup/picasso/Stats;

    invoke-virtual {v3}, Lcom/squareup/picasso/Stats;->createSnapshot()Lcom/squareup/picasso/StatsSnapshot;

    move-result-object v3

    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v3, v4}, Lcom/squareup/picasso/StatsSnapshot;->dump(Ljava/io/PrintWriter;)V

    .line 180
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object v3, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 181
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    :catch_2
    move-exception v1

    .line 175
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 176
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V

    goto :goto_0

    :catch_3
    move-exception v1

    .line 172
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 173
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchRetry(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 186
    :goto_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    goto :goto_1

    :catch_4
    move-exception v1

    .line 167
    :try_start_2
    iget-boolean v2, v1, Lcom/squareup/picasso/Downloader$ResponseException;->localCacheOnly:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/squareup/picasso/Downloader$ResponseException;->responseCode:I

    const/16 v3, 0x1f8

    if-eq v2, v3, :cond_3

    .line 168
    :cond_2
    iput-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->exception:Ljava/lang/Exception;

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/squareup/picasso/BitmapHunter;->dispatcher:Lcom/squareup/picasso/Dispatcher;

    invoke-virtual {v1, p0}, Lcom/squareup/picasso/Dispatcher;->dispatchFailed(Lcom/squareup/picasso/BitmapHunter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 186
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    throw v1
.end method

.method shouldRetry(ZLandroid/net/NetworkInfo;)Z
    .locals 3

    .line 345
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 349
    :cond_1
    iget v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/squareup/picasso/BitmapHunter;->retryCount:I

    .line 350
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/RequestHandler;->shouldRetry(ZLandroid/net/NetworkInfo;)Z

    move-result p1

    return p1
.end method

.method supportsReplay()Z
    .locals 1

    .line 354
    iget-object v0, p0, Lcom/squareup/picasso/BitmapHunter;->requestHandler:Lcom/squareup/picasso/RequestHandler;

    invoke-virtual {v0}, Lcom/squareup/picasso/RequestHandler;->supportsReplay()Z

    move-result v0

    return v0
.end method
