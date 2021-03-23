.class public final Lnet/vidageek/mirror/matcher/ClassArrayMatcher;
.super Ljava/lang/Object;
.source "ClassArrayMatcher.java"


# static fields
.field private static primitiveToWrapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final baseClasses:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    .line 23
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->baseClasses:[Ljava/lang/Class;

    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument baseClasses cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private areClassesAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 84
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1

    .line 91
    :cond_1
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method private areClassesEqual(Ljava/lang/Class;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 98
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 101
    :cond_1
    sget-object v0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->primitiveToWrapper:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private isMatch([Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 63
    :goto_0
    iget-object v2, p0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->baseClasses:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 64
    aget-object v3, p1, v1

    aget-object v2, v2, v1

    invoke-direct {p0, v3, v2}, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->areClassesAssignable(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isPerfectMatch([Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    :goto_0
    iget-object v2, p0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->baseClasses:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 75
    aget-object v2, v2, v1

    aget-object v3, p1, v1

    invoke-direct {p0, v2, v3}, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->areClassesEqual(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public varargs match([Ljava/lang/Class;)Lnet/vidageek/mirror/matcher/MatchType;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/vidageek/mirror/matcher/MatchType;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 45
    iget-object v0, p0, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->baseClasses:[Ljava/lang/Class;

    array-length v0, v0

    array-length v1, p1

    if-eq v0, v1, :cond_0

    .line 46
    sget-object p1, Lnet/vidageek/mirror/matcher/MatchType;->DONT_MATCH:Lnet/vidageek/mirror/matcher/MatchType;

    return-object p1

    .line 49
    :cond_0
    invoke-direct {p0, p1}, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->isPerfectMatch([Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50
    sget-object p1, Lnet/vidageek/mirror/matcher/MatchType;->PERFECT:Lnet/vidageek/mirror/matcher/MatchType;

    return-object p1

    .line 53
    :cond_1
    invoke-direct {p0, p1}, Lnet/vidageek/mirror/matcher/ClassArrayMatcher;->isMatch([Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 54
    sget-object p1, Lnet/vidageek/mirror/matcher/MatchType;->MATCH:Lnet/vidageek/mirror/matcher/MatchType;

    return-object p1

    .line 57
    :cond_2
    sget-object p1, Lnet/vidageek/mirror/matcher/MatchType;->DONT_MATCH:Lnet/vidageek/mirror/matcher/MatchType;

    return-object p1

    .line 42
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "argument classes cannot be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
