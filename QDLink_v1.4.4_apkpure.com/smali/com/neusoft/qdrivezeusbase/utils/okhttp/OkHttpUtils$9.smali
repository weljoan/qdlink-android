.class final Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->postDownloadFile(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$REQUEST_DATA_TYPE;Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$filePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 449
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;->val$callBack:Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;->val$filePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 453
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;->val$callBack:Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;->onError(I)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 458
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    .line 459
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 461
    new-instance p2, Ljava/io/File;

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;->val$filePath:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 463
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 465
    :cond_0
    new-instance v8, Ljava/io/File;

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;->val$fileName:Ljava/lang/String;

    invoke-direct {v8, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 466
    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v0, 0x2000

    new-array v9, v0, [B

    const-wide/16 v0, 0x0

    .line 470
    :goto_0
    invoke-virtual {p1, v9}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    .line 471
    invoke-virtual {p2, v9, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V

    int-to-long v2, v2

    add-long v10, v0, v2

    .line 473
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;->val$callBack:Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;

    const/4 v5, 0x0

    move-wide v1, v10

    move-wide v3, v6

    invoke-interface/range {v0 .. v5}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;->inProgress(JJI)V

    move-wide v0, v10

    goto :goto_0

    .line 476
    :cond_1
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->flush()V

    .line 478
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$9;->val$callBack:Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;

    invoke-interface {p1, v8, v4}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/FileCallBackInter;->onResponse(Ljava/io/File;I)V

    return-void
.end method
