.class public Lorg/apache/log4j/spi/ThrowableInformation;
.super Ljava/lang/Object;
.source "ThrowableInformation.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field static final serialVersionUID:J = -0x41e7011f7e8df0afL


# instance fields
.field private transient category:Lorg/apache/log4j/Category;

.field private rep:[Ljava/lang/String;

.field private transient throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Lorg/apache/log4j/Category;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    .line 57
    iput-object p2, p0, Lorg/apache/log4j/spi/ThrowableInformation;->category:Lorg/apache/log4j/Category;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 67
    invoke-virtual {p1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    check-cast p1, [Ljava/lang/String;

    iput-object p1, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public declared-synchronized getThrowableStrRep()[Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 80
    iget-object v1, p0, Lorg/apache/log4j/spi/ThrowableInformation;->category:Lorg/apache/log4j/Category;

    if-eqz v1, :cond_0

    .line 81
    iget-object v1, p0, Lorg/apache/log4j/spi/ThrowableInformation;->category:Lorg/apache/log4j/Category;

    invoke-virtual {v1}, Lorg/apache/log4j/Category;->getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;

    move-result-object v1

    .line 82
    instance-of v2, v1, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    if-eqz v2, :cond_0

    .line 83
    check-cast v1, Lorg/apache/log4j/spi/ThrowableRendererSupport;

    invoke-interface {v1}, Lorg/apache/log4j/spi/ThrowableRendererSupport;->getThrowableRenderer()Lorg/apache/log4j/spi/ThrowableRenderer;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 87
    iget-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    invoke-static {v0}, Lorg/apache/log4j/DefaultThrowableRenderer;->render(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    goto :goto_0

    .line 89
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/spi/ThrowableInformation;->throwable:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lorg/apache/log4j/spi/ThrowableRenderer;->doRender(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    .line 92
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/ThrowableInformation;->rep:[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
