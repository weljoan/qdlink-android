.class public Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;
.super Ljava/lang/Object;
.source "GsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$GsonUtilInstance;
    }
.end annotation


# instance fields
.field private gson:Lcom/google/gson/Gson;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->gson:Lcom/google/gson/Gson;

    .line 34
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method synthetic constructor <init>(Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$1;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;
    .locals 1

    .line 30
    invoke-static {}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$GsonUtilInstance;->access$100()Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public GsonString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->gson:Lcom/google/gson/Gson;

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GsonToBean(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->gson:Lcom/google/gson/Gson;

    if-eqz v0, :cond_0

    .line 61
    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GsonToListMaps(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->gson:Lcom/google/gson/Gson;

    if-eqz v0, :cond_0

    .line 109
    new-instance v1, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$2;

    invoke-direct {v1, p0}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$2;-><init>(Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;)V

    .line 111
    invoke-virtual {v1}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$2;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 109
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public GsonToMaps(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->gson:Lcom/google/gson/Gson;

    if-eqz v0, :cond_0

    .line 125
    new-instance v1, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$3;

    invoke-direct {v1, p0}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$3;-><init>(Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;)V

    .line 126
    invoke-virtual {v1}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 125
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public gsonToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 75
    iget-object p2, p0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;->gson:Lcom/google/gson/Gson;

    if-eqz p2, :cond_0

    .line 76
    new-instance v0, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$1;

    invoke-direct {v0, p0}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$1;-><init>(Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil;)V

    .line 77
    invoke-virtual {v0}, Lcom/neusoft/sdk/wangyilibinter/http/GsonUtil$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 76
    invoke-virtual {p2, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public jsonToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 91
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 93
    new-instance v2, Lcom/google/gson/JsonParser;

    invoke-direct {v2}, Lcom/google/gson/JsonParser;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/gson/JsonElement;

    .line 95
    invoke-virtual {v0, v2, p2}, Lcom/google/gson/Gson;->fromJson(Lcom/google/gson/JsonElement;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method
