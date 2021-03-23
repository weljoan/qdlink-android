.class public Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;
.super Ljava/lang/Object;
.source "MyXUtils.java"


# static fields
.field private static final DB_NAME:Ljava/lang/String; = "Q_DRIVE_DB"

.field private static final DB_VERSION:I = 0x1

.field private static db:Lorg/xutils/DbManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDbManager()Lorg/xutils/DbManager;
    .locals 1

    .line 25
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->db:Lorg/xutils/DbManager;

    return-object v0
.end method

.method private static initDB()V
    .locals 2

    .line 36
    new-instance v0, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v0}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v1, "Q_DRIVE_DB"

    .line 37
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 38
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    .line 39
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setAllowTransaction(Z)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils$2;

    invoke-direct {v1}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils$2;-><init>()V

    .line 40
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setTableCreateListener(Lorg/xutils/DbManager$TableCreateListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    new-instance v1, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils$1;

    invoke-direct {v1}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils$1;-><init>()V

    .line 46
    invoke-virtual {v0, v1}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lorg/xutils/x;->getDb(Lorg/xutils/DbManager$DaoConfig;)Lorg/xutils/DbManager;

    move-result-object v0

    sput-object v0, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->db:Lorg/xutils/DbManager;

    return-void
.end method

.method public static initViewInject(Landroid/view/View;)V
    .locals 1

    .line 60
    invoke-static {}, Lorg/xutils/x;->view()Lorg/xutils/ViewInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lorg/xutils/ViewInjector;->inject(Landroid/view/View;)V

    return-void
.end method

.method public static initViewInject(Ljava/lang/Object;Landroid/view/View;)V
    .locals 1

    .line 69
    invoke-static {}, Lorg/xutils/x;->view()Lorg/xutils/ViewInjector;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Lorg/xutils/ViewInjector;->inject(Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static initXUtils(Landroid/app/Application;)V
    .locals 0

    .line 29
    invoke-static {p0}, Lorg/xutils/x$Ext;->init(Landroid/app/Application;)V

    const/4 p0, 0x0

    .line 30
    invoke-static {p0}, Lorg/xutils/x$Ext;->setDebug(Z)V

    .line 31
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initDB()V

    return-void
.end method
