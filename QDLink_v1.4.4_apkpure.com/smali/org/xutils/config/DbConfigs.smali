.class public final enum Lorg/xutils/config/DbConfigs;
.super Ljava/lang/Enum;
.source "DbConfigs.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xutils/config/DbConfigs;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xutils/config/DbConfigs;

.field public static final enum COOKIE:Lorg/xutils/config/DbConfigs;

.field public static final enum HTTP:Lorg/xutils/config/DbConfigs;


# instance fields
.field private config:Lorg/xutils/DbManager$DaoConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 12
    new-instance v0, Lorg/xutils/config/DbConfigs;

    new-instance v1, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v1}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v2, "xUtils_http_cache.db"

    .line 13
    invoke-virtual {v1, v2}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    new-instance v3, Lorg/xutils/config/DbConfigs$2;

    invoke-direct {v3}, Lorg/xutils/config/DbConfigs$2;-><init>()V

    .line 15
    invoke-virtual {v1, v3}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    new-instance v3, Lorg/xutils/config/DbConfigs$1;

    invoke-direct {v3}, Lorg/xutils/config/DbConfigs$1;-><init>()V

    .line 21
    invoke-virtual {v1, v3}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    const/4 v3, 0x0

    const-string v4, "HTTP"

    invoke-direct {v0, v4, v3, v1}, Lorg/xutils/config/DbConfigs;-><init>(Ljava/lang/String;ILorg/xutils/DbManager$DaoConfig;)V

    sput-object v0, Lorg/xutils/config/DbConfigs;->HTTP:Lorg/xutils/config/DbConfigs;

    .line 32
    new-instance v0, Lorg/xutils/config/DbConfigs;

    new-instance v1, Lorg/xutils/DbManager$DaoConfig;

    invoke-direct {v1}, Lorg/xutils/DbManager$DaoConfig;-><init>()V

    const-string v4, "xUtils_http_cookie.db"

    .line 33
    invoke-virtual {v1, v4}, Lorg/xutils/DbManager$DaoConfig;->setDbName(Ljava/lang/String;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    .line 34
    invoke-virtual {v1, v2}, Lorg/xutils/DbManager$DaoConfig;->setDbVersion(I)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    new-instance v4, Lorg/xutils/config/DbConfigs$4;

    invoke-direct {v4}, Lorg/xutils/config/DbConfigs$4;-><init>()V

    .line 35
    invoke-virtual {v1, v4}, Lorg/xutils/DbManager$DaoConfig;->setDbOpenListener(Lorg/xutils/DbManager$DbOpenListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    new-instance v4, Lorg/xutils/config/DbConfigs$3;

    invoke-direct {v4}, Lorg/xutils/config/DbConfigs$3;-><init>()V

    .line 41
    invoke-virtual {v1, v4}, Lorg/xutils/DbManager$DaoConfig;->setDbUpgradeListener(Lorg/xutils/DbManager$DbUpgradeListener;)Lorg/xutils/DbManager$DaoConfig;

    move-result-object v1

    const-string v4, "COOKIE"

    invoke-direct {v0, v4, v2, v1}, Lorg/xutils/config/DbConfigs;-><init>(Ljava/lang/String;ILorg/xutils/DbManager$DaoConfig;)V

    sput-object v0, Lorg/xutils/config/DbConfigs;->COOKIE:Lorg/xutils/config/DbConfigs;

    const/4 v0, 0x2

    new-array v0, v0, [Lorg/xutils/config/DbConfigs;

    .line 11
    sget-object v1, Lorg/xutils/config/DbConfigs;->HTTP:Lorg/xutils/config/DbConfigs;

    aput-object v1, v0, v3

    sget-object v1, Lorg/xutils/config/DbConfigs;->COOKIE:Lorg/xutils/config/DbConfigs;

    aput-object v1, v0, v2

    sput-object v0, Lorg/xutils/config/DbConfigs;->$VALUES:[Lorg/xutils/config/DbConfigs;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILorg/xutils/DbManager$DaoConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager$DaoConfig;",
            ")V"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 55
    iput-object p3, p0, Lorg/xutils/config/DbConfigs;->config:Lorg/xutils/DbManager$DaoConfig;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/config/DbConfigs;
    .locals 1

    .line 11
    const-class v0, Lorg/xutils/config/DbConfigs;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xutils/config/DbConfigs;

    return-object p0
.end method

.method public static values()[Lorg/xutils/config/DbConfigs;
    .locals 1

    .line 11
    sget-object v0, Lorg/xutils/config/DbConfigs;->$VALUES:[Lorg/xutils/config/DbConfigs;

    invoke-virtual {v0}, [Lorg/xutils/config/DbConfigs;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/config/DbConfigs;

    return-object v0
.end method


# virtual methods
.method public getConfig()Lorg/xutils/DbManager$DaoConfig;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/xutils/config/DbConfigs;->config:Lorg/xutils/DbManager$DaoConfig;

    return-object v0
.end method
