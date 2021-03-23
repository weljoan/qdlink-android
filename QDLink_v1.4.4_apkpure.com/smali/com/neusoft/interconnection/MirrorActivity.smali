.class public Lcom/neusoft/interconnection/MirrorActivity;
.super Landroid/app/Activity;
.source "MirrorActivity.java"

# interfaces
.implements Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;
.implements Lcom/neusoft/interconnection/connectmanager/LinkManagerCallback;


# instance fields
.field private a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

.field private b:Lcom/neusoft/interconnection/MirrorActivity;

.field private c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

.field private d:Landroid/content/ServiceConnection;

.field private e:Ljava/util/Timer;

.field private f:Ljava/util/TimerTask;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:Landroid/content/Intent;

.field private k:Z

.field private l:Ljava/util/Timer;

.field private m:Ljava/util/TimerTask;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 91
    new-instance v0, Lcom/neusoft/interconnection/MirrorActivity$1;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/MirrorActivity$1;-><init>(Lcom/neusoft/interconnection/MirrorActivity;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->d:Landroid/content/ServiceConnection;

    const/4 v0, 0x0

    .line 401
    iput-boolean v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->k:Z

    return-void
.end method

.method static synthetic a(Lcom/neusoft/interconnection/MirrorActivity;Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    return-object p1
.end method

.method static synthetic a(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/connectmanager/LinkManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    return-object p0
.end method

.method static synthetic a(Lcom/neusoft/interconnection/MirrorActivity;Lcom/neusoft/interconnection/connectmanager/LinkManager;)Lcom/neusoft/interconnection/connectmanager/LinkManager;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    return-object p1
.end method

.method private a()V
    .locals 7

    .line 127
    sget-boolean v0, Lcom/neusoft/interconnection/utils/ConnConstant;->mainIsCreate:Z

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    const-string v0, "startScreenCaptureIntent myBinder != null"

    .line 129
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->startScreenCaptureIntent()V

    return-void

    :cond_0
    const-string v0, "startScreenCaptureIntent myBinder == null"

    .line 132
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 1142
    :cond_1
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1143
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1144
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 1145
    iput-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    .line 1148
    :cond_2
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    if-eqz v0, :cond_3

    .line 1149
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 1150
    iput-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    .line 1153
    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    .line 1154
    new-instance v0, Lcom/neusoft/interconnection/MirrorActivity$2;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/MirrorActivity$2;-><init>(Lcom/neusoft/interconnection/MirrorActivity;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    .line 1170
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 1172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDataTask run exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Landroid/content/Context;)V
    .locals 1

    .line 224
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    .line 226
    sput p0, Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;->VALUE_APP_PORTAIT_OR_LANDSCAPE:I

    return-void

    .line 229
    :cond_0
    sput v0, Lcom/neu/ssp/mirror/screencap/utils/MiConstUtil;->VALUE_APP_PORTAIT_OR_LANDSCAPE:I

    return-void
.end method

.method private a(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 322
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setMiDevice(Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V

    .line 325
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_2

    .line 326
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->resetDataTranslateChannel(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)V

    .line 327
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {p1, p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setMirrorActionImpl(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;)V

    .line 328
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    new-instance v0, Lcom/neusoft/interconnection/MirrorActivity$3;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/MirrorActivity$3;-><init>(Lcom/neusoft/interconnection/MirrorActivity;)V

    invoke-virtual {p1, v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setStateListener(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;)V

    .line 339
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setMiDevice(Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V

    .line 347
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->j:Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 349
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_1

    .line 350
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 351
    iget p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->i:I

    const-string v0, "code"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 352
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->j:Landroid/content/Intent;

    const-string v0, "data"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 353
    invoke-virtual {p0, p1}, Lcom/neusoft/interconnection/MirrorActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    .line 355
    :cond_1
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->j:Landroid/content/Intent;

    if-eqz p1, :cond_2

    .line 356
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    iget v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->i:I

    invoke-virtual {p2, v0, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->prepareMediaProjection(ILandroid/content/Intent;)V

    :cond_2
    return-void
.end method

.method private a(Ljava/lang/String;IIIIII)V
    .locals 3

    .line 267
    new-instance v0, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;-><init>()V

    .line 268
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x348b34

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "play"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 300
    invoke-direct {p0}, Lcom/neusoft/interconnection/MirrorActivity;->f()V

    goto :goto_3

    :cond_2
    const/4 p1, 0x1

    if-eq p7, p1, :cond_4

    const/4 p1, 0x3

    if-eq p7, p1, :cond_3

    goto :goto_2

    :cond_3
    const p1, 0xf0001

    .line 275
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setiScreenCapType(I)V

    goto :goto_2

    :cond_4
    const p1, 0xf0002

    .line 279
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setiScreenCapType(I)V

    .line 282
    :goto_2
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setWidth(I)V

    .line 283
    invoke-virtual {v0, p3}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setHeight(I)V

    .line 284
    invoke-virtual {v0, p4}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setFrameRate(I)V

    .line 285
    invoke-virtual {v0, p5}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setBitrate(I)V

    .line 286
    invoke-virtual {v0, p6}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setFrameInterval(I)V

    .line 287
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz p1, :cond_5

    .line 288
    invoke-virtual {p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->getMyConnectionManager()Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/neusoft/interconnection/MirrorActivity;->a(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V

    :cond_5
    :goto_3
    return-void
.end method

.method static synthetic a(Lcom/neusoft/interconnection/MirrorActivity;Z)Z
    .locals 0

    const/4 p1, 0x1

    .line 36
    iput-boolean p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    return-object p0
.end method

.method private b()V
    .locals 7

    .line 142
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 144
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 145
    iput-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    if-eqz v0, :cond_1

    .line 149
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 150
    iput-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    .line 153
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    .line 154
    new-instance v0, Lcom/neusoft/interconnection/MirrorActivity$2;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/MirrorActivity$2;-><init>(Lcom/neusoft/interconnection/MirrorActivity;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    .line 170
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDataTask run exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/neusoft/interconnection/MirrorActivity;)Lcom/neusoft/interconnection/MirrorActivity;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/interconnection/MirrorActivity;->b:Lcom/neusoft/interconnection/MirrorActivity;

    return-object p0
.end method

.method private c()V
    .locals 4

    const/4 v0, 0x0

    .line 178
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 180
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 181
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopTimer===checkDataTimer Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 187
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 188
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 189
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v0

    .line 192
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopTimer===checkDataTask Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startMirror String protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",linkMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->g:Ljava/lang/String;

    iget v2, p0, Lcom/neusoft/interconnection/MirrorActivity;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->startMirror(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/neusoft/interconnection/MirrorActivity;)V
    .locals 4

    const/4 v0, 0x0

    .line 5178
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 5179
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 5180
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 5181
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5184
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopTimer===checkDataTimer Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5187
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 5188
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 5189
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception p0

    .line 5192
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopTimer===checkDataTask Exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private e()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->onDestroy()V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/neusoft/interconnection/MirrorActivity;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/neusoft/interconnection/MirrorActivity;->k:Z

    return p0
.end method

.method private f()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->stopMirror()V

    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/neusoft/interconnection/MirrorActivity;)V
    .locals 4

    const/4 v0, 0x0

    .line 5449
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 5450
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 5451
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 5452
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 5455
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopTimer===checkDataTimer Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 5458
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 5459
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 5460
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception p0

    .line 5463
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "stopTimer===checkDataTask Exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 7

    const/4 v0, 0x0

    .line 406
    iput-boolean v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->k:Z

    const/4 v0, 0x0

    .line 408
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 409
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 410
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 411
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :catch_0
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 418
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 422
    :catch_1
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    .line 423
    new-instance v0, Lcom/neusoft/interconnection/MirrorActivity$4;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/MirrorActivity$4;-><init>(Lcom/neusoft/interconnection/MirrorActivity;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    .line 441
    :try_start_2
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception v0

    .line 443
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDataTask run exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method private h()V
    .locals 4

    const/4 v0, 0x0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    if-eqz v1, :cond_0

    .line 450
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 451
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->purge()I

    .line 452
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 455
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "stopTimer===checkDataTimer Exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 458
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    if-eqz v1, :cond_1

    .line 459
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    invoke-virtual {v1}, Ljava/util/TimerTask;->cancel()Z

    .line 460
    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    return-void

    :catch_1
    move-exception v0

    .line 463
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "stopTimer===checkDataTask Exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bindCapService()V
    .locals 3

    const-string v0, "MirrorActivity bindCapService"

    .line 65
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 67
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->d:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/neusoft/interconnection/MirrorActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :catch_0
    :cond_0
    iput-object p0, p0, Lcom/neusoft/interconnection/MirrorActivity;->b:Lcom/neusoft/interconnection/MirrorActivity;

    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->d:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/neusoft/interconnection/MirrorActivity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public destroyMirrorActivity()V
    .locals 1

    .line 4241
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    .line 4242
    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->onDestroy()V

    :cond_0
    return-void
.end method

.method public mirrorOnActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "screenCapture EVENT_SCREEN_CAPTURE_ACT_RES:123,resultCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 368
    invoke-static {p0}, Lcom/neusoft/interconnection/MirrorActivity;->a(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/16 v1, 0x7b

    if-ne p1, v1, :cond_4

    if-nez p3, :cond_0

    const-string p1, "\u7528\u6237\u83b7\u53d6\u6743\u9650\u5931\u8d25"

    .line 372
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 373
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz p1, :cond_5

    .line 374
    invoke-virtual {p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->requestUserScreenCancelPermission()V

    .line 375
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->requestScreenCaptureSupport(Z)V

    return-void

    .line 378
    :cond_0
    iput p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->i:I

    .line 379
    iput-object p3, p0, Lcom/neusoft/interconnection/MirrorActivity;->j:Landroid/content/Intent;

    .line 380
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->getSecondViewGroup()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p1, "screenCapture myBinder.getSecondViewGroup() != null"

    .line 381
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 383
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz p1, :cond_5

    const/4 p2, 0x1

    .line 384
    invoke-virtual {p1, p2}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->requestScreenCaptureSupport(Z)V

    return-void

    :cond_1
    const-string p1, "screenCapture myBinder.getSecondViewGroup() == null"

    .line 387
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 3406
    iput-boolean v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->k:Z

    const/4 p1, 0x0

    .line 3408
    :try_start_0
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    if-eqz p2, :cond_2

    .line 3409
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    invoke-virtual {p2}, Ljava/util/Timer;->cancel()V

    .line 3410
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    invoke-virtual {p2}, Ljava/util/Timer;->purge()I

    .line 3411
    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3416
    :catch_0
    :cond_2
    :try_start_1
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    if-eqz p2, :cond_3

    .line 3417
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    invoke-virtual {p2}, Ljava/util/TimerTask;->cancel()Z

    .line 3418
    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 3422
    :catch_1
    :cond_3
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    .line 3423
    new-instance p1, Lcom/neusoft/interconnection/MirrorActivity$4;

    invoke-direct {p1, p0}, Lcom/neusoft/interconnection/MirrorActivity$4;-><init>(Lcom/neusoft/interconnection/MirrorActivity;)V

    iput-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    .line 3441
    :try_start_2
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->l:Ljava/util/Timer;

    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->m:Ljava/util/TimerTask;

    const-wide/16 v2, 0x1f4

    const-wide/16 v4, 0x1f4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    move-exception p1

    .line 3443
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "checkDataTask run exception:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "\u7528\u6237\u70b9\u51fb\u4e86\u53d6\u6d88\u6309\u94ae"

    .line 393
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 394
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz p1, :cond_5

    .line 395
    invoke-virtual {p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->requestUserScreenCancelPermission()V

    .line 396
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    invoke-virtual {p1, v0}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->requestScreenCaptureSupport(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 48
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MirrorActivity onCreate"

    .line 49
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p0}, Lcom/neusoft/interconnection/MirrorActivity;->bindCapService()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 476
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 478
    :try_start_0
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->d:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->d:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/neusoft/interconnection/MirrorActivity;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    const-string p1, "MirrorActivity onNewIntent"

    .line 60
    invoke-static {p1}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/neusoft/interconnection/MirrorActivity;->bindCapService()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 79
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 80
    invoke-virtual {p0}, Lcom/neusoft/interconnection/MirrorActivity;->resumeMirrorActivity()V

    return-void
.end method

.method public onStartMirror()V
    .locals 3

    const-string v0, "MirrorActivity onStartMirror()"

    .line 210
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v1, :cond_0

    .line 213
    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->getScreenWidth()I

    move-result v1

    iget-object v2, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->getScreenHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->setScreenMirrorStart(II)V

    .line 215
    :cond_0
    invoke-static {p0}, Lcom/neusoft/interconnection/MirrorActivity;->a(Landroid/content/Context;)V

    .line 1234
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_1

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "startMirror String protocolType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",linkMode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 1236
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->g:Ljava/lang/String;

    iget v2, p0, Lcom/neusoft/interconnection/MirrorActivity;->h:I

    invoke-virtual {v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->startMirror(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onStopMirror()V
    .locals 1

    const-string v0, "MirrorActivity onStopMirror()"

    .line 202
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public receiveMirrorPlayOrPause(Ljava/lang/String;IIIIIILjava/lang/String;I)V
    .locals 2

    .line 259
    iput-object p8, p0, Lcom/neusoft/interconnection/MirrorActivity;->g:Ljava/lang/String;

    .line 260
    iput p9, p0, Lcom/neusoft/interconnection/MirrorActivity;->h:I

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MirrorActivity receiveMirrorPlayOrPause() playStatus:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",frameRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",bitRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",frameInterval:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",capType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",protocolType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, ",linkMode:"

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-static {p8}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2267
    new-instance p8, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;

    invoke-direct {p8}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;-><init>()V

    .line 2268
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p9

    const v0, 0x348b34

    if-eq p9, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p9, "play"

    invoke-virtual {p1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 3310
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz p1, :cond_7

    .line 3311
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->stopMirror()V

    goto/16 :goto_3

    :cond_2
    const/4 p1, 0x1

    if-eq p7, p1, :cond_4

    const/4 p1, 0x3

    if-eq p7, p1, :cond_3

    goto :goto_2

    :cond_3
    const p1, 0xf0001

    .line 2275
    invoke-virtual {p8, p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setiScreenCapType(I)V

    goto :goto_2

    :cond_4
    const p1, 0xf0002

    .line 2279
    invoke-virtual {p8, p1}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setiScreenCapType(I)V

    .line 2282
    :goto_2
    invoke-virtual {p8, p2}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setWidth(I)V

    .line 2283
    invoke-virtual {p8, p3}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setHeight(I)V

    .line 2284
    invoke-virtual {p8, p4}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setFrameRate(I)V

    .line 2285
    invoke-virtual {p8, p5}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setBitrate(I)V

    .line 2286
    invoke-virtual {p8, p6}, Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;->setFrameInterval(I)V

    .line 2287
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->c:Lcom/neusoft/interconnection/connectmanager/LinkManager;

    if-eqz p1, :cond_7

    .line 2288
    invoke-virtual {p1}, Lcom/neusoft/interconnection/connectmanager/LinkManager;->getMyConnectionManager()Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    move-result-object p1

    .line 2321
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz p2, :cond_5

    .line 2322
    invoke-virtual {p2, p8}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setMiDevice(Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V

    .line 2325
    :cond_5
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz p2, :cond_7

    .line 2326
    invoke-virtual {p2, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->resetDataTranslateChannel(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenDataTransInterface;)V

    .line 2327
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {p1, p0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setMirrorActionImpl(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenMirrorActionInterface;)V

    .line 2328
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    new-instance p2, Lcom/neusoft/interconnection/MirrorActivity$3;

    invoke-direct {p2, p0}, Lcom/neusoft/interconnection/MirrorActivity$3;-><init>(Lcom/neusoft/interconnection/MirrorActivity;)V

    invoke-virtual {p1, p2}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setStateListener(Lcom/neu/ssp/mirror/screencap/interfaces/MiScreenCastStateListener;)V

    .line 2339
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {p1, p8}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->setMiDevice(Lcom/neu/ssp/mirror/screencap/device/MiScreenCaptureParam;)V

    .line 2347
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->j:Landroid/content/Intent;

    if-eqz p1, :cond_7

    .line 2349
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x1a

    if-lt p1, p2, :cond_6

    .line 2350
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2351
    iget p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->i:I

    const-string p3, "code"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2352
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->j:Landroid/content/Intent;

    const-string p3, "data"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2353
    invoke-virtual {p0, p1}, Lcom/neusoft/interconnection/MirrorActivity;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_3

    .line 2355
    :cond_6
    iget-object p1, p0, Lcom/neusoft/interconnection/MirrorActivity;->j:Landroid/content/Intent;

    if-eqz p1, :cond_7

    .line 2356
    iget-object p2, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    iget p3, p0, Lcom/neusoft/interconnection/MirrorActivity;->i:I

    invoke-virtual {p2, p3, p1}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->prepareMediaProjection(ILandroid/content/Intent;)V

    :cond_7
    :goto_3
    return-void
.end method

.method public requestScreenCaptureSupport()V
    .locals 7

    const-string v0, "requestScreenCaptureSupport"

    .line 249
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2127
    sget-boolean v0, Lcom/neusoft/interconnection/utils/ConnConstant;->mainIsCreate:Z

    if-eqz v0, :cond_1

    .line 2128
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    if-eqz v0, :cond_0

    const-string v0, "startScreenCaptureIntent myBinder != null"

    .line 2129
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    .line 2130
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->a:Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;

    invoke-virtual {v0}, Lcom/neu/ssp/mirror/screencap/service/ScreenCaptureService$MyBinder;->startScreenCaptureIntent()V

    return-void

    :cond_0
    const-string v0, "startScreenCaptureIntent myBinder == null"

    .line 2132
    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void

    .line 2142
    :cond_1
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 2143
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 2144
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 2145
    iput-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    .line 2148
    :cond_2
    iget-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    if-eqz v0, :cond_3

    .line 2149
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    .line 2150
    iput-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    .line 2153
    :cond_3
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    .line 2154
    new-instance v0, Lcom/neusoft/interconnection/MirrorActivity$2;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/MirrorActivity$2;-><init>(Lcom/neusoft/interconnection/MirrorActivity;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    .line 2170
    :try_start_0
    iget-object v1, p0, Lcom/neusoft/interconnection/MirrorActivity;->e:Ljava/util/Timer;

    iget-object v2, p0, Lcom/neusoft/interconnection/MirrorActivity;->f:Ljava/util/TimerTask;

    const-wide/16 v3, 0x1f4

    const-wide/16 v5, 0x1f4

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 2172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "checkDataTask run exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/neusoft/interconnection/utils/Logger;->e(Ljava/lang/String;)V

    return-void
.end method

.method public resumeMirrorActivity()V
    .locals 0

    return-void
.end method
