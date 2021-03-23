.class public final enum Lcn/dr/lib/log/DRLogHelper$LogType;
.super Ljava/lang/Enum;
.source "DRLogHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/dr/lib/log/DRLogHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LogType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/dr/lib/log/DRLogHelper$LogType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/dr/lib/log/DRLogHelper$LogType;

.field public static final enum TYPE_ALL:Lcn/dr/lib/log/DRLogHelper$LogType;

.field public static final enum TYPE_LOG4J:Lcn/dr/lib/log/DRLogHelper$LogType;

.field public static final enum TYPE_NONE:Lcn/dr/lib/log/DRLogHelper$LogType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 128
    new-instance v0, Lcn/dr/lib/log/DRLogHelper$LogType;

    const/4 v1, 0x0

    const-string v2, "TYPE_NONE"

    invoke-direct {v0, v2, v1}, Lcn/dr/lib/log/DRLogHelper$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_NONE:Lcn/dr/lib/log/DRLogHelper$LogType;

    .line 129
    new-instance v0, Lcn/dr/lib/log/DRLogHelper$LogType;

    const/4 v2, 0x1

    const-string v3, "TYPE_LOG4J"

    invoke-direct {v0, v3, v2}, Lcn/dr/lib/log/DRLogHelper$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_LOG4J:Lcn/dr/lib/log/DRLogHelper$LogType;

    .line 130
    new-instance v0, Lcn/dr/lib/log/DRLogHelper$LogType;

    const/4 v3, 0x2

    const-string v4, "TYPE_ALL"

    invoke-direct {v0, v4, v3}, Lcn/dr/lib/log/DRLogHelper$LogType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_ALL:Lcn/dr/lib/log/DRLogHelper$LogType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/dr/lib/log/DRLogHelper$LogType;

    .line 127
    sget-object v4, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_NONE:Lcn/dr/lib/log/DRLogHelper$LogType;

    aput-object v4, v0, v1

    sget-object v1, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_LOG4J:Lcn/dr/lib/log/DRLogHelper$LogType;

    aput-object v1, v0, v2

    sget-object v1, Lcn/dr/lib/log/DRLogHelper$LogType;->TYPE_ALL:Lcn/dr/lib/log/DRLogHelper$LogType;

    aput-object v1, v0, v3

    sput-object v0, Lcn/dr/lib/log/DRLogHelper$LogType;->$VALUES:[Lcn/dr/lib/log/DRLogHelper$LogType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 127
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/dr/lib/log/DRLogHelper$LogType;
    .locals 1

    .line 127
    const-class v0, Lcn/dr/lib/log/DRLogHelper$LogType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/dr/lib/log/DRLogHelper$LogType;

    return-object p0
.end method

.method public static values()[Lcn/dr/lib/log/DRLogHelper$LogType;
    .locals 1

    .line 127
    sget-object v0, Lcn/dr/lib/log/DRLogHelper$LogType;->$VALUES:[Lcn/dr/lib/log/DRLogHelper$LogType;

    invoke-virtual {v0}, [Lcn/dr/lib/log/DRLogHelper$LogType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/dr/lib/log/DRLogHelper$LogType;

    return-object v0
.end method
