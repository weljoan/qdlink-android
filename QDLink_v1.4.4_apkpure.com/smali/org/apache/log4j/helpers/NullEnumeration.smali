.class public Lorg/apache/log4j/helpers/NullEnumeration;
.super Ljava/lang/Object;
.source "NullEnumeration.java"

# interfaces
.implements Ljava/util/Enumeration;


# static fields
.field private static final instance:Lorg/apache/log4j/helpers/NullEnumeration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/log4j/helpers/NullEnumeration;

    invoke-direct {v0}, Lorg/apache/log4j/helpers/NullEnumeration;-><init>()V

    sput-object v0, Lorg/apache/log4j/helpers/NullEnumeration;->instance:Lorg/apache/log4j/helpers/NullEnumeration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/log4j/helpers/NullEnumeration;
    .locals 1

    .line 38
    sget-object v0, Lorg/apache/log4j/helpers/NullEnumeration;->instance:Lorg/apache/log4j/helpers/NullEnumeration;

    return-object v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1

    .line 48
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method
