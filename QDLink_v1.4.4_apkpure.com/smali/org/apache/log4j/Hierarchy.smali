.class public Lorg/apache/log4j/Hierarchy;
.super Ljava/lang/Object;
.source "Hierarchy.java"

# interfaces
.implements Lorg/apache/log4j/spi/LoggerRepository;
.implements Lorg/apache/log4j/spi/RendererSupport;
.implements Lorg/apache/log4j/spi/ThrowableRendererSupport;


# instance fields
.field private defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

.field emittedNoAppenderWarning:Z

.field emittedNoResourceBundleWarning:Z

.field ht:Ljava/util/Hashtable;

.field private listeners:Ljava/util/Vector;

.field rendererMap:Lorg/apache/log4j/or/RendererMap;

.field root:Lorg/apache/log4j/Logger;

.field threshold:Lorg/apache/log4j/Level;

.field thresholdInt:I

.field private throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;


# direct methods
.method public constructor <init>(Lorg/apache/log4j/Logger;)V
    .locals 2

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    .line 79
    iput-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoResourceBundleWarning:Z

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;

    .line 91
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    .line 92
    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    .line 93
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    .line 95
    sget-object p1, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, p1}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 96
    iget-object p1, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    invoke-virtual {p1, p0}, Lorg/apache/log4j/Logger;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 97
    new-instance p1, Lorg/apache/log4j/or/RendererMap;

    invoke-direct {p1}, Lorg/apache/log4j/or/RendererMap;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    .line 98
    new-instance p1, Lorg/apache/log4j/DefaultCategoryFactory;

    invoke-direct {p1}, Lorg/apache/log4j/DefaultCategoryFactory;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    return-void
.end method

.method private final updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V
    .locals 5

    .line 560
    invoke-virtual {p1}, Lorg/apache/log4j/ProvisionNode;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 563
    invoke-virtual {p1, v1}, Lorg/apache/log4j/ProvisionNode;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Logger;

    .line 568
    iget-object v3, v2, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    iget-object v3, v3, Lorg/apache/log4j/Category;->name:Ljava/lang/String;

    iget-object v4, p2, Lorg/apache/log4j/Logger;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 569
    iget-object v3, v2, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    iput-object v3, p2, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    .line 570
    iput-object p2, v2, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final updateParents(Lorg/apache/log4j/Logger;)V
    .locals 8

    .line 504
    iget-object v0, p1, Lorg/apache/log4j/Logger;->name:Ljava/lang/String;

    .line 505
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/16 v3, 0x2e

    .line 511
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    :goto_0
    const/4 v4, 0x0

    if-ltz v1, :cond_3

    .line 513
    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 516
    new-instance v5, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v5, v4}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 517
    iget-object v4, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    .line 521
    new-instance v4, Lorg/apache/log4j/ProvisionNode;

    invoke-direct {v4, p1}, Lorg/apache/log4j/ProvisionNode;-><init>(Lorg/apache/log4j/Logger;)V

    .line 522
    iget-object v6, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v6, v5, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 523
    :cond_0
    instance-of v5, v4, Lorg/apache/log4j/Category;

    if-eqz v5, :cond_1

    .line 525
    check-cast v4, Lorg/apache/log4j/Category;

    iput-object v4, p1, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    goto :goto_2

    .line 528
    :cond_1
    instance-of v5, v4, Lorg/apache/log4j/ProvisionNode;

    if-eqz v5, :cond_2

    .line 529
    check-cast v4, Lorg/apache/log4j/ProvisionNode;

    invoke-virtual {v4, p1}, Lorg/apache/log4j/ProvisionNode;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 531
    :cond_2
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "unexpected object type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v4, " in ht."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 533
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    .line 512
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_2
    if-nez v2, :cond_4

    .line 538
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    iput-object v0, p1, Lorg/apache/log4j/Logger;->parent:Lorg/apache/log4j/Category;

    :cond_4
    return-void
.end method


# virtual methods
.method public addHierarchyEventListener(Lorg/apache/log4j/spi/HierarchyEventListener;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Ignoring attempt to add an existent listener."

    .line 112
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public addRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 130
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public emitNoAppenderWarning(Lorg/apache/log4j/Category;)V
    .locals 2

    .line 136
    iget-boolean v0, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "No appenders could be found for logger ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lorg/apache/log4j/Category;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ")."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    const-string p1, "Please initialize the log4j system properly."

    .line 139
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    const-string p1, "See http://logging.apache.org/log4j/1.2/faq.html#noconfig for more info."

    .line 140
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 141
    iput-boolean p1, p0, Lorg/apache/log4j/Hierarchy;->emittedNoAppenderWarning:Z

    :cond_0
    return-void
