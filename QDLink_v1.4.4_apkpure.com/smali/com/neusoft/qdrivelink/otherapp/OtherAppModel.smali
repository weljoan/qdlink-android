.class public Lcom/neusoft/qdrivelink/otherapp/OtherAppModel;
.super Ljava/lang/Object;
.source "OtherAppModel.java"


# static fields
.field public static final KEY_ALL_APP:Ljava/lang/String; = "KEY_ALL_APP"

.field public static final KEY_SELECT_APP:Ljava/lang/String; = "KEY_SELECT_APP"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteAppPackage(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V
    .locals 3

    .line 106
    invoke-static {}, Lorg/xutils/db/sqlite/WhereBuilder;->b()Lorg/xutils/db/sqlite/WhereBuilder;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "packageName"

    const-string v2, "="

    invoke-virtual {v0, v1, v2, p0}, Lorg/xutils/db/sqlite/WhereBuilder;->and(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lorg/xutils/db/sqlite/WhereBuilder;

    .line 108
    const-class p0, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-static {v0, p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyDBXUtils;->dbDelete(Lorg/xutils/db/sqlite/WhereBuilder;Ljava/lang/Class;)Z

    return-void
.end method

.method public static getAppList()Ljava/util/HashMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;>;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/neusoft/qdrivelink/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v3

    .line 33
    invoke-static {}, Lcom/neusoft/qdrivelink/otherapp/OtherAppModel;->getAppPackage()Ljava/util/List;

    move-result-object v5

    .line 34
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v4, v6, :cond_3

    .line 35
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/PackageInfo;

    .line 36
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v8, v7

    if-nez v8, :cond_2

    .line 37
    iget-object v8, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v9, "com.neusoft.qdrivelink"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    .line 40
    :cond_0
    new-instance v8, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-direct {v8}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;-><init>()V

    .line 41
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcom/neusoft/qdrivelink/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setAppName(Ljava/lang/String;)V

    .line 42
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setPackageName(Ljava/lang/String;)V

    .line 43
    iget-object v9, v6, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setVersionName(Ljava/lang/String;)V

    .line 44
    iget v9, v6, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v8, v9}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setVersionCode(I)V

    .line 45
    iget-object v6, v6, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {}, Lcom/neusoft/qdrivelink/MyApplication;->getMyApplication()Lcom/neusoft/qdrivelink/MyApplication;

    move-result-object v9

    invoke-virtual {v9}, Lcom/neusoft/qdrivelink/MyApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setAppIcon(Landroid/graphics/drawable/Drawable;)V

    if-eqz v5, :cond_1

    .line 48
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_1

    .line 49
    invoke-static {v8, v5}, Lcom/neusoft/qdrivelink/otherapp/OtherAppModel;->isAppPackageSaved(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;Ljava/util/List;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 50
    invoke-virtual {v8, v7}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setSelected(Z)V

    .line 51
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 57
    :cond_3
    new-instance v3, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-direct {v3}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;-><init>()V

    .line 58
    invoke-virtual {v3, v7}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->setAppType(I)V

    .line 59
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "KEY_ALL_APP"

    .line 61
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KEY_SELECT_APP"

    .line 62
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public static getAppPackage()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;"
        }
    .end annotation

    .line 88
    :try_start_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyDBXUtils;->getDbManager()Lorg/xutils/DbManager;

    move-result-object v0

    const-class v1, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    invoke-interface {v0, v1}, Lorg/xutils/DbManager;->selector(Ljava/lang/Class;)Lorg/xutils/db/Selector;

    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyDBXUtils;->dbFind(Lorg/xutils/db/Selector;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Lorg/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 92
    invoke-virtual {v0}, Lorg/xutils/ex/DbException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isAppPackageSaved(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;)Z"
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    .line 75
    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 76
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static saveAppPackage(Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;)V
    .locals 0

    .line 101
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyDBXUtils;->dbAdd(Ljava/lang/Object;)Z

    return-void
.end method

.method public static saveAppPackage(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyDBXUtils;->dbAdd(Ljava/util/ArrayList;)Z

    return-void
.end method
