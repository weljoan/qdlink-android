.class public final Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;
.super Ljava/lang/Object;
.source "WsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOkHttpClient:Lokhttp3/OkHttpClient;

.field private needReconnect:Z

.field private wsUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 350
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;->needReconnect:Z

    .line 354
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;)Landroid/content/Context;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;)Ljava/lang/String;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;->wsUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;)Z
    .locals 0

    .line 346
    iget-boolean p0, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;->needReconnect:Z

    return p0
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;)Lokhttp3/OkHttpClient;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method


# virtual methods
.method public build()Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;
    .locals 1

    .line 373
    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager;-><init>(Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;)V

    return-object v0
.end method

.method public client(Lokhttp3/OkHttpClient;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;
    .locals 0

    .line 363
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;->mOkHttpClient:Lokhttp3/OkHttpClient;

    return-object p0
.end method

.method public needReconnect(Z)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;
    .locals 0

    .line 368
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;->needReconnect:Z

    return-object p0
.end method

.method public wsUrl(Ljava/lang/String;)Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/okhttpsocket/WsManager$Builder;->wsUrl:Ljava/lang/String;

    return-object p0
.end method
