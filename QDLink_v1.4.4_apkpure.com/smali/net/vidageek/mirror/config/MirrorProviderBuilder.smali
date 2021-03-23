.class public final Lnet/vidageek/mirror/config/MirrorProviderBuilder;
.super Ljava/lang/Object;
.source "MirrorProviderBuilder.java"


# instance fields
.field private final configurationFile:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/net/URL;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lnet/vidageek/mirror/config/MirrorProviderBuilder;->configurationFile:Ljava/net/URL;

    return-void
.end method

.method private processProperties(Ljava/net/URL;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/Map<",
            "Lnet/vidageek/mirror/config/Item;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "could not ready file "

    .line 48
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 50
    sget-object v2, Lnet/vidageek/mirror/config/Item;->REFLECTION_PROVIDER:Lnet/vidageek/mirror/config/Item;

    const-class v3, Lnet/vidageek/mirror/provider/java/PureJavaReflectionProvider;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :try_start_0
    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    .line 54
    new-instance v3, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 55
    invoke-static {}, Lnet/vidageek/mirror/config/Item;->values()[Lnet/vidageek/mirror/config/Item;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 56
    invoke-virtual {v6}, Lnet/vidageek/mirror/config/Item;->getPropertyKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 57
    invoke-virtual {v6}, Lnet/vidageek/mirror/config/Item;->getPropertyKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    .line 63
    new-instance v2, Lnet/vidageek/mirror/exception/MirrorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lnet/vidageek/mirror/exception/MirrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    .line 61
    new-instance v2, Lnet/vidageek/mirror/exception/MirrorException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Lnet/vidageek/mirror/exception/MirrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public createProvider()Lnet/vidageek/mirror/provider/ReflectionProvider;
    .locals 3

    .line 36
    iget-object v0, p0, Lnet/vidageek/mirror/config/MirrorProviderBuilder;->configurationFile:Ljava/net/URL;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lnet/vidageek/mirror/provider/java/PureJavaReflectionProvider;

    invoke-direct {v0}, Lnet/vidageek/mirror/provider/java/PureJavaReflectionProvider;-><init>()V

    return-object v0

    .line 40
    :cond_0
    invoke-direct {p0, v0}, Lnet/vidageek/mirror/config/MirrorProviderBuilder;->processProperties(Ljava/net/URL;)Ljava/util/Map;

    move-result-object v0

    .line 42
    new-instance v1, Lnet/vidageek/mirror/dsl/Mirror;

    new-instance v2, Lnet/vidageek/mirror/provider/java/PureJavaReflectionProvider;

    invoke-direct {v2}, Lnet/vidageek/mirror/provider/java/PureJavaReflectionProvider;-><init>()V

    invoke-direct {v1, v2}, Lnet/vidageek/mirror/dsl/Mirror;-><init>(Lnet/vidageek/mirror/provider/ReflectionProvider;)V

    .line 44
    sget-object v2, Lnet/vidageek/mirror/config/Item;->REFLECTION_PROVIDER:Lnet/vidageek/mirror/config/Item;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Lnet/vidageek/mirror/dsl/Mirror;->on(Ljava/lang/String;)Lnet/vidageek/mirror/dsl/ClassController;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/dsl/ClassController;->invoke()Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/invoke/dsl/InvocationHandler;->constructor()Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler;

    move-result-object v0

    invoke-interface {v0}, Lnet/vidageek/mirror/invoke/dsl/ConstructorHandler;->withoutArgs()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/vidageek/mirror/provider/ReflectionProvider;

    return-object v0
.end method
