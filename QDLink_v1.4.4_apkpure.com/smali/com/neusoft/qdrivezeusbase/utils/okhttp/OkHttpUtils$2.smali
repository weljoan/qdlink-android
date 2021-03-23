.class final Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$2;
.super Ljava/lang/Object;
.source "OkHttpUtils.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->getRequestAsync(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callBack:Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$2;->val$callBack:Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    .line 159
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$2;->val$callBack:Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;

    const/4 p2, -0x1

    invoke-interface {p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;->requestFail(I)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 164
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils$2;->val$callBack:Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;

    invoke-static {p2, p1}, Lcom/neusoft/qdrivezeusbase/utils/okhttp/OkHttpUtils;->access$200(Lokhttp3/Response;Lcom/neusoft/qdrivezeusbase/utils/myinterface/OkHttpCallBackInter;)V

    return-void
.end method
