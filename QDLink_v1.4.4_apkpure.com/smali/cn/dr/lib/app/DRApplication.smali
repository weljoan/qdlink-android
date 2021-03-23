.class public abstract Lcn/dr/lib/app/DRApplication;
.super Landroid/app/Application;
.source "DRApplication.java"


# static fields
.field private static log:Lorg/apache/log4j/Logger;


# instance fields
.field private mActivityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field public mDRCrashHandler:Lcn/dr/lib/app/DRCrashHandler;

.field public mDRLogHelper:Lcn/dr/lib/log/DRLogHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 25
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/dr/lib/app/DRApplication;->mActivityList:Ljava/util/List;

    .line 28
    invoke-static {}, Lcn/dr/lib/log/DRLogHelper;->getInstance()Lcn/dr/lib/log/DRLogHelper;

    move-result-object v0

    iput-object v0, p0, Lcn/dr/lib/app/DRApplication;->mDRLogHelper:Lcn/dr/lib/log/DRLogHelper;

    .line 31
    new-instance v0, Lcn/dr/lib/app/DRApplication$1;

    invoke-direct {v0, p0}, Lcn/dr/lib/app/DRApplication$1;-><init>(Lcn/dr/lib/app/DRApplication;)V

    iput-object v0, p0, Lcn/dr/lib/app/DRApplication;->mDRCrashHandler:Lcn/dr/lib/app/DRCrashHandler;

    return-void
.end method

.method private finishActivityList()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/dr/lib/app/DRApplication;->mActivityList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 137
    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initCrashHandler()V
    .locals 2

    .line 89
    sget-object v0, Lcn/dr/lib/app/DRApplication;->log:Lorg/apache/log4j/Logger;

    const-string v1, "DRApplication: initCrashHandler()"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 92
    invoke-virtual {p0}, Lcn/dr/lib/app/DRApplication;->setHandler()V

    .line 95
    invoke-virtual {p0}, Lcn/dr/lib/app/DRApplication;->getDRCrashHandler()Lcn/dr/lib/app/DRCrashHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/dr/lib/app/DRCrashHandler;->init(Lcn/dr/lib/app/DRApplication;)V

    return-void
.end method

.method private initDRLogHelper()V
    .locals 1

    .line 80
    invoke-virtual {p0}, Lcn/dr/lib/app/DRApplication;->getDrLogHelper()Lcn/dr/lib/log/DRLogHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcn/dr/lib/log/DRLogHelper;->init()V

    .line 82
    const-class v0, Lcn/dr/lib/app/DRApplication;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcn/dr/lib/app/DRApplication;->log:Lorg/apache/log4j/Logger;

    return-void
.end method


# virtual methods
.method public addActivity(Landroid/app/Activity;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcn/dr/lib/app/DRApplication;->mActivityList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public appExit()V
    .locals 2

    .line 145
    sget-object v0, Lcn/dr/lib/app/DRApplication;->log:Lorg/apache/log4j/Logger;

    const-string v1, "DRApplication: appExit()"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 147
    invoke-direct {p0}, Lcn/dr/lib/app/DRApplication;->finishActivityList()V

    const/4 v0, 0x0

    .line 149
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public appKill()V
    .locals 2

    .line 156
    sget-object v0, Lcn/dr/lib/app/DRApplication;->log:Lorg/apache/log4j/Logger;

    const-string v1, "DRApplication: appKill()"

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->trace(Ljava/lang/Object;)V

    .line 158
    invoke-direct {p0}, Lcn/dr/lib/app/DRApplication;->finishActivityList()V

    .line 159
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    const/4 v0, 0x1

    .line 160
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method public getDRCrashHandler()Lcn/dr/lib/app/DRCrashHandler;
    .locals 1

    .line 116
    iget-object v0, p0, Lcn/dr/lib/app/DRApplication;->mDRCrashHandler:Lcn/dr/lib/app/DRCrashHandler;

    return-object v0
.end method

.method public getDrLogHelper()Lcn/dr/lib/log/DRLogHelper;
    .locals 1

    .line 112
    iget-object v0, p0, Lcn/dr/lib/app/DRApplication;->mDRLogHelper:Lcn/dr/lib/log/DRLogHelper;

    return-object v0
.end method

.method public initDR()V
    .locals 0

    .line 54
    invoke-virtual {p0}, Lcn/dr/lib/app/DRApplication;->initDRLogHelperParam()V

    .line 57
    invoke-direct {p0}, Lcn/dr/lib/app/DRApplication;->initDRLogHelper()V

    .line 60
    invoke-direct {p0}, Lcn/dr/lib/app/DRApplication;->initCrashHandler()V

    return-void
.end method

.method protected abstract initDRLogHelperParam()V
.end method

.method public onCreate()V
    .locals 0

    .line 48
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    return-void
.end method

.method public setDRCrashHandler(Lcn/dr/lib/app/DRCrashHandler;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcn/dr/lib/app/DRApplication;->mDRCrashHandler:Lcn/dr/lib/app/DRCrashHandler;

    return-void
.end method

.method public abstract setHandler()V
.end method
