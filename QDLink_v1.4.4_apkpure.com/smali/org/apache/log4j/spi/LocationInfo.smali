.class public Lorg/apache/log4j/spi/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NA:Ljava/lang/String; = "?"

.field public static final NA_LOCATION_INFO:Lorg/apache/log4j/spi/LocationInfo;

.field static synthetic class$java$lang$Throwable:Ljava/lang/Class; = null

.field private static getClassNameMethod:Ljava/lang/reflect/Method; = null

.field private static getFileNameMethod:Ljava/lang/reflect/Method; = null

.field private static getLineNumberMethod:Ljava/lang/reflect/Method; = null

.field private static getMethodNameMethod:Ljava/lang/reflect/Method; = null

.field private static getStackTraceMethod:Ljava/lang/reflect/Method; = null

.field static inVisualAge:Z = false

.field private static pw:Ljava/io/PrintWriter; = null

.field static final serialVersionUID:J = -0x1266441eb56e5a84L

.field private static sw:Ljava/io/StringWriter;


# instance fields
.field transient className:Ljava/lang/String;

.field transient fileName:Ljava/lang/String;

.field public fullInfo:Ljava/lang/String;

.field transient lineNumber:Ljava/lang/String;

.field transient methodName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "LocationInfo will use pre-JDK 1.4 methods to determine location."

    .line 60
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    sput-object v1, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    .line 61
    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v1, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    .line 82
    new-instance v1, Lorg/apache/log4j/spi/LocationInfo;

    const-string v2, "?"

    invoke-direct {v1, v2, v2, v2, v2}, Lorg/apache/log4j/spi/LocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/spi/LocationInfo;->NA_LOCATION_INFO:Lorg/apache/log4j/spi/LocationInfo;

    const/4 v1, 0x0

    .line 88
    sput-boolean v1, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    :try_start_0
    const-string v2, "com.ibm.uvm.tools.DebugSupport"

    .line 91
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    sput-boolean v1, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    const-string v1, "Detected IBM VisualAge environment."

    .line 92
    invoke-static {v1}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    const/4 v1, 0x0

    .line 98
    :try_start_1
    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->class$java$lang$Throwable:Ljava/lang/Class;

    if-nez v2, :cond_1

    const-string v2, "java.lang.Throwable"

    invoke-static {v2}, Lorg/apache/log4j/spi/LocationInfo;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/spi/LocationInfo;->class$java$lang$Throwable:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->class$java$lang$Throwable:Ljava/lang/Class;

    :goto_0
    const-string v3, "getStackTrace"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/spi/LocationInfo;->getStackTraceMethod:Ljava/lang/reflect/Method;

    const-string v2, "java.lang.StackTraceElement"

    .line 99
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getClassName"

    .line 100
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/spi/LocationInfo;->getClassNameMethod:Ljava/lang/reflect/Method;

    const-string v3, "getMethodName"

    .line 101
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/spi/LocationInfo;->getMethodNameMethod:Ljava/lang/reflect/Method;

    const-string v3, "getFileName"

    .line 102
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Lorg/apache/log4j/spi/LocationInfo;->getFileNameMethod:Ljava/lang/reflect/Method;

    const-string v3, "getLineNumber"

    .line 103
    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/spi/LocationInfo;->getLineNumberMethod:Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 107
    :catch_0
    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    .line 105
    :catch_1
    invoke-static {v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 279
    iput-object p1, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 280
    iput-object p2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 281
    iput-object p3, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 282
    iput-object p4, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 284
    invoke-static {v0, p2}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string p2, "."

    .line 285
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 286
    invoke-static {v0, p3}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string p2, "("

    .line 287
    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 288
    invoke-static {v0, p1}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string p1, ":"

    .line 289
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 290
    invoke-static {v0, p4}, Lorg/apache/log4j/spi/LocationInfo;->appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string p1, ")"

    .line 291
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_f

    if-nez p2, :cond_0

    goto/16 :goto_4

    .line 136
    :cond_0
    sget-object v0, Lorg/apache/log4j/spi/LocationInfo;->getLineNumberMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 139
    :try_start_0
    sget-object v1, Lorg/apache/log4j/spi/LocationInfo;->getStackTraceMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    const-string v2, "?"

    .line 141
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    :goto_0
    if-ltz v3, :cond_5

    .line 142
    sget-object v4, Lorg/apache/log4j/spi/LocationInfo;->getClassNameMethod:Ljava/lang/reflect/Method;

    aget-object v5, v1, v3

    invoke-virtual {v4, v5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 143
    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v3, v3, 0x1

    .line 145
    array-length v4, v1

    if-ge v3, v4, :cond_3

    .line 146
    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 147
    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->getMethodNameMethod:Ljava/lang/reflect/Method;

    aget-object v4, v1, v3

    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 148
    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->getFileNameMethod:Ljava/lang/reflect/Method;

    aget-object v4, v1, v3

    invoke-virtual {v2, v4, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 149
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, "?"

    .line 150
    iput-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 152
    :cond_1
    sget-object v2, Lorg/apache/log4j/spi/LocationInfo;->getLineNumberMethod:Ljava/lang/reflect/Method;

    aget-object v1, v1, v3

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, "?"

    .line 154
    iput-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    goto :goto_1

    .line 156
    :cond_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 158
    :goto_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 159
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 163
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :cond_4
    add-int/lit8 v3, v3, -0x1

    move-object v2, v4

    goto/16 :goto_0

    :cond_5
    return-void

    :catch_0
    move-exception v0

    const-string v1, "LocationInfo failed using JDK 1.4 methods"

    .line 183
    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_1
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-nez v1, :cond_6

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_7

    .line 179
    :cond_6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_7
    const-string v1, "LocationInfo failed using JDK 1.4 methods"

    .line 181
    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_2
    move-exception v0

    const-string v1, "LocationInfo failed using JDK 1.4 methods"

    .line 175
    invoke-static {v1, v0}, Lorg/apache/log4j/helpers/LogLog;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 189
    :cond_8
    :goto_2
    sget-object v0, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    monitor-enter v0

    .line 190
    :try_start_1
    sget-object v1, Lorg/apache/log4j/spi/LocationInfo;->pw:Ljava/io/PrintWriter;

    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 191
    sget-object p1, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    .line 192
    sget-object v1, Lorg/apache/log4j/spi/LocationInfo;->sw:Ljava/io/StringWriter;

    invoke-virtual {v1}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 193
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 204
    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    return-void

    .line 215
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2e

    if-eq v2, v3, :cond_a

    .line 217
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, "."

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-eq p2, v1, :cond_a

    goto :goto_3

    :cond_a
    move p2, v0

    .line 224
    :goto_3
    sget-object v0, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_b

    return-void

    .line 227
    :cond_b
    sget v0, Lorg/apache/log4j/Layout;->LINE_SEP_LEN:I

    add-int/2addr p2, v0

    .line 230
    sget-object v0, Lorg/apache/log4j/Layout;->LINE_SEP:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    return-void

    .line 236
    :cond_c
    sget-boolean v2, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-nez v2, :cond_e

    const-string p2, "at "

    .line 238
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v1, :cond_d

    return-void

    :cond_d
    add-int/lit8 p2, p2, 0x3

    .line 245
    :cond_e
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    return-void

    :catchall_0
    move-exception p1

    .line 193
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :cond_f
    :goto_4
    return-void
.end method

.method private static final appendFragment(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "?"

    .line 259
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 261
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 98
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


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 5

    .line 301
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const-string v1, "?"

    if-nez v0, :cond_0

    return-object v1

    .line 302
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    if-nez v2, :cond_4

    const/16 v2, 0x28

    .line 305
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 307
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_0

    .line 309
    :cond_1
    iget-object v3, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v4, 0x2e

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    const/4 v3, 0x0

    .line 321
    sget-boolean v4, Lorg/apache/log4j/spi/LocationInfo;->inVisualAge:Z

    if-eqz v4, :cond_2

    .line 322
    iget-object v3, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v4, 0x20

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    :cond_2
    if-ne v0, v2, :cond_3

    .line 326
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    goto :goto_0

    .line 328
    :cond_3
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    .line 331
    :cond_4
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->className:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 4

    .line 341
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const-string v1, "?"

    if-nez v0, :cond_0

    return-object v1

    .line 343
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    if-nez v2, :cond_2

    const/16 v2, 0x3a

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 346
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    goto :goto_0

    .line 348
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v2, 0x28

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 349
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    .line 352
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getLineNumber()Ljava/lang/String;
    .locals 5

    .line 362
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const-string v1, "?"

    if-nez v0, :cond_0

    return-object v1

    .line 364
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    if-nez v2, :cond_2

    const/16 v2, 0x29

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 366
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x3a

    add-int/lit8 v4, v0, -0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 368
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    goto :goto_0

    .line 370
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    .line 372
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->lineNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodName()Ljava/lang/String;
    .locals 4

    .line 380
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const-string v1, "?"

    if-nez v0, :cond_0

    return-object v1

    .line 381
    :cond_0
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    if-nez v2, :cond_2

    const/16 v2, 0x28

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 383
    iget-object v2, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    .line 385
    iput-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    goto :goto_0

    .line 387
    :cond_1
    iget-object v1, p0, Lorg/apache/log4j/spi/LocationInfo;->fullInfo:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    .line 389
    :cond_2
    :goto_0
    iget-object v0, p0, Lorg/apache/log4j/spi/LocationInfo;->methodName:Ljava/lang/String;

    return-object v0
.end method
