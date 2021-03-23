.class public Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;
.super Ljava/lang/Object;
.source "TouchEventFinger.java"


# instance fields
.field private a:B

.field private b:B

.field private c:F

.field private d:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getFingerAction()B
    .locals 1

    .line 38
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->b:B

    return v0
.end method

.method public getID()B
    .locals 1

    .line 30
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->a:B

    return v0
.end method

.method public getX()F
    .locals 1

    .line 46
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->c:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->d:F

    return v0
.end method

.method public setFingerAction(B)V
    .locals 0

    .line 42
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->b:B

    return-void
.end method

.method public setID(B)V
    .locals 0

    .line 34
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->a:B

    return-void
.end method

.method public setX(F)V
    .locals 0

    .line 50
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->c:F

    return-void
.end method

.method public setY(F)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->d:F

    return-void
.end method
