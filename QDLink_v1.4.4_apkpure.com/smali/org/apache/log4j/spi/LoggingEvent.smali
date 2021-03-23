.class public Lorg/apache/log4j/spi/LoggingEvent;
.super Ljava/lang/Object;
.source "LoggingEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final PARAM_ARRAY:[Ljava/lang/Integer;

.field static final TO_LEVEL:Ljava/lang/String; = "toLevel"

.field static final TO_LEVEL_PARAMS:[Ljava/lang/Class;

.field static synthetic class$org$apache$log4j$Level:Ljava/lang/Class; = null

.field static final methodCache:Ljava/util/Hashtable;

.field static final serialVersionUID:J = -0xc0d46dc8bf44ac1L

.field private static startTime:J


# instance fields
.field public final categoryName:Ljava/lang/String;

.field public final transient fqnOfCategoryClass:Ljava/lang/String;

.field public transient level:Lorg/apache/log4j/Priority;

.field private locationInfo:Lorg/apache/log4j/spi/LocationInfo;

.field private transient logger:Lorg/apache/log4j/Category;

.field private mdcCopy:Ljava/util/Hashtable;

.field private mdcCopyLookupRequired:Z

.field private transient message:Ljava/lang/Object;

.field private ndc:Ljava/lang/String;

.field private ndcLookupRequired:Z

.field private renderedMessage:Ljava/lang/String;

.field private threadName:Ljava/lang/String;

.field private throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

.field public final timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 57
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lorg/apache/log4j/spi/LoggingEvent;->startTime:J

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Integer;

    .line 142
    sput-object v1, Lorg/apache/log4j/spi/LoggingEvent;->PARAM_ARRAY:[Ljava/lang/Integer;

    new-array v0, v0, [Ljava/lang/Class;

    .line 144
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/log4j/spi/LoggingEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    .line 145
    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Lorg/apache/log4j/spi/LoggingEvent;->methodCache:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Level;Ljava/lang/Object;Ljava/lang/String;Lorg/apache/log4j/spi/ThrowableInformation;Ljava/lang/String;Lorg/apache/log4j/spi/LocationInfo;Ljava/util/Map;)V
    .locals 1

    .line 221
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 222
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 223
    iput-object p2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    if-eqz p2, :cond_0

    .line 225
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 227
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    .line 229
    :goto_0
    iput-object p5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 230
    iput-object p6, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    if-eqz p8, :cond_1

    .line 232
    iput-object p8, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 235
    :cond_1
    iput-wide p3, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    .line 236
    iput-object p7, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 237
    iput-boolean p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 238
    iput-object p9, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndc:Ljava/lang/String;

    .line 239
    iput-object p10, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 240
    iput-boolean p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    if-eqz p11, :cond_2

    .line 242
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1, p11}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;JLorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 184
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 185
    iput-object p2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    .line 186
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    .line 187
    iput-object p5, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 188
    iput-object p6, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    if-eqz p7, :cond_0

    .line 190
    new-instance p1, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {p1, p7, p2}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;Lorg/apache/log4j/Category;)V

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 193
    :cond_0
    iput-wide p3, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/apache/log4j/Category;Lorg/apache/log4j/Priority;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 109
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 115
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 159
    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    .line 160
    iput-object p2, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    .line 161
    invoke-virtual {p2}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    .line 162
    iput-object p3, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    .line 163
    iput-object p4, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    if-eqz p5, :cond_0

    .line 165
    new-instance p1, Lorg/apache/log4j/spi/ThrowableInformation;

    invoke-direct {p1, p5, p2}, Lorg/apache/log4j/spi/ThrowableInformation;-><init>(Ljava/lang/Throwable;Lorg/apache/log4j/Category;)V

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    .line 167
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 502
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method

.method public static getStartTime()J
    .locals 2

    .line 381
    sget-wide v0, Lorg/apache/log4j/spi/LoggingEvent;->startTime:J

    return-wide v0
.end method

