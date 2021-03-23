.class public Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
.super Ljava/lang/Object;
.source "PropertyValuesHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final g:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

.field private static final h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

.field private static i:[Ljava/lang/Class;

.field private static j:[Ljava/lang/Class;

.field private static k:[Ljava/lang/Class;

.field private static final l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final m:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/reflect/Method;

.field b:Ljava/lang/Class;

.field c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

.field final d:[Ljava/lang/Object;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/reflect/Method;

.field protected mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

.field private n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private o:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

.field private p:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 80
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntEvaluator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntEvaluator;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->g:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    .line 81
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatEvaluator;

    invoke-direct {v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatEvaluator;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/Class;

    .line 90
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Float;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Double;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Integer;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sput-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->i:[Ljava/lang/Class;

    new-array v1, v0, [Ljava/lang/Class;

    .line 92
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v3

    const-class v2, Ljava/lang/Integer;

    aput-object v2, v1, v4

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v6

    const-class v2, Ljava/lang/Float;

    aput-object v2, v1, v7

    const-class v2, Ljava/lang/Double;

    aput-object v2, v1, v8

    sput-object v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->j:[Ljava/lang/Class;

    new-array v0, v0, [Ljava/lang/Class;

    .line 94
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    aput-object v1, v0, v4

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v5

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v1, v0, v6

    const-class v1, Ljava/lang/Float;

    aput-object v1, v0, v7

    const-class v1, Ljava/lang/Integer;

    aput-object v1, v0, v8

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->k:[Ljava/lang/Class;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->l:Ljava/util/HashMap;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->m:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    .line 65
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 110
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->d:[Ljava/lang/Object;

    .line 140
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    if-eqz p1, :cond_0

    .line 142
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    .line 65
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    .line 76
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    .line 107
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 110
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->d:[Ljava/lang/Object;

    .line 132
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;B)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_1

    .line 744
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 748
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    const/4 v1, 0x1

    .line 749
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 750
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 8

    .line 382
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 1744
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 1748
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    .line 1749
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1750
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    const-string v0, "PropertyValuesHolder"

    const/4 v3, 0x0

    if-nez p3, :cond_2

    .line 386
    :try_start_0
    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p3

    .line 392
    :try_start_1
    invoke-virtual {p1, p2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 393
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    move-object p1, v3

    goto/16 :goto_3

    :catch_1
    move-object p1, v3

    .line 395
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Couldn\'t find no-arg method for property "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_2
    new-array p3, v2, [Ljava/lang/Class;

    .line 402
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    const-class v5, Ljava/lang/Float;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 403
    sget-object v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->i:[Ljava/lang/Class;

    goto :goto_1

    .line 404
    :cond_3
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 405
    sget-object v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->j:[Ljava/lang/Class;

    goto :goto_1

    .line 406
    :cond_4
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    const-class v5, Ljava/lang/Double;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 407
    sget-object v4, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->k:[Ljava/lang/Class;

    goto :goto_1

    :cond_5
    new-array v4, v2, [Ljava/lang/Class;

    .line 410
    iget-object v5, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    aput-object v5, v4, v1

    .line 412
    :goto_1
    array-length v5, v4

    move-object v6, v3

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v5, :cond_6

    aget-object v7, v4, v3

    aput-object v7, p3, v1

    .line 415
    :try_start_2
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 417
    iput-object v7, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v6

    .line 424
    :catch_2
    :try_start_3
    invoke-virtual {p1, p2, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 425
    invoke-virtual {v6, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 427
    iput-object v7, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v6

    :catch_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 435
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Couldn\'t find setter/getter for property "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with value type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object p1, v6

    :goto_3
    return-object p1
.end method

.method private a(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Class;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 462
    :try_start_0
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 463
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 465
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 468
    invoke-direct {p0, p1, p3, p4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-nez v0, :cond_1

    .line 470
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 471
    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_1
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    :cond_2
    iget-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    return-object v1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->n:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw p1
.end method

.method private a(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)V
    .locals 3

    const-string v0, "PropertyValuesHolder"

    .line 551
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    if-eqz v1, :cond_0

    .line 552
    invoke-virtual {v1, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->setValue(Ljava/lang/Object;)V

    .line 555
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 556
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 557
    invoke-direct {p0, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b(Ljava/lang/Class;)V

    .line 559
    :cond_1
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 563
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_1
    move-exception p1

    .line 561
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private b(Ljava/lang/Class;)V
    .locals 3

    .line 493
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->m:Ljava/util/HashMap;

    const-string v1, "get"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static varargs ofFloat(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property<",
            "*",
            "Ljava/lang/Float;",
            ">;[F)",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 187
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[F)V

    return-object v0
.end method

.method public static varargs ofFloat(Ljava/lang/String;[F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 1

    .line 176
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;[F)V

    return-object v0
.end method

.method public static varargs ofInt(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property<",
            "*",
            "Ljava/lang/Integer;",
            ">;[I)",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 165
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[I)V

    return-object v0
.end method

.method public static varargs ofInt(Ljava/lang/String;[I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 1

    .line 154
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    invoke-direct {v0, p0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;[I)V

    return-object v0
.end method

.method public static varargs ofKeyframe(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 2

    .line 281
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->ofKeyframe([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    move-result-object v0

    .line 282
    instance-of v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    if-eqz v1, :cond_0

    .line 283
    new-instance p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    invoke-direct {p1, p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;)V

    return-object p1

    .line 284
    :cond_0
    instance-of v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    if-eqz v1, :cond_1

    .line 285
    new-instance p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    invoke-direct {p1, p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;)V

    return-object p1

    .line 288
    :cond_1
    new-instance v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V

    .line 289
    iput-object v0, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    const/4 p0, 0x0

    .line 290
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    return-object v1
.end method

.method public static varargs ofKeyframe(Ljava/lang/String;[Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 2

    .line 250
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->ofKeyframe([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    move-result-object v0

    .line 251
    instance-of v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    if-eqz v1, :cond_0

    .line 252
    new-instance p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;

    invoke-direct {p1, p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$IntPropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/IntKeyframeSet;)V

    return-object p1

    .line 253
    :cond_0
    instance-of v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    if-eqz v1, :cond_1

    .line 254
    new-instance p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;

    invoke-direct {p1, p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder$FloatPropertyValuesHolder;-><init>(Ljava/lang/String;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/FloatKeyframeSet;)V

    return-object p1

    .line 257
    :cond_1
    new-instance v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    invoke-direct {v1, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 258
    iput-object v0, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    const/4 p0, 0x0

    .line 259
    aget-object p0, p1, p0

    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object p0

    iput-object p0, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    return-object v1
.end method

.method public static varargs ofObject(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator<",
            "TV;>;[TV;)",
            "Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;"
        }
    .end annotation

    .line 224
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V

    .line 225
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 226
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V

    return-object v0
.end method

.method public static varargs ofObject(Ljava/lang/String;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;[Ljava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 1

    .line 204
    new-instance v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    invoke-direct {v0, p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;-><init>(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, p2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setObjectValues([Ljava/lang/Object;)V

    .line 206
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V

    return-object v0
.end method


# virtual methods
.method final a()V
    .locals 2

    .line 634
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->o:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    if-nez v0, :cond_2

    .line 637
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->g:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    goto :goto_0

    :cond_0
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->h:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->o:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    .line 641
    :cond_2
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->o:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    if-eqz v0, :cond_3

    .line 644
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    invoke-virtual {v1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V

    :cond_3
    return-void
.end method

.method a(F)V
    .locals 1

    .line 670
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->getValue(F)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->p:Ljava/lang/Object;

    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 3

    .line 486
    sget-object v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->l:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    const-string v2, "set"

    invoke-direct {p0, p1, v0, v2, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(Ljava/lang/Class;Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 6

    .line 507
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    const-string v1, "PropertyValuesHolder"

    if-eqz v0, :cond_2

    .line 510
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    iget-object v0, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;

    .line 512
    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->hasValue()Z

    move-result v3

    if-nez v3, :cond_0

    .line 513
    iget-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    invoke-virtual {v3, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-void

    .line 518
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "No such property ("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    invoke-virtual {v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") on target object "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ". Trying reflection instead"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 520
    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    .line 523
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 524
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    if-nez v2, :cond_3

    .line 525
    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(Ljava/lang/Class;)V

    .line 527
    :cond_3
    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    iget-object v2, v2, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;

    .line 528
    invoke-virtual {v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->hasValue()Z

    move-result v4

    if-nez v4, :cond_4

    .line 529
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    if-nez v4, :cond_5

    .line 530
    invoke-direct {p0, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b(Ljava/lang/Class;)V

    .line 533
    :cond_5
    :try_start_1
    iget-object v4, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->f:Ljava/lang/reflect/Method;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v4, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->setValue(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    .line 537
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_2
    move-exception v3

    .line 535
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    return-void
.end method

.method b()Ljava/lang/Object;
    .locals 1

    .line 722
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->p:Ljava/lang/Object;

    return-object v0
.end method

.method final b(Ljava/lang/Object;)V
    .locals 2

    .line 576
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    iget-object v0, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->c:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)V

    return-void
.end method

.method final c(Ljava/lang/Object;)V
    .locals 2

    .line 588
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    iget-object v0, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    iget-object v1, v1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;

    invoke-direct {p0, p1, v0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a(Ljava/lang/Object;Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)V

    return-void
.end method

.method public clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;
    .locals 2

    .line 594
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    .line 595
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    .line 596
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    .line 597
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    move-result-object v1

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    .line 598
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->o:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    iput-object v1, v0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->o:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->clone()Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/lang/Object;)V
    .locals 4

    const-string v0, "PropertyValuesHolder"

    .line 614
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    if-eqz v1, :cond_0

    .line 615
    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    .line 619
    :try_start_0
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->d:[Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v1, v2

    .line 620
    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->a:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->d:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 624
    invoke-virtual {p1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 622
    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public getPropertyName()Ljava/lang/String;
    .locals 1

    .line 713
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    return-object v0
.end method

.method public setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V
    .locals 1

    .line 659
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->o:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;

    .line 660
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    invoke-virtual {v0, p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->setEvaluator(Lcom/neu/ssp/mirror/screencap/viewhelper/animation/TypeEvaluator;)V

    return-void
.end method

.method public varargs setFloatValues([F)V
    .locals 1

    .line 327
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    .line 328
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->ofFloat([F)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    return-void
.end method

.method public varargs setIntValues([I)V
    .locals 1

    .line 309
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    .line 310
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->ofInt([I)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    return-void
.end method

.method public varargs setKeyframes([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)V
    .locals 4

    .line 337
    array-length v0, p1

    const/4 v1, 0x2

    .line 338
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;

    const/4 v2, 0x0

    .line 339
    aget-object v3, p1, v2

    invoke-virtual {v3}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;->getType()Ljava/lang/Class;

    move-result-object v3

    iput-object v3, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    :goto_0
    if-ge v2, v0, :cond_0

    .line 341
    aget-object v3, p1, v2

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_0
    new-instance p1, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    invoke-direct {p1, v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;-><init>([Lcom/neu/ssp/mirror/screencap/viewhelper/animation/Keyframe;)V

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    return-void
.end method

.method public varargs setObjectValues([Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 360
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->b:Ljava/lang/Class;

    .line 361
    invoke-static {p1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->ofObject([Ljava/lang/Object;)Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    move-result-object p1

    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    return-void
.end method

.method public setProperty(Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;)V
    .locals 0

    .line 701
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->mProperty:Lcom/neu/ssp/mirror/screencap/viewhelper/util/Property;

    return-void
.end method

.method public setPropertyName(Ljava/lang/String;)V
    .locals 0

    .line 689
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/PropertyValuesHolder;->c:Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;

    invoke-virtual {v1}, Lcom/neu/ssp/mirror/screencap/viewhelper/animation/KeyframeSet;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
