.class public Lcn/dr/lib/log/DRLogHelper;
.super Ljava/lang/Object;
.source "DRLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/dr/lib/log/DRLogHelper$LogType;
    }
.end annotation


# static fields
.field private static mInstance:Lcn/dr/lib/log/DRLogHelper;


# instance fields
.field private mEnableLog4j:Ljava/lang/Boolean;

.field private mLog4jFilePath:Ljava/lang/String;

.field private mType:Lcn/dr/lib/log/DRLogHelper$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    new-instance v0, Lcn/dr/lib/log/DRLogHelper;

    invoke-direct {v0}, Lcn/dr/lib/log/DRLogHelper;-><init>()V

    sput-object v0, Lcn/dr/lib/log/DRLogHelper;->mInstance:Lcn/dr/lib/log/DRLogHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget-object v0, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_LOG4J:Lcn/dr/lib/log/DRLogHelper$LogType;

    iput-object v0, p0, Lcn/dr/lib/log/DRLogHelper;->mType:Lcn/dr/lib/log/DRLogHelper$LogType;

    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/dr/lib/log/DRLogHelper;->mEnableLog4j:Ljava/lang/Boolean;

    .line 26
    sget-object v0, Lcn/dr/lib/common/DRConstants;->LOG4J_FILE_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcn/dr/lib/log/DRLogHelper;->mLog4jFilePath:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcn/dr/lib/log/DRLogHelper;
    .locals 1

    .line 37
    sget-object v0, Lcn/dr/lib/log/DRLogHelper;->mInstance:Lcn/dr/lib/log/DRLogHelper;

    return-object v0
.end method

.method private initLog4j()V
    .locals 2

    .line 65
    invoke-static {}, Lcn/dr/lib/log/log4j/Log4jFactory;->getInstance()Lcn/dr/lib/log/log4j/Log4jFactory;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcn/dr/lib/log/DRLogHelper;->mEnableLog4j:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcn/dr/lib/log/log4j/Log4jFactory;->setIsEnable(Ljava/lang/Boolean;)V

    .line 73
    iget-object v1, p0, Lcn/dr/lib/log/DRLogHelper;->mLog4jFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/dr/lib/log/log4j/Log4jFactory;->setLogFilePath(Ljava/lang/String;)V

    .line 76
    sget-object v1, Lcn/dr/lib/log/log4j/Log4jFactory;->LogEnvirment_PRODUCE:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcn/dr/lib/log/log4j/Log4jFactory;->setLogEnvirment(Ljava/lang/Integer;)V

    .line 79
    sget-object v1, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lcn/dr/lib/log/log4j/Log4jFactory;->setLogLevel_produce(Lorg/apache/log4j/Level;)V

    .line 82
    invoke-virtual {v0}, Lcn/dr/lib/log/log4j/Log4jFactory;->configLog()V

    .line 85
    const-class v0, Lcn/dr/lib/log/DRLogHelper;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    const-string v1, "Log4j is Ready For DRApplication! "

    .line 88
    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getLog4jFilePath()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcn/dr/lib/log/DRLogHelper;->mLog4jFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Lcn/dr/lib/log/DRLogHelper$LogType;
    .locals 1

    .line 93
    iget-object v0, p0, Lcn/dr/lib/log/DRLogHelper;->mType:Lcn/dr/lib/log/DRLogHelper$LogType;

    return-object v0
.end method

.method public init()V
    .locals 3

    .line 42
    sget-object v0, Lcn/dr/lib/log/DRLogHelper$1;->$SwitchMap$cn$dr$lib$log$DRLogHelper$LogType:[I

    iget-object v1, p0, Lcn/dr/lib/log/DRLogHelper;->mType:Lcn/dr/lib/log/DRLogHelper$LogType;

    invoke-virtual {v1}, Lcn/dr/lib/log/DRLogHelper$LogType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 50
    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/dr/lib/log/DRLogHelper;->mEnableLog4j:Ljava/lang/Boolean;

    goto :goto_0

    .line 47
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/dr/lib/log/DRLogHelper;->mEnableLog4j:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 44
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcn/dr/lib/log/DRLogHelper;->mEnableLog4j:Ljava/lang/Boolean;

    .line 53
    :goto_0
    iget-object v0, p0, Lcn/dr/lib/log/DRLogHelper;->mEnableLog4j:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-direct {p0}, Lcn/dr/lib/log/DRLogHelper;->initLog4j()V

    :cond_3
    return-void
.end method

.method public setLog4jFilePath(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcn/dr/lib/log/DRLogHelper;->mLog4jFilePath:Ljava/lang/String;

    return-void
.end method

.method public setType(Lcn/dr/lib/log/DRLogHelper$LogType;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcn/dr/lib/log/DRLogHelper;->mType:Lcn/dr/lib/log/DRLogHelper$LogType;

    return-void
.end method
