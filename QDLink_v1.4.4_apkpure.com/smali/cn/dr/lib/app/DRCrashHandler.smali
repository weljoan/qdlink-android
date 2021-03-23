.class public abstract Lcn/dr/lib/app/DRCrashHandler;
.super Ljava/lang/Object;
.source "DRCrashHandler.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static final log:Lorg/apache/log4j/Logger;


# instance fields
.field private crashFile:Ljava/io/File;

.field private logFile:Ljava/io/File;

.field private mContext:Lcn/dr/lib/app/DRApplication;

.field private mDRCrashFilePath:Ljava/lang/String;

.field private mDRTipMsg:Ljava/lang/String;

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mInfos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const-class v0, Lcn/dr/lib/app/DRCrashHandler;

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->mInfos:Ljava/util/Map;

    const-string v0, "\u62b1\u6b49\uff0c\u7a0b\u5e8f\u5f02\u5e38\uff0c3s\u540e\u9000\u51fa\uff01"

    .line 58
    iput-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->mDRTipMsg:Ljava/lang/String;

    .line 63
    sget-object v0, Lcn/dr/lib/common/DRConstants;->CRASH_FILE_PATH:Ljava/lang/String;

    iput-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->mDRCrashFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Lorg/apache/log4j/Logger;
    .locals 1

    .line 33
    sget-object v0, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method static synthetic access$100(Lcn/dr/lib/app/DRCrashHandler;)Lcn/dr/lib/app/DRApplication;
    .locals 0

    .line 33
    iget-object p0, p0, Lcn/dr/lib/app/DRCrashHandler;->mContext:Lcn/dr/lib/app/DRApplication;

    return-object p0
.end method


# virtual methods
.method protected collectDeviceInfo(Landroid/content/Context;)V
    .locals 7

    .line 191
    sget-object v0, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    const-string v1, "DRCrashHandler is collecting DeviceInfo! "

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 194
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 195
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 197
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 198
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 199
    iget-object v2, p0, Lcn/dr/lib/app/DRCrashHandler;->mInfos:Ljava/util/Map;

    const-string v3, "versionName"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    iget-object v1, p0, Lcn/dr/lib/app/DRCrashHandler;->mInfos:Ljava/util/Map;

    const-string v2, "versionCode"

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 203
    sget-object v1, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "An error occured when collect package info, Error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 205
    :cond_1
    :goto_1
    const-class p1, Landroid/os/Build;

    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p1

    .line 206
    array-length v1, p1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 208
    :try_start_1
    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 209
    iget-object v4, p0, Lcn/dr/lib/app/DRCrashHandler;->mInfos:Ljava/util/Map;

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v3

    .line 211
    sget-object v4, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "An error occured when collect crash info, Error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getDRCrashFilePath()Ljava/lang/String;
    .locals 1

    .line 306
    iget-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->mDRCrashFilePath:Ljava/lang/String;

    return-object v0
.end method

.method public getDRTipMsg()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->mDRTipMsg:Ljava/lang/String;

    return-object v0
.end method

