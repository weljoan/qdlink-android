.class public Lcom/neusoft/interconnection/utils/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field public static allowD:Z = true

.field public static allowE:Z = true

.field public static allowI:Z = true

.field public static allowV:Z = true

.field public static allowW:Z = true

.field public static allowWtf:Z = true

.field public static customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger; = null

.field public static customTagPrefix:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/StackTraceElement;)Ljava/lang/String;
    .locals 4

    .line 41
    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    .line 42
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

    .line 43
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

    .line 44
    sget-object v0, Lcom/neusoft/interconnection/utils/Logger;->customTagPrefix:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customTagPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .line 81
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 83
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 85
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 86
    invoke-interface {v1, v0, p0}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 88
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 93
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowD:Z

    if-nez v0, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 97
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 100
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .line 105
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 107
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 109
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 110
    invoke-interface {v1, v0, p0}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 112
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 117
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowE:Z

    if-nez v0, :cond_0

    return-void

    .line 118
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 122
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 124
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static enableLog(Z)V
    .locals 0

    .line 25
    sput-boolean p0, Lcom/neusoft/interconnection/utils/Logger;->allowD:Z

    .line 26
    sput-boolean p0, Lcom/neusoft/interconnection/utils/Logger;->allowE:Z

    .line 27
    sput-boolean p0, Lcom/neusoft/interconnection/utils/Logger;->allowI:Z

    .line 28
    sput-boolean p0, Lcom/neusoft/interconnection/utils/Logger;->allowV:Z

    .line 29
    sput-boolean p0, Lcom/neusoft/interconnection/utils/Logger;->allowW:Z

    return-void
.end method

.method public static getCallerStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 2

    .line 250
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

    .line 129
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 131
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 133
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 134
    invoke-interface {v1, v0, p0}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 136
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 141
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowI:Z

    if-nez v0, :cond_0

    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 143
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 145
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 146
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 148
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    .line 153
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 155
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 157
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 158
    invoke-interface {v1, v0, p0}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 160
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 165
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowV:Z

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 167
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 169
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 170
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 172
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 2

    .line 177
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 178
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 179
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 181
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 182
    invoke-interface {v1, v0, p0}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 184
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 189
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 191
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 193
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 194
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 196
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static w(Ljava/lang/Throwable;)V
    .locals 2

    .line 201
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowW:Z

    if-nez v0, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 205
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 206
    invoke-interface {v1, v0, p0}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 208
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;)V
    .locals 2

    .line 214
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 215
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 216
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 218
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 219
    invoke-interface {v1, v0, p0}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 221
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static wtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 226
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 227
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 231
    invoke-interface {v1, v0, p0, p1}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 233
    :cond_1
    invoke-static {v0, p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static wtf(Ljava/lang/Throwable;)V
    .locals 2

    .line 238
    sget-boolean v0, Lcom/neusoft/interconnection/utils/Logger;->allowWtf:Z

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/neusoft/interconnection/utils/Logger;->getCallerStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->a(Ljava/lang/StackTraceElement;)Ljava/lang/String;

    move-result-object v0

    .line 242
    sget-object v1, Lcom/neusoft/interconnection/utils/Logger;->customLogger:Lcom/neusoft/interconnection/utils/Logger$CustomLogger;

    if-eqz v1, :cond_1

    .line 243
    invoke-interface {v1, v0, p0}, Lcom/neusoft/interconnection/utils/Logger$CustomLogger;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 245
    :cond_1
    invoke-static {v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
