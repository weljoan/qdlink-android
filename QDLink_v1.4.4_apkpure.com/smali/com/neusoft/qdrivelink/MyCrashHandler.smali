.class public Lcom/neusoft/qdrivelink/MyCrashHandler;
.super Lcn/dr/lib/app/DRCrashHandler;
.source "MyCrashHandler.java"


# static fields
.field private static final log:Lorg/apache/log4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-class v0, Lcom/neusoft/qdrivelink/MyCrashHandler;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivelink/MyCrashHandler;->log:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcn/dr/lib/app/DRCrashHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public initParams()V
    .locals 2

    .line 27
    sget-object v0, Lcom/neusoft/qdrivelink/MyCrashHandler;->log:Lorg/apache/log4j/Logger;

    const-string v1, "MyCrashHandler: initParams()"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    const-string v0, "Sorry! DriveAuto will exit after 3 seconds because of an unknow Exception! "

    .line 29
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/MyCrashHandler;->setDRTipMsg(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/neusoft/qdrivelink/Constants;->CRASH_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/MyCrashHandler;->setDRCrashFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public sendToServer(Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .line 40
    sget-object v0, Lcom/neusoft/qdrivelink/MyCrashHandler;->log:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logFile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; crashFile: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    return-void
.end method
