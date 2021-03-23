.class Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$5;
.super Ljava/lang/Object;
.source "WangYiSDK.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestSearch(Ljava/lang/String;IIII)V
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

    .line 269
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$5;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "wangyisdk"

    const-string p2, "requestSearch call:onFailure"

    .line 272
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$5;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$400(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;->responseSearchSong(ILcom/neusoft/sdk/wangyilibinter/bean/Result;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 278
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object p2

    const-class v0, Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;

    invoke-virtual {p2, p1, v0}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->GsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_2

    .line 282
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestSearch onResponse: searchBean.getCode;"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wangyisdk"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;->getCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    .line 284
    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;->getResult()Lcom/neusoft/sdk/wangyilibinter/bean/Result;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 286
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$5;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$400(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;

    move-result-object p2

    invoke-interface {p2, v2, p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;->responseSearchSong(ILcom/neusoft/sdk/wangyilibinter/bean/Result;)V

    goto :goto_0

    .line 288
    :cond_0
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$5;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$400(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;->responseSearchSong(ILcom/neusoft/sdk/wangyilibinter/bean/Result;)V

    goto :goto_0

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$5;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$400(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;->responseSearchSong(ILcom/neusoft/sdk/wangyilibinter/bean/Result;)V

    goto :goto_0

    .line 294
    :cond_2
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$5;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$400(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;

    move-result-object p1

    invoke-interface {p1, v0, p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;->responseSearchSong(ILcom/neusoft/sdk/wangyilibinter/bean/Result;)V

    :goto_0
    return-void
.end method
