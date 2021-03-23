.class Lorg/apache/log4j/chainsaw/EventDetails;
.super Ljava/lang/Object;
.source "EventDetails.java"


# instance fields
.field private final mCategoryName:Ljava/lang/String;

.field private final mLocationDetails:Ljava/lang/String;

.field private final mMessage:Ljava/lang/String;

.field private final mNDC:Ljava/lang/String;

.field private final mPriority:Lorg/apache/log4j/Priority;

.field private final mThreadName:Ljava/lang/String;

.field private final mThrowableStrRep:[Ljava/lang/String;

.field private final mTimeStamp:J


# direct methods
.method constructor <init>(JLorg/apache/log4j/Priority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-wide p1, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mTimeStamp:J

    .line 69
    iput-object p3, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mPriority:Lorg/apache/log4j/Priority;

    .line 70
    iput-object p4, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mCategoryName:Ljava/lang/String;

    .line 71
    iput-object p5, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mNDC:Ljava/lang/String;

    .line 72
    iput-object p6, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mThreadName:Ljava/lang/String;

    .line 73
    iput-object p7, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mMessage:Ljava/lang/String;

    .line 74
    iput-object p8, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mThrowableStrRep:[Ljava/lang/String;

    .line 75
    iput-object p9, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mLocationDetails:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lorg/apache/log4j/spi/LoggingEvent;)V
    .locals 10

    .line 85
    iget-wide v1, p1, Lorg/apache/log4j/spi/LoggingEvent;->timeStamp:J

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLevel()Lorg/apache/log4j/Level;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLoggerName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getNDC()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThreadName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getRenderedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getThrowableStrRep()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/apache/log4j/spi/LoggingEvent;->getLocationInformation()Lorg/apache/log4j/spi/LocationInfo;

    move-result-object p1

    iget-object p1, p1, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    :goto_0
    move-object v9, p1

    move-object v0, p0

    invoke-direct/range {v0 .. v9}, Lorg/apache/log4j/chainsaw/EventDetails;-><init>(JLorg/apache/log4j/Priority;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getCategoryName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method getLocationDetails()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mLocationDetails:Ljava/lang/String;

    return-object v0
.end method

.method getMessage()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mMessage:Ljava/lang/String;

    return-object v0
.end method

.method getNDC()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mNDC:Ljava/lang/String;

    return-object v0
.end method

.method getPriority()Lorg/apache/log4j/Priority;
    .locals 1

    .line 103
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mPriority:Lorg/apache/log4j/Priority;

    return-object v0
.end method

.method getThreadName()Ljava/lang/String;
    .locals 1

    .line 118
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method getThrowableStrRep()[Ljava/lang/String;
    .locals 1

    .line 133
    iget-object v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mThrowableStrRep:[Ljava/lang/String;

    return-object v0
.end method

.method getTimeStamp()J
    .locals 2

    .line 98
    iget-wide v0, p0, Lorg/apache/log4j/chainsaw/EventDetails;->mTimeStamp:J

    return-wide v0
.end method
