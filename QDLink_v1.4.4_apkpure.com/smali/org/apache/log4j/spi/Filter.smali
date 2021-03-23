.class public abstract Lorg/apache/log4j/spi/Filter;
.super Ljava/lang/Object;
.source "Filter.java"

# interfaces
.implements Lorg/apache/log4j/spi/OptionHandler;


# static fields
.field public static final ACCEPT:I = 0x1

.field public static final DENY:I = -0x1

.field public static final NEUTRAL:I


# instance fields
.field public next:Lorg/apache/log4j/spi/Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateOptions()V
    .locals 0

    return-void
.end method

.method public abstract decide(Lorg/apache/log4j/spi/LoggingEvent;)I
.end method

.method public getNext()Lorg/apache/log4j/spi/Filter;
    .locals 1

    .line 121
    iget-object v0, p0, Lorg/apache/log4j/spi/Filter;->next:Lorg/apache/log4j/spi/Filter;

    return-object v0
.end method

.method public setNext(Lorg/apache/log4j/spi/Filter;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lorg/apache/log4j/spi/Filter;->next:Lorg/apache/log4j/spi/Filter;

    return-void
.end method
