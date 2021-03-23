.class public Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;
.super Ljava/lang/Object;
.source "TrackingAdjustmentListener.java"

# interfaces
.implements Ljava/awt/event/AdjustmentListener;


# instance fields
.field protected _lastMaximum:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    return-void
.end method


# virtual methods
.method public adjustmentValueChanged(Ljava/awt/event/AdjustmentEvent;)V
    .locals 3

    .line 61
    invoke-virtual {p1}, Ljava/awt/event/AdjustmentEvent;->getAdjustable()Ljava/awt/Adjustable;

    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v0

    .line 63
    invoke-interface {p1}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v1

    iget v2, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    if-ne v1, v2, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-interface {p1}, Ljava/awt/Adjustable;->getValue()I

    move-result v1

    invoke-interface {p1}, Ljava/awt/Adjustable;->getVisibleAmount()I

    move-result v2

    add-int/2addr v1, v2

    .line 68
    invoke-interface {p1}, Ljava/awt/Adjustable;->getUnitIncrement()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    if-lt v1, v2, :cond_1

    .line 69
    invoke-interface {p1}, Ljava/awt/Adjustable;->getMaximum()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/awt/Adjustable;->setValue(I)V

    .line 71
    :cond_1
    iput v0, p0, Lorg/apache/log4j/lf5/viewer/TrackingAdjustmentListener;->_lastMaximum:I

    return-void
.end method
