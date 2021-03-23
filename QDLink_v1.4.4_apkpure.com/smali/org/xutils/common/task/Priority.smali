.class public final enum Lorg/xutils/common/task/Priority;
.super Ljava/lang/Enum;
.source "Priority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/xutils/common/task/Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/xutils/common/task/Priority;

.field public static final enum BG_LOW:Lorg/xutils/common/task/Priority;

.field public static final enum BG_NORMAL:Lorg/xutils/common/task/Priority;

.field public static final enum BG_TOP:Lorg/xutils/common/task/Priority;

.field public static final enum DEFAULT:Lorg/xutils/common/task/Priority;

.field public static final enum UI_LOW:Lorg/xutils/common/task/Priority;

.field public static final enum UI_NORMAL:Lorg/xutils/common/task/Priority;

.field public static final enum UI_TOP:Lorg/xutils/common/task/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 8
    new-instance v0, Lorg/xutils/common/task/Priority;

    const/4 v1, 0x0

    const-string v2, "UI_TOP"

    invoke-direct {v0, v2, v1}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/common/task/Priority;->UI_TOP:Lorg/xutils/common/task/Priority;

    new-instance v0, Lorg/xutils/common/task/Priority;

    const/4 v2, 0x1

    const-string v3, "UI_NORMAL"

    invoke-direct {v0, v3, v2}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/common/task/Priority;->UI_NORMAL:Lorg/xutils/common/task/Priority;

    new-instance v0, Lorg/xutils/common/task/Priority;

    const/4 v3, 0x2

    const-string v4, "UI_LOW"

    invoke-direct {v0, v4, v3}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/common/task/Priority;->UI_LOW:Lorg/xutils/common/task/Priority;

    new-instance v0, Lorg/xutils/common/task/Priority;

    const/4 v4, 0x3

    const-string v5, "DEFAULT"

    invoke-direct {v0, v5, v4}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    new-instance v0, Lorg/xutils/common/task/Priority;

    const/4 v5, 0x4

    const-string v6, "BG_TOP"

    invoke-direct {v0, v6, v5}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/common/task/Priority;->BG_TOP:Lorg/xutils/common/task/Priority;

    new-instance v0, Lorg/xutils/common/task/Priority;

    const/4 v6, 0x5

    const-string v7, "BG_NORMAL"

    invoke-direct {v0, v7, v6}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/common/task/Priority;->BG_NORMAL:Lorg/xutils/common/task/Priority;

    new-instance v0, Lorg/xutils/common/task/Priority;

    const/4 v7, 0x6

    const-string v8, "BG_LOW"

    invoke-direct {v0, v8, v7}, Lorg/xutils/common/task/Priority;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/xutils/common/task/Priority;->BG_LOW:Lorg/xutils/common/task/Priority;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/xutils/common/task/Priority;

    .line 7
    sget-object v8, Lorg/xutils/common/task/Priority;->UI_TOP:Lorg/xutils/common/task/Priority;

    aput-object v8, v0, v1

    sget-object v1, Lorg/xutils/common/task/Priority;->UI_NORMAL:Lorg/xutils/common/task/Priority;

    aput-object v1, v0, v2

    sget-object v1, Lorg/xutils/common/task/Priority;->UI_LOW:Lorg/xutils/common/task/Priority;

    aput-object v1, v0, v3

    sget-object v1, Lorg/xutils/common/task/Priority;->DEFAULT:Lorg/xutils/common/task/Priority;

    aput-object v1, v0, v4

    sget-object v1, Lorg/xutils/common/task/Priority;->BG_TOP:Lorg/xutils/common/task/Priority;

    aput-object v1, v0, v5

    sget-object v1, Lorg/xutils/common/task/Priority;->BG_NORMAL:Lorg/xutils/common/task/Priority;

    aput-object v1, v0, v6

    sget-object v1, Lorg/xutils/common/task/Priority;->BG_LOW:Lorg/xutils/common/task/Priority;

    aput-object v1, v0, v7

    sput-object v0, Lorg/xutils/common/task/Priority;->$VALUES:[Lorg/xutils/common/task/Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/xutils/common/task/Priority;
    .locals 1

    .line 7
    const-class v0, Lorg/xutils/common/task/Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/xutils/common/task/Priority;

    return-object p0
.end method

.method public static values()[Lorg/xutils/common/task/Priority;
    .locals 1

    .line 7
    sget-object v0, Lorg/xutils/common/task/Priority;->$VALUES:[Lorg/xutils/common/task/Priority;

    invoke-virtual {v0}, [Lorg/xutils/common/task/Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/xutils/common/task/Priority;

    return-object v0
.end method
