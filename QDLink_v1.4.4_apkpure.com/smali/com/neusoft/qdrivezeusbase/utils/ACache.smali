.class public Lcom/neusoft/qdrivezeusbase/utils/ACache;
.super Ljava/lang/Object;
.source "ACache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;,
        Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;,
        Lcom/neusoft/qdrivezeusbase/utils/ACache$xFileOutputStream;
    }
.end annotation


# static fields
.field private static final MAX_COUNT:I = 0x7fffffff

.field private static final MAX_SIZE:I = 0x2faf080

.field public static final TIME_DAY:I = 0x15180

.field public static final TIME_HOUR:I = 0xe10

.field private static mInstanceMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/neusoft/qdrivezeusbase/utils/ACache;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mInstanceMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;JI)V
    .locals 8

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 82
    :cond_0
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "can\'t make dirs in "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 84
    :cond_1
    :goto_0
    new-instance v7, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;-><init>(Lcom/neusoft/qdrivezeusbase/utils/ACache;Ljava/io/File;JILcom/neusoft/qdrivezeusbase/utils/ACache$1;)V

    iput-object v7, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    return-void
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivezeusbase/utils/ACache;)Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    return-object p0
.end method

.method public static get(Landroid/content/Context;)Lcom/neusoft/qdrivezeusbase/utils/ACache;
    .locals 1

    const-string v0, "ACache"

    .line 50
    invoke-static {p0, v0}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/neusoft/qdrivezeusbase/utils/ACache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;JI)Lcom/neusoft/qdrivezeusbase/utils/ACache;
    .locals 2

    .line 63
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "ACache"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    invoke-static {v0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->get(Ljava/io/File;JI)Lcom/neusoft/qdrivezeusbase/utils/ACache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/neusoft/qdrivezeusbase/utils/ACache;
    .locals 2

    .line 54
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 p0, 0x2faf080

    const v1, 0x7fffffff

    .line 55
    invoke-static {v0, p0, p1, v1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->get(Ljava/io/File;JI)Lcom/neusoft/qdrivezeusbase/utils/ACache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/io/File;)Lcom/neusoft/qdrivezeusbase/utils/ACache;
    .locals 3

    const-wide/32 v0, 0x2faf080

    const v2, 0x7fffffff

    .line 59
    invoke-static {p0, v0, v1, v2}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->get(Ljava/io/File;JI)Lcom/neusoft/qdrivezeusbase/utils/ACache;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/io/File;JI)Lcom/neusoft/qdrivezeusbase/utils/ACache;
    .locals 3

    .line 68
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->myPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivezeusbase/utils/ACache;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/ACache;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/ACache;-><init>(Ljava/io/File;JI)V

    .line 71
    sget-object p1, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mInstanceMap:Ljava/util/Map;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->myPid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static myPid()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 601
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$1600(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;)V

    return-void
.end method

