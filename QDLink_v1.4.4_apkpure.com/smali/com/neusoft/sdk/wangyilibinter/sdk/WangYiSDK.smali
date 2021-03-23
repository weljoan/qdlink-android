.class public Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;
.super Ljava/lang/Object;
.source "WangYiSDK.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "wangyisdk"

.field private static volatile wangYiSDK:Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;


# instance fields
.field private wyPlayUrlCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;

.field private wyRankCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;

.field private wySearchCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;

.field private wySongDetailCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;

.field private wySongListCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wyRankCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wySongListCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wySongDetailCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wyPlayUrlCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wySearchCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;

    return-object p0
.end method


# virtual methods
.method public requestPlayUrl(Ljava/lang/String;I)V
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.qdrive.cc:8082/music/rank/play-url?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&br="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;

    move-result-object p2

    new-instance v0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;

    invoke-direct {v0, p0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$4;-><init>(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)V

    invoke-virtual {p2, p1, v0}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->get(Ljava/lang/String;Lokhttp3/Callback;)V

    return-void
.end method

.method public requestRankList()V
    .locals 3

    .line 83
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;

    move-result-object v0

    new-instance v1, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$1;

    invoke-direct {v1, p0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$1;-><init>(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)V

    const-string v2, "http://api.qdrive.cc:8082/music/rank/list"

    invoke-virtual {v0, v2, v1}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->get(Ljava/lang/String;Lokhttp3/Callback;)V

    return-void
.end method

.method public requestSearch(Ljava/lang/String;IIII)V
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.qdrive.cc:8082/music/rank/search?s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&offset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "&limit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    const-string v1, "s"

    .line 263
    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 264
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "type"

    invoke-virtual {v0, v1, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "offset"

    invoke-virtual {v0, p3, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 266
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "total"

    invoke-virtual {v0, p3, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 267
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "limit"

    invoke-virtual {v0, p2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    .line 269
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    new-instance p3, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$5;

    invoke-direct {p3, p0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$5;-><init>(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)V

    const-string p4, "http://api.qdrive.cc:8082/music/rank/search"

    invoke-virtual {p1, p4, p2, p3}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->post(Ljava/lang/String;Lokhttp3/RequestBody;Lokhttp3/Callback;)V

    return-void
.end method

.method public requestSongDetail(Ljava/lang/String;)V
    .locals 2

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.qdrive.cc:8082/music/rank/song-detail?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 166
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;

    move-result-object v0

    new-instance v1, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;

    invoke-direct {v1, p0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$3;-><init>(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)V

    invoke-virtual {v0, p1, v1}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->get(Ljava/lang/String;Lokhttp3/Callback;)V

    return-void
.end method

.method public requestSongList(Ljava/lang/String;)V
    .locals 2

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://api.qdrive.cc:8082/music/rank/song-list?id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->getInstance()Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;

    move-result-object v0

    new-instance v1, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$2;

    invoke-direct {v1, p0}, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK$2;-><init>(Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;)V

    invoke-virtual {v0, p1, v1}, Lcom/neusoft/sdk/wangyilibinter/http/MyHttpClient;->get(Ljava/lang/String;Lokhttp3/Callback;)V

    return-void
.end method

.method public setWyPlayUrlCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wyPlayUrlCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYPlayUrlCallBack;

    return-void
.end method

.method public setWyRankCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wyRankCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYRankCallBack;

    return-void
.end method

.method public setWySearchCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wySearchCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYSearchCallBack;

    return-void
.end method

.method public setWySongDetailCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wySongDetailCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongDetailCallBack;

    return-void
.end method

.method public setWySongListCallBack(Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/sdk/WangYiSDK;->wySongListCallBack:Lcom/neusoft/sdk/wangyilibinter/sdk/WYSongListCallBack;

    return-void
.end method
