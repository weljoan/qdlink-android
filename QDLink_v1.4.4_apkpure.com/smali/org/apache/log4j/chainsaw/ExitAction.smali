.class Lorg/apache/log4j/chainsaw/ExitAction;
.super Ljavax/swing/AbstractAction;
.source "ExitAction.java"


# static fields
.field public static final INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

.field private static final LOG:Lorg/apache/log4j/Logger;

.field static synthetic class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.apache.log4j.chainsaw.ExitAction"

    invoke-static {v0}, Lorg/apache/log4j/chainsaw/ExitAction;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->class$org$apache$log4j$chainsaw$ExitAction:Ljava/lang/Class;

    :cond_0
    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->LOG:Lorg/apache/log4j/Logger;

    .line 35
    new-instance v0, Lorg/apache/log4j/chainsaw/ExitAction;

    invoke-direct {v0}, Lorg/apache/log4j/chainsaw/ExitAction;-><init>()V

    sput-object v0, Lorg/apache/log4j/chainsaw/ExitAction;->INSTANCE:Lorg/apache/log4j/chainsaw/ExitAction;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljavax/swing/AbstractAction;-><init>()V

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 33
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
.method public actionPerformed(Ljava/awt/event/ActionEvent;)V
    .locals 1

    .line 45
    sget-object p1, Lorg/apache/log4j/chainsaw/ExitAction;->LOG:Lorg/apache/log4j/Logger;

    const-string v0, "shutting down"

    invoke-virtual {p1, v0}, Lorg/apache/log4j/Logger;->info(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 46
    invoke-static {p1}, Ljava/lang/System;->exit(I)V

    return-void
.end method