.method public file(Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 581
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$300(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 582
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public get(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 346
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$500(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 347
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 349
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    return-object v0
.end method

.method public getAsBinary(Ljava/lang/String;)[B
    .locals 5

    const/4 v0, 0x0

    .line 376
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v1, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$500(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 377
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v0

    .line 379
    :cond_0
    new-instance v2, Ljava/io/RandomAccessFile;

    const-string v3, "r"

    invoke-direct {v2, v1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    long-to-int v1, v3

    new-array v1, v1, [B

    .line 381
    invoke-virtual {v2, v1}, Ljava/io/RandomAccessFile;->read([B)I

    .line 382
    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$900([B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 383
    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$1000([B)[B

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 394
    :try_start_2
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 396
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-object p1

    .line 394
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    .line 396
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 400
    :goto_1
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->remove(Ljava/lang/String;)Z

    return-object v0

    :catch_2
    move-exception p1

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_3
    move-exception p1

    move-object v2, v0

    .line 389
    :goto_2
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v2, :cond_2

    .line 394
    :try_start_5
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 396
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v2

    :goto_4
    if-eqz v0, :cond_3

    .line 394
    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_5

    :catch_5
    move-exception v0

    .line 396
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 400
    :cond_3
    :goto_5
    throw p1
.end method

.method public getAsBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 526
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 529
    :cond_0
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$1200([B)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getAsDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 568
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 571
    :cond_0
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$1200([B)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$1400(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public getAsJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    .line 282
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 284
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAsJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .line 236
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 238
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 241
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public getAsObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 459
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->getAsBinary(Ljava/lang/String;)[B

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 464
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 465
    :try_start_1
    new-instance p1, Ljava/io/ObjectInputStream;

    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 466
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 474
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 476
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 480
    :goto_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 482
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object v0

    :catch_2
    move-exception v2

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception v2

    move-object p1, v0

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v1, v0

    goto :goto_5

    :catch_4
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    .line 469
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v1, :cond_0

    .line 474
    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_3

    :catch_5
    move-exception v1

    .line 476
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_3
    if-eqz p1, :cond_1

    .line 480
    :try_start_7
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    goto :goto_4

    :catch_6
    move-exception p1

    .line 482
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    return-object v0

    :catchall_2
    move-exception v0

    move-object v3, v0

    move-object v0, p1

    move-object p1, v3

    :goto_5
    if-eqz v1, :cond_2

    .line 474
    :try_start_8
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    goto :goto_6

    :catch_7
    move-exception v1

    .line 476
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_6
    if-eqz v0, :cond_3

    .line 480
    :try_start_9
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    goto :goto_7

    :catch_8
    move-exception v0

    .line 482
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 483
    :cond_3
    :goto_7
    throw p1

    :cond_4
    return-object v0
.end method

.method public getAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 166
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$500(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 167
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    .line 172
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v0, ""

    .line 175
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 176
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_1
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$600(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 179
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$700(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 190
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return-object p1

    .line 190
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 196
    :goto_2
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->remove(Ljava/lang/String;)Z

    return-object v2

    :catch_2
    move-exception p1

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, v2

    goto :goto_5

    :catch_3
    move-exception p1

    move-object v1, v2

    .line 185
    :goto_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_3

    .line 190
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    .line 192
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    return-object v2

    :catchall_1
    move-exception p1

    :goto_5
    if-eqz v1, :cond_4

    .line 190
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception v0

    .line 192
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 196
    :cond_4
    :goto_6
    throw p1
.end method

.method public put(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 334
    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/ACache$xFileOutputStream;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v1, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$300(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$xFileOutputStream;-><init>(Lcom/neusoft/qdrivezeusbase/utils/ACache;Ljava/io/File;)V

    return-object v0
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 502
    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$1100(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V
    .locals 0

    .line 516
    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$1100(Landroid/graphics/Bitmap;)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;[BI)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 544
    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$1300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public put(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .locals 0

    .line 558
    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$1300(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;)V
    .locals 1

    const/4 v0, -0x1

    .line 416
    invoke-virtual {p0, p1, p2, v0}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;Ljava/io/Serializable;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/io/Serializable;I)V
    .locals 3

    const/4 v0, 0x0

    .line 433
    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 434
    new-instance v2, Ljava/io/ObjectOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 435
    :try_start_1
    invoke-virtual {v2, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 436
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 438
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;[BI)V

    goto :goto_0

    .line 440
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;[B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 446
    :goto_0
    :try_start_2
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p1

    move-object v0, v2

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    .line 443
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 446
    :try_start_4
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :goto_2
    return-void

    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 448
    :catch_3
    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$300(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 128
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v3, 0x400

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 129
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 135
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 136
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 131
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 135
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 136
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    .line 138
    :goto_1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :cond_0
    :goto_2
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {p2, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$200(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/io/File;)V

    return-void

    :goto_3
    if-eqz v0, :cond_1

    .line 135
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 136
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 138
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 141
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$200(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/io/File;)V

    throw p2
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 156
    invoke-static {p3, p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$400(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;)V
    .locals 0

    .line 258
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONArray;I)V
    .locals 0

    .line 272
    invoke-virtual {p2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 212
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Lorg/json/JSONObject;I)V
    .locals 0

    .line 226
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$300(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    .line 307
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 308
    :try_start_1
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 314
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 315
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catchall_0
    move-exception p2

    move-object v0, v1

    goto :goto_3

    :catch_1
    move-exception p2

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p2

    goto :goto_3

    :catch_2
    move-exception p2

    .line 310
    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 314
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 315
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p2

    .line 317
    :goto_1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    .line 320
    :cond_0
    :goto_2
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {p2, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$200(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/io/File;)V

    return-void

    :goto_3
    if-eqz v0, :cond_1

    .line 314
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 315
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 320
    :cond_1
    :goto_4
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$200(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/io/File;)V

    throw p2
.end method

.method public put(Ljava/lang/String;[BI)V
    .locals 0

    .line 363
    invoke-static {p3, p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache$Utils;->access$800(I[B)[B

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/ACache;->put(Ljava/lang/String;[B)V

    return-void
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 1

    .line 594
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/ACache;->mCache:Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;->access$1500(Lcom/neusoft/qdrivezeusbase/utils/ACache$ACacheManager;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
