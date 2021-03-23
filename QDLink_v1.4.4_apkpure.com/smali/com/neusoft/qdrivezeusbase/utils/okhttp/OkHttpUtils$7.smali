.class final Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$7;
.super Lokhttp3/RequestBody;
.source "OkHttpUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->postRequestWithStream(Ljava/lang/String;Ljava/util/HashMap;Ljava/io/InputStream;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$inputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$7;->val$inputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    return-void
.end method


# virtual methods
.method public contentType()Lokhttp3/MediaType;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 338
    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$7;->val$inputStream:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 339
    invoke-interface {p1, v0}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    :cond_0
    return-void
.end method
