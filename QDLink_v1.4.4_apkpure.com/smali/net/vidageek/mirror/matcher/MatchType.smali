.class public final enum Lnet/vidageek/mirror/matcher/MatchType;
.super Ljava/lang/Enum;
.source "MatchType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/vidageek/mirror/matcher/MatchType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/vidageek/mirror/matcher/MatchType;

.field public static final enum DONT_MATCH:Lnet/vidageek/mirror/matcher/MatchType;

.field public static final enum MATCH:Lnet/vidageek/mirror/matcher/MatchType;

.field public static final enum PERFECT:Lnet/vidageek/mirror/matcher/MatchType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 13
    new-instance v0, Lnet/vidageek/mirror/matcher/MatchType;

    const/4 v1, 0x0

    const-string v2, "PERFECT"

    invoke-direct {v0, v2, v1}, Lnet/vidageek/mirror/matcher/MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/vidageek/mirror/matcher/MatchType;->PERFECT:Lnet/vidageek/mirror/matcher/MatchType;

    new-instance v0, Lnet/vidageek/mirror/matcher/MatchType;

    const/4 v2, 0x1

    const-string v3, "MATCH"

    invoke-direct {v0, v3, v2}, Lnet/vidageek/mirror/matcher/MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/vidageek/mirror/matcher/MatchType;->MATCH:Lnet/vidageek/mirror/matcher/MatchType;

    new-instance v0, Lnet/vidageek/mirror/matcher/MatchType;

    const/4 v3, 0x2

    const-string v4, "DONT_MATCH"

    invoke-direct {v0, v4, v3}, Lnet/vidageek/mirror/matcher/MatchType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/vidageek/mirror/matcher/MatchType;->DONT_MATCH:Lnet/vidageek/mirror/matcher/MatchType;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/vidageek/mirror/matcher/MatchType;

    .line 11
    sget-object v4, Lnet/vidageek/mirror/matcher/MatchType;->PERFECT:Lnet/vidageek/mirror/matcher/MatchType;

    aput-object v4, v0, v1

    sget-object v1, Lnet/vidageek/mirror/matcher/MatchType;->MATCH:Lnet/vidageek/mirror/matcher/MatchType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/vidageek/mirror/matcher/MatchType;->DONT_MATCH:Lnet/vidageek/mirror/matcher/MatchType;

    aput-object v1, v0, v3

    sput-object v0, Lnet/vidageek/mirror/matcher/MatchType;->$VALUES:[Lnet/vidageek/mirror/matcher/MatchType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/vidageek/mirror/matcher/MatchType;
    .locals 1

    .line 11
    const-class v0, Lnet/vidageek/mirror/matcher/MatchType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/vidageek/mirror/matcher/MatchType;

    return-object p0
.end method

.method public static final values()[Lnet/vidageek/mirror/matcher/MatchType;
    .locals 1

    .line 11
    sget-object v0, Lnet/vidageek/mirror/matcher/MatchType;->$VALUES:[Lnet/vidageek/mirror/matcher/MatchType;

    invoke-virtual {v0}, [Lnet/vidageek/mirror/matcher/MatchType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/vidageek/mirror/matcher/MatchType;

    return-object v0
.end method
