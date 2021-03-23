.class Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;
.super Ljava/lang/Object;
.source "WangYiSDK.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestPlayUrl(Ljava/lang/String;I)V
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

    .line 209
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "wangyisdk"

    const-string p2, "requestPlayUrl call:onFailure"

    .line 212
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$300(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;->responsePlayUrl(ILcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 219
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object p2

    const-class v0, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;

    invoke-virtual {p2, p1, v0}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->GsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestPlayUrl onResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wangyisdk"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 223
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getCode()I

    move-result v1

    if-nez v1, :cond_2

    .line 224
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object v1

    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getData()Ljava/lang/String;

    move-result-object p2

    const-class v2, Lcom/neusoft/sdk/wangyilibinter/bean/PlayUrlBean;

    invoke-virtual {v1, p2, v2}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->GsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/sdk/wangyilibinter/bean/PlayUrlBean;

    if-eqz p2, :cond_1

    .line 226
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/PlayUrlBean;->getData()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 227
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$300(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;

    move-result-object p1

    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/PlayUrlBean;->getData()Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;

    invoke-interface {p1, v0, p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;->responsePlayUrl(ILcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;)V

    goto :goto_0

    .line 229
    :cond_0
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$300(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;->responsePlayUrl(ILcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;)V

    goto :goto_0

    .line 232
    :cond_1
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$300(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;->responsePlayUrl(ILcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;)V

    goto :goto_0

    .line 235
    :cond_2
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$300(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;->responsePlayUrl(ILcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;)V

    goto :goto_0

    .line 238
    :cond_3
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$300(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;->responsePlayUrl(ILcom/neusoft/sdk/wangyilibinter/bean/PlayUrl;)V

    :goto_0
    return-void
.end method
