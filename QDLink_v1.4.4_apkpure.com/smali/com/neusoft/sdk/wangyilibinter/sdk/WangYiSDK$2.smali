.class Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$2;
.super Ljava/lang/Object;
.source "WangYiSDK.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestSongList(Ljava/lang/String;)V
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

    .line 128
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$2;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "wangyisdk"

    const-string p2, "requestSongList call:onFailure"

    .line 131
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$2;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$100(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;->responseSongList(ILjava/util/List;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 137
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 138
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object p2

    const-class v0, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;

    invoke-virtual {p2, p1, v0}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->GsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;

    const-string p2, "wangyisdk"

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSongList onResponse:baseBean.getCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getCode()I

    move-result v2

    if-nez v2, :cond_1

    .line 143
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object v2

    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getData()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/neusoft/sdk/wangyilibinter/bean/SongListBean;

    invoke-virtual {v2, v3, v4}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->jsonToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSongList onResponse:songListBeanList.size():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$2;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$100(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;

    move-result-object p2

    invoke-virtual {p1}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getCode()I

    move-result p1

    invoke-interface {p2, p1, v2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;->responseSongList(ILjava/util/List;)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$2;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$100(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;->responseSongList(ILjava/util/List;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$2;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$100(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;->responseSongList(ILjava/util/List;)V

    goto :goto_0

    .line 154
    :cond_2
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$2;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$100(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;

    move-result-object p1

    invoke-interface {p1, v1, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;->responseSongList(ILjava/util/List;)V

    const-string p1, "requestSongList onResponse:baseBean \u89e3\u6790\u6570\u636e\u5931\u8d25"

    .line 155
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
