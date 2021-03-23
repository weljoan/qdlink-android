.class Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$1;
.super Ljava/lang/Object;
.source "WangYiSDK.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestRankList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;


# direct methods
.method constructor <init>(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$1;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "wangyisdk"

    const-string p2, "requestRankList call:onFailure"

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$1;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$000(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;->responseRankList(ILjava/util/List;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 92
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 93
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "requestRankList onResponse:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "wangyisdk"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object p2

    const-class v1, Lcom/neusoft/sdk/wangyilibinter/bean/RankBean;

    invoke-virtual {p2, p1, v1}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->GsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/sdk/wangyilibinter/bean/RankBean;

    const/4 p2, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 97
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestRankList onResponse:RankBean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/RankBean;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/RankBean;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 100
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object v2

    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/RankBean;->getData()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;

    invoke-virtual {v2, v3, v4}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->jsonToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 102
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestRankList onResponse:RankListBean size():"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$1;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$000(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;

    move-result-object p2

    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/RankBean;->getCode()I

    move-result p1

    invoke-interface {p2, p1, v2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;->responseRankList(ILjava/util/List;)V

    goto :goto_0

    .line 105
    :cond_0
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$1;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$000(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;

    move-result-object p1

    invoke-interface {p1, v1, p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;->responseRankList(ILjava/util/List;)V

    goto :goto_0

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$1;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$000(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;

    move-result-object p1

    invoke-interface {p1, v1, p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;->responseRankList(ILjava/util/List;)V

    goto :goto_0

    :cond_2
    const-string p1, "requestRankList onResponse:RankBean \u89e3\u6790\u6570\u636e\u5931\u8d25"

    .line 113
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$1;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$000(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;

    move-result-object p1

    invoke-interface {p1, v1, p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;->responseRankList(ILjava/util/List;)V

    :goto_0
    return-void
.end method