.end method

.method public exists(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    new-instance v1, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v1, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 155
    instance-of v0, p1, Lorg/apache/log4j/Logger;

    if-eqz v0, :cond_0

    .line 156
    check-cast p1, Lorg/apache/log4j/Logger;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public fireAddAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 3

    .line 192
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 196
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 197
    invoke-interface {v2, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->addAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method fireRemoveAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V
    .locals 3

    .line 203
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 207
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/spi/HierarchyEventListener;

    .line 208
    invoke-interface {v2, p1, p2}, Lorg/apache/log4j/spi/HierarchyEventListener;->removeAppenderEvent(Lorg/apache/log4j/Category;Lorg/apache/log4j/Appender;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getCurrentCategories()Ljava/util/Enumeration;
    .locals 1

    .line 326
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentLoggers()Ljava/util/Enumeration;
    .locals 4

    .line 309
    new-instance v0, Ljava/util/Vector;

    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    .line 311
    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 312
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 313
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    .line 314
    instance-of v3, v2, Lorg/apache/log4j/Logger;

    if-eqz v3, :cond_0

    .line 315
    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    .line 318
    :cond_1
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;)Lorg/apache/log4j/Logger;
    .locals 1

    .line 247
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->defaultFactory:Lorg/apache/log4j/spi/LoggerFactory;

    invoke-virtual {p0, p1, v0}, Lorg/apache/log4j/Hierarchy;->getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;

    move-result-object p1

    return-object p1
.end method

.method public getLogger(Ljava/lang/String;Lorg/apache/log4j/spi/LoggerFactory;)Lorg/apache/log4j/Logger;
    .locals 4

    .line 266
    new-instance v0, Lorg/apache/log4j/CategoryKey;

    invoke-direct {v0, p1}, Lorg/apache/log4j/CategoryKey;-><init>(Ljava/lang/String;)V

    .line 272
    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v1

    .line 273
    :try_start_0
    iget-object v2, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {v2, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 275
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p0}, Lorg/apache/log4j/Logger;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 277
    iget-object p2, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {p2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-direct {p0, p1}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 279
    monitor-exit v1

    return-object p1

    .line 280
    :cond_0
    instance-of v3, v2, Lorg/apache/log4j/Logger;

    if-eqz v3, :cond_1

    .line 281
    check-cast v2, Lorg/apache/log4j/Logger;

    monitor-exit v1

    return-object v2

    .line 282
    :cond_1
    instance-of v3, v2, Lorg/apache/log4j/ProvisionNode;

    if-eqz v3, :cond_2

    .line 284
    invoke-interface {p2, p1}, Lorg/apache/log4j/spi/LoggerFactory;->makeNewLoggerInstance(Ljava/lang/String;)Lorg/apache/log4j/Logger;

    move-result-object p1

    .line 285
    invoke-virtual {p1, p0}, Lorg/apache/log4j/Logger;->setHierarchy(Lorg/apache/log4j/spi/LoggerRepository;)V

    .line 286
    iget-object p2, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    invoke-virtual {p2, v0, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    check-cast v2, Lorg/apache/log4j/ProvisionNode;

    invoke-direct {p0, v2, p1}, Lorg/apache/log4j/Hierarchy;->updateChildren(Lorg/apache/log4j/ProvisionNode;Lorg/apache/log4j/Logger;)V

    .line 288
    invoke-direct {p0, p1}, Lorg/apache/log4j/Hierarchy;->updateParents(Lorg/apache/log4j/Logger;)V

    .line 289
    monitor-exit v1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    .line 293
    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception p1

    .line 295
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getRendererMap()Lorg/apache/log4j/or/RendererMap;
    .locals 1

    .line 335
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    return-object v0
.end method

.method public getRootLogger()Lorg/apache/log4j/Logger;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    return-object v0
.end method

.method public getThreshold()Lorg/apache/log4j/Level;
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    return-object v0
.end method

.method public getThrowableRenderer()Lorg/apache/log4j/spi/ThrowableRenderer;
    .locals 1

    .line 436
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;

    return-object v0
.end method

.method public isDisabled(I)Z
    .locals 1

    .line 356
    iget v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    if-le v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public overrideAsNeeded(Ljava/lang/String;)V
    .locals 0

    const-string p1, "The Hiearchy.overrideAsNeeded method has been deprecated."

    .line 364
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public resetConfiguration()V
    .locals 5

    .line 384
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/Level;->DEBUG:Lorg/apache/log4j/Level;

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    .line 385
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->root:Lorg/apache/log4j/Logger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/apache/log4j/Logger;->setResourceBundle(Ljava/util/ResourceBundle;)V

    .line 386
    sget-object v0, Lorg/apache/log4j/Level;->ALL:Lorg/apache/log4j/Level;

    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    .line 390
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v0

    .line 391
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->shutdown()V

    .line 393
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v2

    .line 394
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 395
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/Logger;

    .line 396
    invoke-virtual {v3, v1}, Lorg/apache/log4j/Logger;->setLevel(Lorg/apache/log4j/Level;)V

    const/4 v4, 0x1

    .line 397
    invoke-virtual {v3, v4}, Lorg/apache/log4j/Logger;->setAdditivity(Z)V

    .line 398
    invoke-virtual {v3, v1}, Lorg/apache/log4j/Logger;->setResourceBundle(Ljava/util/ResourceBundle;)V

    goto :goto_0

    .line 400
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 401
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0}, Lorg/apache/log4j/or/RendererMap;->clear()V

    .line 402
    iput-object v1, p0, Lorg/apache/log4j/Hierarchy;->throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;

    return-void

    :catchall_0
    move-exception v1

    .line 400
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setDisableOverride(Ljava/lang/String;)V
    .locals 0

    const-string p1, "The Hiearchy.setDisableOverride method has been deprecated."

    .line 412
    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public setRenderer(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V
    .locals 1

    .line 422
    iget-object v0, p0, Lorg/apache/log4j/Hierarchy;->rendererMap:Lorg/apache/log4j/or/RendererMap;

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/or/RendererMap;->put(Ljava/lang/Class;Lorg/apache/log4j/or/ObjectRenderer;)V

    return-void
.end method

.method public setThreshold(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 167
    invoke-static {p1, v0}, Lorg/apache/log4j/Level;->toLevel(Ljava/lang/String;Lorg/apache/log4j/Level;)Lorg/apache/log4j/Level;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {p0, v0}, Lorg/apache/log4j/Hierarchy;->setThreshold(Lorg/apache/log4j/Level;)V

    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not convert ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "] to Level."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/log4j/helpers/LogLog;->warn(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setThreshold(Lorg/apache/log4j/Level;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 185
    iget v0, p1, Lorg/apache/log4j/Level;->level:I

    iput v0, p0, Lorg/apache/log4j/Hierarchy;->thresholdInt:I

    .line 186
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->threshold:Lorg/apache/log4j/Level;

    :cond_0
    return-void
.end method

.method public setThrowableRenderer(Lorg/apache/log4j/spi/ThrowableRenderer;)V
    .locals 0

    .line 429
    iput-object p1, p0, Lorg/apache/log4j/Hierarchy;->throwableRenderer:Lorg/apache/log4j/spi/ThrowableRenderer;

    return-void
.end method

.method public shutdown()V
    .locals 4

    .line 458
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getRootLogger()Lorg/apache/log4j/Logger;

    move-result-object v0

    .line 461
    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->closeNestedAppenders()V

    .line 463
    iget-object v1, p0, Lorg/apache/log4j/Hierarchy;->ht:Ljava/util/Hashtable;

    monitor-enter v1

    .line 464
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v2

    .line 465
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/log4j/Logger;

    .line 467
    invoke-virtual {v3}, Lorg/apache/log4j/Logger;->closeNestedAppenders()V

    goto :goto_0

    .line 471
    :cond_0
    invoke-virtual {v0}, Lorg/apache/log4j/Logger;->removeAllAppenders()V

    .line 472
    invoke-virtual {p0}, Lorg/apache/log4j/Hierarchy;->getCurrentLoggers()Ljava/util/Enumeration;

    move-result-object v0

    .line 473
    :goto_1
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 474
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/log4j/Logger;

    .line 475
    invoke-virtual {v2}, Lorg/apache/log4j/Logger;->removeAllAppenders()V

    goto :goto_1

    .line 477
    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
