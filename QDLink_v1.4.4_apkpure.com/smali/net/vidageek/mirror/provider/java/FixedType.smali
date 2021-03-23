.class final enum Lnet/vidageek/mirror/provider/java/FixedType;
.super Ljava/lang/Enum;
.source "FixedType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/vidageek/mirror/provider/java/FixedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/vidageek/mirror/provider/java/FixedType;

.field public static final enum BOOLEAN:Lnet/vidageek/mirror/provider/java/FixedType;

.field public static final enum BYTE:Lnet/vidageek/mirror/provider/java/FixedType;

.field public static final enum CHAR:Lnet/vidageek/mirror/provider/java/FixedType;

.field public static final enum DOUBLE:Lnet/vidageek/mirror/provider/java/FixedType;

.field public static final enum FLOAT:Lnet/vidageek/mirror/provider/java/FixedType;

.field public static final enum INT:Lnet/vidageek/mirror/provider/java/FixedType;

.field public static final enum LONG:Lnet/vidageek/mirror/provider/java/FixedType;

.field public static final enum SHORT:Lnet/vidageek/mirror/provider/java/FixedType;

.field public static final enum VOID:Lnet/vidageek/mirror/provider/java/FixedType;


# instance fields
.field private final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 5
    new-instance v0, Lnet/vidageek/mirror/provider/java/FixedType;

    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    const-string v3, "VOID"

    invoke-direct {v0, v3, v2, v1}, Lnet/vidageek/mirror/provider/java/FixedType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->VOID:Lnet/vidageek/mirror/provider/java/FixedType;

    .line 7
    new-instance v0, Lnet/vidageek/mirror/provider/java/FixedType;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    const-string v4, "BOOLEAN"

    invoke-direct {v0, v4, v3, v1}, Lnet/vidageek/mirror/provider/java/FixedType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->BOOLEAN:Lnet/vidageek/mirror/provider/java/FixedType;

    .line 9
    new-instance v0, Lnet/vidageek/mirror/provider/java/FixedType;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x2

    const-string v5, "BYTE"

    invoke-direct {v0, v5, v4, v1}, Lnet/vidageek/mirror/provider/java/FixedType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->BYTE:Lnet/vidageek/mirror/provider/java/FixedType;

    .line 11
    new-instance v0, Lnet/vidageek/mirror/provider/java/FixedType;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x3

    const-string v6, "SHORT"

    invoke-direct {v0, v6, v5, v1}, Lnet/vidageek/mirror/provider/java/FixedType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->SHORT:Lnet/vidageek/mirror/provider/java/FixedType;

    .line 13
    new-instance v0, Lnet/vidageek/mirror/provider/java/FixedType;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x4

    const-string v7, "CHAR"

    invoke-direct {v0, v7, v6, v1}, Lnet/vidageek/mirror/provider/java/FixedType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->CHAR:Lnet/vidageek/mirror/provider/java/FixedType;

    .line 15
    new-instance v0, Lnet/vidageek/mirror/provider/java/FixedType;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x5

    const-string v8, "INT"

    invoke-direct {v0, v8, v7, v1}, Lnet/vidageek/mirror/provider/java/FixedType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->INT:Lnet/vidageek/mirror/provider/java/FixedType;

    .line 17
    new-instance v0, Lnet/vidageek/mirror/provider/java/FixedType;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v8, 0x6

    const-string v9, "LONG"

    invoke-direct {v0, v9, v8, v1}, Lnet/vidageek/mirror/provider/java/FixedType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->LONG:Lnet/vidageek/mirror/provider/java/FixedType;

    .line 19
    new-instance v0, Lnet/vidageek/mirror/provider/java/FixedType;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v9, 0x7

    const-string v10, "FLOAT"

    invoke-direct {v0, v10, v9, v1}, Lnet/vidageek/mirror/provider/java/FixedType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->FLOAT:Lnet/vidageek/mirror/provider/java/FixedType;

    .line 21
    new-instance v0, Lnet/vidageek/mirror/provider/java/FixedType;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/16 v10, 0x8

    const-string v11, "DOUBLE"

    invoke-direct {v0, v11, v10, v1}, Lnet/vidageek/mirror/provider/java/FixedType;-><init>(Ljava/lang/String;ILjava/lang/Class;)V

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->DOUBLE:Lnet/vidageek/mirror/provider/java/FixedType;

    const/16 v0, 0x9

    new-array v0, v0, [Lnet/vidageek/mirror/provider/java/FixedType;

    .line 3
    sget-object v1, Lnet/vidageek/mirror/provider/java/FixedType;->VOID:Lnet/vidageek/mirror/provider/java/FixedType;

    aput-object v1, v0, v2

    sget-object v1, Lnet/vidageek/mirror/provider/java/FixedType;->BOOLEAN:Lnet/vidageek/mirror/provider/java/FixedType;

    aput-object v1, v0, v3

    sget-object v1, Lnet/vidageek/mirror/provider/java/FixedType;->BYTE:Lnet/vidageek/mirror/provider/java/FixedType;

    aput-object v1, v0, v4

    sget-object v1, Lnet/vidageek/mirror/provider/java/FixedType;->SHORT:Lnet/vidageek/mirror/provider/java/FixedType;

    aput-object v1, v0, v5

    sget-object v1, Lnet/vidageek/mirror/provider/java/FixedType;->CHAR:Lnet/vidageek/mirror/provider/java/FixedType;

    aput-object v1, v0, v6

    sget-object v1, Lnet/vidageek/mirror/provider/java/FixedType;->INT:Lnet/vidageek/mirror/provider/java/FixedType;

    aput-object v1, v0, v7

    sget-object v1, Lnet/vidageek/mirror/provider/java/FixedType;->LONG:Lnet/vidageek/mirror/provider/java/FixedType;

    aput-object v1, v0, v8

    sget-object v1, Lnet/vidageek/mirror/provider/java/FixedType;->FLOAT:Lnet/vidageek/mirror/provider/java/FixedType;

    aput-object v1, v0, v9

    sget-object v1, Lnet/vidageek/mirror/provider/java/FixedType;->DOUBLE:Lnet/vidageek/mirror/provider/java/FixedType;

    aput-object v1, v0, v10

    sput-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->$VALUES:[Lnet/vidageek/mirror/provider/java/FixedType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lnet/vidageek/mirror/provider/java/FixedType;->clazz:Ljava/lang/Class;

    return-void
.end method

.method public static fromValue(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 30
    invoke-static {}, Lnet/vidageek/mirror/provider/java/FixedType;->values()[Lnet/vidageek/mirror/provider/java/FixedType;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 31
    iget-object v4, v3, Lnet/vidageek/mirror/provider/java/FixedType;->clazz:Ljava/lang/Class;

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 32
    iget-object p0, v3, Lnet/vidageek/mirror/provider/java/FixedType;->clazz:Ljava/lang/Class;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/vidageek/mirror/provider/java/FixedType;
    .locals 1

    .line 3
    const-class v0, Lnet/vidageek/mirror/provider/java/FixedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lnet/vidageek/mirror/provider/java/FixedType;

    return-object p0
.end method

.method public static final values()[Lnet/vidageek/mirror/provider/java/FixedType;
    .locals 1

    .line 3
    sget-object v0, Lnet/vidageek/mirror/provider/java/FixedType;->$VALUES:[Lnet/vidageek/mirror/provider/java/FixedType;

    invoke-virtual {v0}, [Lnet/vidageek/mirror/provider/java/FixedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/vidageek/mirror/provider/java/FixedType;

    return-object v0
.end method
