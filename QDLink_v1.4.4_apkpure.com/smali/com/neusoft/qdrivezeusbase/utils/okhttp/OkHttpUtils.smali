.class public Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;
    }
.end annotation


# static fields
.field private static final AND:Ljava/lang/String; = "&"

.field private static final EQUAL:Ljava/lang/String; = "="

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final QUE:Ljava/lang/String; = "?"

.field private static final REQUEST_ERROR_CODE:I = -0x1

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-class v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;
    .locals 0

    .line 38
    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->setHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 38
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lokhttp3/Response;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->asyncResponseTreatment(Lokhttp3/Response;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    return-void
.end method

.method private static asyncResponseTreatment(Lokhttp3/Response;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->TAG:Ljava/lang/String;

    const-string v1, "\u83b7\u53d6\u6570\u636e\u6210\u529f\u4e86"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response.code()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p0

    .line 495
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "response.body().string()=="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 501
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 502
    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/utils/DataUtils;->JsonObject2HashMap(Lorg/json/JSONObject;)Ljava/util/HashMap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 504
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 505
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The response body is not json : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "data"

    .line 506
    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    :goto_0
    invoke-interface {p1, v0}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;->requestSuccess(Ljava/util/HashMap;)V

    goto :goto_1

    .line 510
    :cond_0
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;->requestFail(I)V

    :goto_1
    return-void
.end method

.method public static getRequestAsync(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;",
            ")V"
        }
    .end annotation

    .line 135
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    if-eqz p2, :cond_1

    .line 138
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 140
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "?"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    goto :goto_1

    .line 145
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 147
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "="

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 152
    :cond_1
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 153
    invoke-virtual {p2, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 154
    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->setHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;

    .line 155
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 156
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$2;

    invoke-direct {p1, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$2;-><init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static getRequestSync(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;",
            ")V"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->getInstance()Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;

    move-result-object v0

    new-instance v1, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;

    new-instance v2, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$1;-><init>(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    invoke-direct {v1, v2}, Lcom/neusoft/qdrivezeusbase/threadmanager/PriorityRunnable;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/threadmanager/ThreadPoolManager;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static postDownloadFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;",
            ")V"
        }
    .end annotation

    .line 417
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 419
    sget-object v1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$10;->$SwitchMap$com$neusoft$qdrivezeusbase$utils$okhttp$OkHttpUtils$REQUEST_DATA_TYPE:[I

    invoke-virtual {p6}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->ordinal()I

    move-result p6

    aget p6, v1, p6

    const/4 v1, 0x1

    if-eq p6, v1, :cond_2

    const/4 p2, 0x2

    if-eq p6, p2, :cond_0

    goto :goto_0

    .line 433
    :cond_0
    invoke-static {p3}, Lcom/neusoft/qdrivezeusbase/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "application/json; charset=utf-8"

    .line 436
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    .line 437
    invoke-static {p2, p3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    goto :goto_2

    :cond_2
    if-nez p2, :cond_3

    :goto_0
    const/4 p2, 0x0

    goto :goto_2

    .line 424
    :cond_3
    new-instance p3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 425
    sget-object p6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {p3, p6}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 426
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_1
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 427
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p3, v1, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_1

    .line 429
    :cond_4
    invoke-virtual {p3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p2

    .line 441
    :goto_2
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 442
    invoke-virtual {p3, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    if-eqz p2, :cond_5

    .line 444
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 446
    :cond_5
    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->setHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;

    .line 447
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    const/4 p1, 0x0

    .line 448
    invoke-interface {p7, p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;->onBefore(Lokhttp3/Request;I)V

    .line 449
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;

    invoke-direct {p1, p7, p4, p5}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;-><init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static postRequestDownloadFileWithForm(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;",
            ")V"
        }
    .end annotation

    .line 380
    sget-object v6, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->FORM:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->postDownloadFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;)V

    return-void
.end method

.method public static postRequestDownloadFileWithJSON(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;",
            ")V"
        }
    .end annotation

    .line 398
    sget-object v6, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;->JSON:Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-static/range {v0 .. v7}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->postDownloadFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;)V

    return-void
.end method

.method public static postRequestWithFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;",
            ")V"
        }
    .end annotation

    .line 251
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    const-string v1, "File/*"

    .line 252
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 254
    invoke-static {v1, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 256
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 257
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 258
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 259
    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->setHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;

    .line 260
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 262
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$5;

    invoke-direct {p1, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$5;-><init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static postRequestWithJson(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;",
            ")V"
        }
    .end annotation

    .line 218
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    const-string v1, "application/json; charset=utf-8"

    .line 219
    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 220
    invoke-static {v1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 221
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 222
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 223
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 224
    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->setHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;

    .line 225
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 227
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$4;

    invoke-direct {p1, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$4;-><init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static postRequestWithParams(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;",
            ")V"
        }
    .end annotation

    .line 180
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 181
    new-instance v1, Lokhttp3/FormBody$Builder;

    invoke-direct {v1}, Lokhttp3/FormBody$Builder;-><init>()V

    if-eqz p2, :cond_0

    .line 182
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 183
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    .line 188
    :cond_0
    new-instance p2, Lokhttp3/Request$Builder;

    invoke-direct {p2}, Lokhttp3/Request$Builder;-><init>()V

    .line 189
    invoke-virtual {p2, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 190
    invoke-virtual {v1}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 191
    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->setHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;

    .line 192
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 194
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$3;

    invoke-direct {p1, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$3;-><init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static postRequestWithParamsAndFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;",
            ")V"
        }
    .end annotation

    .line 288
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    .line 289
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 290
    new-instance p3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 291
    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {p3, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 292
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 293
    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v2, "file/*"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {p3, v2, p2, v1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 296
    invoke-virtual {p3}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p2

    .line 298
    new-instance p3, Lokhttp3/Request$Builder;

    invoke-direct {p3}, Lokhttp3/Request$Builder;-><init>()V

    .line 299
    invoke-virtual {p3, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 300
    invoke-virtual {p0, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 301
    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->setHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;

    .line 302
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 304
    invoke-virtual {v0, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$6;

    invoke-direct {p1, p4}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$6;-><init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public static postRequestWithStream(Ljava/lang/String;Ljava/util/HashMap;Ljava/io/InputStream;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;",
            ")V"
        }
    .end annotation

    .line 329
    new-instance v0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$7;

    invoke-direct {v0, p2}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$7;-><init>(Ljava/io/InputStream;)V

    .line 344
    new-instance p2, Lokhttp3/OkHttpClient;

    invoke-direct {p2}, Lokhttp3/OkHttpClient;-><init>()V

    .line 346
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 347
    invoke-virtual {v1, p0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 348
    invoke-virtual {p0, v0}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    .line 349
    invoke-static {p0, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->setHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;

    .line 350
    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    .line 352
    invoke-virtual {p2, p0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p0

    new-instance p1, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$8;

    invoke-direct {p1, p3}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$8;-><init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    invoke-interface {p0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method private static setHeader(Lokhttp3/Request$Builder;Ljava/util/HashMap;)Lokhttp3/Request$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Request$Builder;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lokhttp3/Request$Builder;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 523
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 526
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 527
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_1
    :goto_1
    return-object p0
.end method
