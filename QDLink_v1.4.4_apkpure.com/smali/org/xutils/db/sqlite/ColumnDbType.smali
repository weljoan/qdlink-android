.class public final enum Lorg/xutils/db/sqlite/ColumnDbType;
.super Ljava/lang/Enum;
.source "ColumnDbType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xutils/db/sqlite/ColumnDbType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xutils/db/sqlite/ColumnDbType;

.field public static final enum BLOB:Lorg/xutils/db/sqlite/ColumnDbType;

.field public static final enum INTEGER:Lorg/xutils/db/sqlite/ColumnDbType;

.field public static final enum REAL:Lorg/xutils/db/sqlite/ColumnDbType;

.field public static final enum TEXT:Lorg/xutils/db/sqlite/ColumnDbType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 8
    new-instance v0, Lorg/xutils/db/sqlite/ColumnDbType;

    const/4 v1, 0x0

    const-string v2, "INTEGER"

    invoke-direct {v0, v2, v1, v2}, Lorg/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->INTEGER:Lorg/xutils/db/sqlite/ColumnDbType;

    new-instance v0, Lorg/xutils/db/sqlite/ColumnDbType;

    const/4 v2, 0x1

    const-string v3, "REAL"

    invoke-direct {v0, v3, v2, v3}, Lorg/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->REAL:Lorg/xutils/db/sqlite/ColumnDbType;

    new-instance v0, Lorg/xutils/db/sqlite/ColumnDbType;

    const/4 v3, 0x2

    const-string v4, "TEXT"

    invoke-direct {v0, v4, v3, v4}, Lorg/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->TEXT:Lorg/xutils/db/sqlite/ColumnDbType;

    new-instance v0, Lorg/xutils/db/sqlite/ColumnDbType;

    const/4 v4, 0x3

    const-string v5, "BLOB"

    invoke-direct {v0, v5, v4, v5}, Lorg/xutils/db/sqlite/ColumnDbType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->BLOB:Lorg/xutils/db/sqlite/ColumnDbType;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/xutils/db/sqlite/ColumnDbType;

    .line 6
    sget-object v5, Lorg/xutils/db/sqlite/ColumnDbType;->INTEGER:Lorg/xutils/db/sqlite/ColumnDbType;

    aput-object v5, v0, v1

    sget-object v1, Lorg/xutils/db/sqlite/ColumnDbType;->REAL:Lorg/xutils/db/sqlite/ColumnDbType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/xutils/db/sqlite/ColumnDbType;->TEXT:Lorg/xutils/db/sqlite/ColumnDbType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/xutils/db/sqlite/ColumnDbType;->BLOB:Lorg/xutils/db/sqlite/ColumnDbType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->$VALUES:[Lorg/xutils/db/sqlite/ColumnDbType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lorg/xutils/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .line 6
    const-class v0, Lorg/xutils/db/sqlite/ColumnDbType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xutils/db/sqlite/ColumnDbType;

    return-object p0
.end method

.method public static values()[Lorg/xutils/db/sqlite/ColumnDbType;
    .locals 1

    .line 6
    sget-object v0, Lorg/xutils/db/sqlite/ColumnDbType;->$VALUES:[Lorg/xutils/db/sqlite/ColumnDbType;

    invoke-virtual {v0}, [Lorg/xutils/db/sqlite/ColumnDbType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/db/sqlite/ColumnDbType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lorg/xutils/db/sqlite/ColumnDbType;->value:Ljava/lang/String;

    return-object v0
.end method
