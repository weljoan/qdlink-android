.class Lorg/apache/log4j/CategoryKey;
.super Ljava/lang/Object;
.source "CategoryKey.java"


# static fields
.field static synthetic class$org$apache$log4j$CategoryKey:Ljava/lang/Class;


# instance fields
.field hashCache:I

.field name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/apache/log4j/CategoryKey;->name:Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lorg/apache/log4j/CategoryKey;->hashCache:I

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 47
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/NoClassDefFoundError;

    invoke-direct {v0}, Ljava/lang/NoClassDefFoundError;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 47
    sget-object v0, Lorg/apache/log4j/CategoryKey;->class$org$apache$log4j$CategoryKey:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string v0, "org.apache.log4j.CategoryKey"

    invoke-static {v0}, Lorg/apache/log4j/CategoryKey;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/CategoryKey;->class$org$apache$log4j$CategoryKey:Ljava/lang/Class;

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 48
    iget-object v0, p0, Lorg/apache/log4j/CategoryKey;->name:Ljava/lang/String;

    check-cast p1, Lorg/apache/log4j/CategoryKey;

    iget-object p1, p1, Lorg/apache/log4j/CategoryKey;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 38
    iget v0, p0, Lorg/apache/log4j/CategoryKey;->hashCache:I

    return v0
.end method
