.class public Lorg/apache/log4j/spi/DefaultRepositorySelector;
.super Ljava/lang/Object;
.source "DefaultRepositorySelector.java"

# interfaces
.implements Lorg/apache/log4j/spi/RepositorySelector;


# instance fields
.field final repository:Lorg/apache/log4j/spi/LoggerRepository;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/spi/LoggerRepository;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/apache/log4j/spi/DefaultRepositorySelector;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    return-void
.end method


# virtual methods
.method public getLoggerRepository()Lorg/apache/log4j/spi/LoggerRepository;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/apache/log4j/spi/DefaultRepositorySelector;->repository:Lorg/apache/log4j/spi/LoggerRepository;

    return-object v0
.end method
