.class public Lorg/apache/log4j/varia/LevelRangeFilter;
.super Lorg/apache/log4j/spi/Filter;
.source "LevelRangeFilter.java"


# instance fields
.field acceptOnMatch:Z

.field levelMax:Lorg/apache/log4j/Level;

.field levelMin:Lorg/apache/log4j/Level;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lorg/apache/log4j/spi/Filter;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    return-void
.end method


# virtual methods
.method public decide(Lorg/apache/log4j/spi/LoggingEvent;)I
    .locals 3

    .line 69
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v0

    iget-object v2, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v2}, Lorg/apache/log4j/Level;->isGreaterOrEqual(Lorg/apache/log4j/Priority;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 76
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/log4j/Level;->toInt()I

    move-result p1

    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    invoke-virtual {v0}, Lorg/apache/log4j/Level;->toInt()I

    move-result v0

    if-le p1, v0, :cond_1

    return v1

    .line 86
    :cond_1
    iget-boolean p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public getAcceptOnMatch()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    return v0
.end method

.method public getLevelMax()Lorg/apache/log4j/Level;
    .locals 1

    .line 101
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getLevelMin()Lorg/apache/log4j/Level;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public setAcceptOnMatch(Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->acceptOnMatch:Z

    return-void
.end method

.method public setLevelMax(Lorg/apache/log4j/Level;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMax:Lorg/apache/log4j/Level;

    return-void
.end method

.method public setLevelMin(Lorg/apache/log4j/Level;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lorg/apache/log4j/varia/LevelRangeFilter;->levelMin:Lorg/apache/log4j/Level;

    return-void
.end method
