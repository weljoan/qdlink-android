.class Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;
.super Ljava/lang/Object;
.source "WangYiSDK.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->requestSongDetail(Ljava/lang/String;)V
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

    .line 166
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    const-string p1, "wangyisdk"

    const-string p2, "requestSongDetail call:onFailure"

    .line 169
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$200(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;

    move-result-object p1

    const/4 p2, -0x1

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;->responseSongDetailList(ILcom/neusoft/sdk/wangyilibinter/bean/song/Songs;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    .line 176
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object p2

    const-class v0, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;

    invoke-virtual {p2, p1, v0}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->GsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSongDetail onResponse:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wangyisdk"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestSongDetail onResponse:baseBean.getCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getCode()I

    move-result v2

    if-nez v2, :cond_2

    .line 183
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object v2

    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getData()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;

    invoke-virtual {v2, v3, v4}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->GsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;

    if-eqz v2, :cond_1

    .line 185
    invoke-virtual {v2}, Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;->getSongs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v1, :cond_0

    .line 186
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSongDetail onResponse:songBean.getSongs().size():"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;->getSongs()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$200(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;

    move-result-object p1

    invoke-virtual {p2}, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->getCode()I

    move-result p2

    invoke-virtual {v2}, Lcom/neusoft/sdk/wangyilibinter/bean/song/SongBean;->getSongs()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/sdk/wangyilibinter/bean/song/Songs;

    invoke-interface {p1, p2, v0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;->responseSongDetailList(ILcom/neusoft/sdk/wangyilibinter/bean/song/Songs;)V

    goto :goto_0

    .line 189
    :cond_0
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$200(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;->responseSongDetailList(ILcom/neusoft/sdk/wangyilibinter/bean/song/Songs;)V

    goto :goto_0

    .line 192
    :cond_1
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$200(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;->responseSongDetailList(ILcom/neusoft/sdk/wangyilibinter/bean/song/Songs;)V

    goto :goto_0

    .line 195
    :cond_2
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$200(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;->responseSongDetailList(ILcom/neusoft/sdk/wangyilibinter/bean/song/Songs;)V

    goto :goto_0

    .line 198
    :cond_3
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;->this$0:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;

    invoke-static {p2}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->access$200(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;

    move-result-object p2

    invoke-interface {p2, v1, p1}, Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;->responseSongDetailList(ILcom/neusoft/sdk/wangyilibinter/bean/song/Songs;)V

    const-string p1, "requestSongDetail onResponse:baseBean \u89e3\u6790\u6570\u636e\u5931\u8d25"

    .line 199
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