.method protected handlerException(Ljava/lang/Throwable;)Z
    .locals 2

    .line 155
    sget-object v0, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    const-string v1, "DRCrashHandler is handling Exception! "

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 162
    :cond_0
    iget-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->mContext:Lcn/dr/lib/app/DRApplication;

    invoke-virtual {p0, v0}, Lcn/dr/lib/app/DRCrashHandler;->collectDeviceInfo(Landroid/content/Context;)V

    .line 165
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/dr/lib/app/DRCrashHandler$1;

    invoke-direct {v1, p0}, Lcn/dr/lib/app/DRCrashHandler$1;-><init>(Lcn/dr/lib/app/DRCrashHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 173
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 176
    invoke-virtual {p0, p1}, Lcn/dr/lib/app/DRCrashHandler;->saveLogAndCrash(Ljava/lang/Throwable;)V

    .line 178
    invoke-virtual {p0}, Lcn/dr/lib/app/DRCrashHandler;->sendLogAndCrash()V

    const/4 p1, 0x1

    return p1
.end method

.method public init(Lcn/dr/lib/app/DRApplication;)V
    .locals 2

    .line 81
    sget-object v0, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    const-string v1, "DRCrashHandler is Ready For Application! "

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 84
    iput-object p1, p0, Lcn/dr/lib/app/DRCrashHandler;->mContext:Lcn/dr/lib/app/DRApplication;

    .line 87
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object p1

    iput-object p1, p0, Lcn/dr/lib/app/DRCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 90
    invoke-virtual {p0}, Lcn/dr/lib/app/DRCrashHandler;->initParams()V

    .line 93
    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public abstract initParams()V
.end method

.method protected saveLogAndCrash(Ljava/lang/Throwable;)V
    .locals 6

    .line 222
    sget-object v0, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    const-string v1, "DRCrashHandler is saving Log! "

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 224
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 226
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DateTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v2}, Lcn/dr/lib/utils/DateUtil;->date2String(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "[DeviceInfo: ]\n"

    .line 227
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    iget-object v1, p0, Lcn/dr/lib/app/DRCrashHandler;->mInfos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 230
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 232
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 235
    :cond_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 236
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 237
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 238
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_1

    .line 240
    invoke-virtual {p1, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 241
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_1

    .line 243
    :cond_1
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 244
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "[Excetpion: ]\n"

    .line 245
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 249
    sget-object v1, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    invoke-virtual {v1, p1}, Lorg/apache/log4j/Logger;->error(Ljava/lang/Object;)V

    .line 252
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/dr/lib/app/DRCrashHandler;->saveToCrashFile(Ljava/lang/String;)V

    return-void
.end method

.method protected saveToCrashFile(Ljava/lang/String;)V
    .locals 3

    .line 262
    sget-object v0, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DRCrashHandler is writing crash-info to CrashFile("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/dr/lib/app/DRCrashHandler;->mDRCrashFilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 264
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/dr/lib/app/DRCrashHandler;->mDRCrashFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->crashFile:Ljava/io/File;

    .line 267
    iget-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->crashFile:Ljava/io/File;

    invoke-static {v0}, Lcn/dr/lib/utils/FileUtil;->createFileAndFolder(Ljava/io/File;)V

    .line 270
    iget-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->crashFile:Ljava/io/File;

    invoke-static {v0, p1}, Lcn/dr/lib/utils/FileUtil;->appendToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method protected sendLogAndCrash()V
    .locals 2

    .line 278
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcn/dr/lib/app/DRCrashHandler;->mContext:Lcn/dr/lib/app/DRApplication;

    invoke-virtual {v1}, Lcn/dr/lib/app/DRApplication;->getDrLogHelper()Lcn/dr/lib/log/DRLogHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcn/dr/lib/log/DRLogHelper;->getLog4jFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->logFile:Ljava/io/File;

    .line 279
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcn/dr/lib/app/DRCrashHandler;->getDRCrashFilePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->crashFile:Ljava/io/File;

    .line 281
    iget-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->logFile:Ljava/io/File;

    iget-object v1, p0, Lcn/dr/lib/app/DRCrashHandler;->crashFile:Ljava/io/File;

    invoke-virtual {p0, v0, v1}, Lcn/dr/lib/app/DRCrashHandler;->sendToServer(Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method protected abstract sendToServer(Ljava/io/File;Ljava/io/File;)V
.end method

.method public setDRCrashFilePath(Ljava/lang/String;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcn/dr/lib/app/DRCrashHandler;->mDRCrashFilePath:Ljava/lang/String;

    return-void
.end method

.method public setDRTipMsg(Ljava/lang/String;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcn/dr/lib/app/DRCrashHandler;->mDRTipMsg:Ljava/lang/String;

    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2

    .line 125
    sget-object v0, Lcn/dr/lib/app/DRCrashHandler;->log:Lorg/apache/log4j/Logger;

    const-string v1, "DRCrashHandler dispatcher uncaughtException! "

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcn/dr/lib/app/DRCrashHandler;->handlerException(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcn/dr/lib/app/DRCrashHandler;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_0
    const-wide/16 p1, 0xbb8

    .line 132
    :try_start_0
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 134
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 137
    :goto_0
    iget-object p1, p0, Lcn/dr/lib/app/DRCrashHandler;->mContext:Lcn/dr/lib/app/DRApplication;

    invoke-virtual {p1}, Lcn/dr/lib/app/DRApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lcn/dr/lib/app/DRApplication;

    invoke-virtual {p1}, Lcn/dr/lib/app/DRApplication;->appExit()V

    :goto_1
    return-void
.end method
