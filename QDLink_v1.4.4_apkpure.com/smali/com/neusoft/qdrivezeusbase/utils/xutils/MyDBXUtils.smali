.class public Lcom/neusoft/qdrivezeusbase/utils/xutils/MyDBXUtils;
.super Ljava/lang/Object;
.source "MyDBXUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dbAdd(Ljava/lang/Object;)Z
    .locals 1

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    :try_start_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->getDbManager()Lorg/xutils/DbManager;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 48
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static dbAdd(Ljava/util/ArrayList;)Z
    .locals 1

    .line 34
    :try_start_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->getDbManager()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/xutils/DbManager;->saveBindingId(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static dbDelete(Lorg/xutils/db/sqlite/WhereBuilder;Ljava/lang/Class;)Z
    .locals 1

    .line 91
    :try_start_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->getDbManager()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xutils/DbManager;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->getDbManager()Lorg/xutils/DbManager;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lorg/xutils/DbManager;->delete(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;)I
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 99
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public static dbFind(Lorg/xutils/db/Selector;)Ljava/util/List;
    .locals 2

    const/4 v0, 0x0

    .line 69
    :try_start_0
    invoke-virtual {p0}, Lorg/xutils/db/Selector;->findAll()Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    .line 74
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 71
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    return-object v0
.end method

.method public static dbUpdate(Lorg/xutils/db/sqlite/WhereBuilder;Ljava/lang/Class;Ljava/util/HashMap;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/db/sqlite/WhereBuilder;",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 116
    :try_start_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->getDbManager()Lorg/xutils/DbManager;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/xutils/DbManager;->findAll(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 118
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 122
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v1, v1, [Lorg/xutils/common/util/KeyValue;

    .line 124
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 125
    new-instance v5, Lorg/xutils/common/util/KeyValue;

    invoke-virtual {p2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-direct {v5, v4, v6}, Lorg/xutils/common/util/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    aput-object v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_1
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->getDbManager()Lorg/xutils/DbManager;

    move-result-object p2

    invoke-interface {p2, p1, p0, v1}, Lorg/xutils/DbManager;->update(Ljava/lang/Class;Lorg/xutils/db/sqlite/WhereBuilder;[Lorg/xutils/common/util/KeyValue;)I
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    return v0

    :catch_0
    move-exception p0

    .line 134
    invoke-virtual {p0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    return v0
.end method

.method public static getDbManager()Lorg/xutils/DbManager;
    .locals 1

    .line 140
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->getDbManager()Lorg/xutils/DbManager;

    move-result-object v0

    return-object v0
.end method
