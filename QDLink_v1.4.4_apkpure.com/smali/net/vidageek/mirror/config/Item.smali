.class public final enum Lnet/vidageek/mirror/config/Item;
.super Ljava/lang/Enum;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/vidageek/mirror/config/Item;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/vidageek/mirror/config/Item;

.field public static final enum REFLECTION_PROVIDER:Lnet/vidageek/mirror/config/Item;


# instance fields
.field private final key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 7
    new-instance v0, Lnet/vidageek/mirror/config/Item;

    const/4 v1, 0x0

    const-string v2, "REFLECTION_PROVIDER"

    const-string v3, "provider.class"

    invoke-direct {v0, v2, v1, v3}, Lnet/vidageek/mirror/config/Item;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/vidageek/mirror/config/Item;->REFLECTION_PROVIDER:Lnet/vidageek/mirror/config/Item;

    const/4 v0, 0x1

    new-array v0, v0, [Lnet/vidageek/mirror/config/Item;

    .line 6
    sget-object v2, Lnet/vidageek/mirror/config/Item;->REFLECTION_PROVIDER:Lnet/vidageek/mirror/config/Item;

    aput-object v2, v0, v1

    sput-object v0, Lnet/vidageek/mirror/config/Item;->$VALUES:[Lnet/vidageek/mirror/config/Item;

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

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput-object p3, p0, Lnet/vidageek/mirror/config/Item;->key:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/vidageek/mirror/config/Item;
    .locals 1

    .line 6
    const-class v0, Lnet/vidageek/mirror/config/Item;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/vidageek/mirror/config/Item;

    return-object p0
.end method

.method public static final values()[Lnet/vidageek/mirror/config/Item;
    .locals 1

    .line 6
    sget-object v0, Lnet/vidageek/mirror/config/Item;->$VALUES:[Lnet/vidageek/mirror/config/Item;

    invoke-virtual {v0}, [Lnet/vidageek/mirror/config/Item;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/vidageek/mirror/config/Item;

    return-object v0
.end method


# virtual methods
.method public getPropertyKey()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lnet/vidageek/mirror/config/Item;->key:Ljava/lang/String;

    return-object v0
.end method
