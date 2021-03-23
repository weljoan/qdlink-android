.class public Lcom/neusoft/qdrivezeusbase/utils/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;
    }
.end annotation


# static fields
.field public static allowD:Z = true

.field public static allowE:Z = true

.field public static allowI:Z = true

.field public static allowV:Z = true

.field public static allowW:Z = true

.field public static allowWtf:Z = true

.field public static customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger; = null

.field public static customTagPrefix:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 82
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 86
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 87
    invoke-interface {v1, v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 89
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 94
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 95
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 96
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 99
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 101
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 106
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 108
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 110
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 111
    invoke-interface {v1, v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 118
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 119
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 122
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 123
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    .line 26
    sput-boolean p0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowD:Z

    .line 27
    sput-boolean p0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowE:Z

    .line 28
    sput-boolean p0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowI:Z

    .line 29
    sput-boolean p0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowV:Z

    .line 30
    sput-boolean p0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowW:Z

    return-void
.end method

.method private static generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    .line 42
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v1, v3

    .line 44
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v0, 0x2

    aput-object p0, v1, v0

    const-string p0, "%s.%s(L:%d)"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 45
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customTagPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getCallerStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    .line 251
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .line 130
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 131
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 135
    invoke-interface {v1, v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 142
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 144
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 146
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 147
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 149
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    .line 154
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 156
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 158
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 159
    invoke-interface {v1, v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 161
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 166
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 167
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 170
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 171
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .line 178
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 179
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 180
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 182
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 183
    invoke-interface {v1, v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 185
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 190
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 192
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 194
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 195
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 197
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    .line 202
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 204
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 206
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 207
    invoke-interface {v1, v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2

    .line 215
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 216
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 217
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 219
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 220
    invoke-interface {v1, v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 227
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 229
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 231
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 232
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 234
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 2

    .line 239
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 240
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->generateTag(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 243
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->customLogger:Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;

    if-eqz v1, :cond_1

    .line 244
    invoke-interface {v1, v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 246
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