.method private readLevel(Ljava/io/ObjectInputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const-string v0, "Level deserialization failed, reverting to default."

    .line 421
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v1

    .line 423
    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    .line 425
    invoke-static {v1}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    goto/16 :goto_0

    .line 427
    :cond_0
    sget-object v2, Lorg/apache/log4j/spi/LoggingEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v2, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 429
    invoke-static {p1}, Lorg/apache/log4j/helpers/Loader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "toLevel"

    .line 436
    sget-object v4, Lorg/apache/log4j/spi/LoggingEvent;->TO_LEVEL_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 437
    sget-object v3, Lorg/apache/log4j/spi/LoggingEvent;->methodCache:Ljava/util/Hashtable;

    invoke-virtual {v3, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const/4 p1, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    .line 439
    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-virtual {v2, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/log4j/Level;

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 455
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 456
    invoke-static {v1}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_0

    :catch_1
    move-exception p1

    .line 452
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 453
    invoke-static {v1}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_0

    :catch_2
    move-exception p1

    .line 449
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    invoke-static {v1}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    goto :goto_0

    :catch_3
    move-exception p1

    .line 442
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/lang/InterruptedException;

    if-nez v2, :cond_2

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/InterruptedIOException;

    if-eqz v2, :cond_3

    .line 444
    :cond_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    .line 446
    :cond_3
    invoke-static {v0, p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    invoke-static {v1}, Lorg/apache/log4j/Level;->toLevel(I)Lorg/apache/log4j/Level;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    :goto_0
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 462
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 463
    invoke-direct {p0, p1}, Lorg/apache/log4j/spi/LoggingEvent;->readLevel(Ljava/io/ObjectInputStream;)V

    .line 466
    iget-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez p1, :cond_0

    .line 467
    new-instance p1, Lorg/apache/log4j/spi/LocationInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    :cond_0
    return-void
.end method

.method private writeLevel(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v0}, Lorg/apache/log4j/Priority;->toInt()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 501
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 502
    sget-object v1, Lorg/apache/log4j/spi/LoggingEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    if-nez v1, :cond_0

    const-string v1, "org.apache.log4j.Level"

    invoke-static {v1}, Lorg/apache/log4j/spi/LoggingEvent;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/spi/LoggingEvent;->class$org$apache$log4j$Level:Ljava/lang/Class;

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 503
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 508
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 474
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    .line 477
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    .line 481
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    .line 485
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 488
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    .line 490
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 493
    invoke-direct {p0, p1}, Lorg/apache/log4j/spi/LoggingEvent;->writeLevel(Ljava/io/ObjectOutputStream;)V

    return-void
.end method


# virtual methods
.method public getFQNOfLoggerClass()Ljava/lang/String;
    .locals 1

    .line 617
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    return-object v0
.end method

.method public getLevel()Lorg/apache/log4j/Level;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->level:Lorg/apache/log4j/Priority;

    check-cast v0, Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;
    .locals 3

    .line 252
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-nez v0, :cond_0

    .line 253
    new-instance v0, Lorg/apache/log4j/spi/LocationInfo;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    iget-object v2, p0, Lorg/apache/log4j/spi/LoggingEvent;->fqnOfCategoryClass:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/Throwable;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    return-object v0
.end method

.method public getLogger()Lorg/apache/log4j/Category;
    .locals 1

    .line 279
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    return-object v0
.end method

.method public getLoggerName()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->categoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getMDC(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 332
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 338
    :cond_0
    invoke-static {p1}, Lorg/apache/log4j/MDC;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getMDCCopy()V
    .locals 1

    .line 347
    iget-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 348
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopyLookupRequired:Z

    .line 351
    invoke-static {}, Lorg/apache/log4j/MDC;->getContext()Ljava/util/Hashtable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Ljava/util/Hashtable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Hashtable;

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    :cond_0
    return-void
.end method

.method public getMessage()Ljava/lang/Object;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 296
    :cond_0
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNDC()Ljava/lang/String;
    .locals 1

    .line 307
    iget-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 308
    iput-boolean v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndcLookupRequired:Z

    .line 309
    invoke-static {}, Lorg/apache/log4j/NDC;->get()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndc:Ljava/lang/String;

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->ndc:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1

    .line 600
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 602
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 607
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 544
    invoke-virtual {p0, p1}, Lorg/apache/log4j/spi/LoggingEvent;->getMDC(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 547
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getPropertyKeySet()Ljava/util/Set;
    .locals 1

    .line 585
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getRenderedMessage()Ljava/lang/String;
    .locals 2

    .line 360
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 361
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 362
    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->logger:Lorg/apache/log4j/Category;

    invoke-virtual {v0}, Lorg/apache/log4j/Category;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v0

    .line 366
    instance-of v1, v0, Lorg/apache/log4j/spi/RendererSupport;

    if-eqz v1, :cond_1

    .line 367
    check-cast v0, Lorg/apache/log4j/spi/RendererSupport;

    .line 368
    invoke-interface {v0}, Lorg/apache/log4j/spi/RendererSupport;->getRendererMap()Lorg/apache/log4j/or/RendererMap;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/or/RendererMap;->findAndRender(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    goto :goto_0

    .line 370
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->message:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    .line 374
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->renderedMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    .line 386
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 387
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    .line 388
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->threadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThrowableInformation()Lorg/apache/log4j/spi/ThrowableInformation;
    .locals 1

    .line 401
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    return-object v0
.end method

.method public getThrowableStrRep()[Ljava/lang/String;
    .locals 1

    .line 410
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->throwableInfo:Lorg/apache/log4j/spi/ThrowableInformation;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 413
    :cond_0
    invoke-virtual {v0}, Lorg/apache/log4j/spi/ThrowableInformation;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getTimeStamp()J
    .locals 2

    .line 570
    iget-wide v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    return-wide v0
.end method

.method public final locationInformationExists()Z
    .locals 1

    .line 559
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->locationInfo:Lorg/apache/log4j/spi/LocationInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 630
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 631
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 633
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 634
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 636
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final setProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 524
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0}, Lorg/apache/log4j/spi/LoggingEvent;->getMDCCopy()V

    .line 527
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    if-nez v0, :cond_1

    .line 528
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    .line 530
    :cond_1
    iget-object v0, p0, Lorg/apache/log4j/spi/LoggingEvent;->mdcCopy:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
