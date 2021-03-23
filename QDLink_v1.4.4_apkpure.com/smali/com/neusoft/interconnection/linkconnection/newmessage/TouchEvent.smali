.class public Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;
.super Ljava/lang/Object;
.source "TouchEvent.java"


# instance fields
.field private a:I

.field private b:B

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAciton()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->a:I

    return v0
.end method

.method public getFingerCount()B
    .locals 1

    .line 68
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->b:B

    return v0
.end method

.method public getTouchFinger()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->c:Ljava/util/List;

    return-object v0
.end method

.method public setAciton(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->a:I

    return-void
.end method

.method public setFingerCount(B)V
    .locals 0

    .line 72
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->b:B

    return-void
.end method

.method public setTouchFinger(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->c:Ljava/util/List;

    return-void
.end method

.method public setValueByBuffer([B)V
    .locals 6

    const/4 v0, 0x0

    .line 31
    invoke-static {p1, v0}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToInt([BI)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->setAciton(I)V

    const/4 v1, 0x4

    .line 33
    aget-byte v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->setFingerCount(B)V

    .line 36
    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->c:Ljava/util/List;

    if-nez v2, :cond_0

    .line 37
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->c:Ljava/util/List;

    goto :goto_0

    .line 39
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 43
    :goto_0
    invoke-virtual {p0}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->getFingerCount()B

    move-result v2

    const/4 v3, 0x5

    :goto_1
    if-ge v0, v2, :cond_1

    .line 45
    new-instance v4, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;

    invoke-direct {v4}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;-><init>()V

    .line 46
    aget-byte v5, p1, v3

    invoke-virtual {v4, v5}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->setID(B)V

    add-int/lit8 v3, v3, 0x1

    .line 48
    aget-byte v5, p1, v3

    invoke-virtual {v4, v5}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->setFingerAction(B)V

    add-int/lit8 v3, v3, 0x1

    .line 50
    invoke-static {p1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToFloat([BI)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->setX(F)V

    add-int/2addr v3, v1

    .line 52
    invoke-static {p1, v3}, Lcom/neusoft/interconnection/utils/Utilities;->byteArrayToFloat([BI)F

    move-result v5

    invoke-virtual {v4, v5}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEventFinger;->setY(F)V

    add-int/2addr v3, v1

    .line 54
    iget-object v5, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 56
    :cond_1
    iget-object p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->c:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/neusoft/interconnection/linkconnection/newmessage/TouchEvent;->setTouchFinger(Ljava/util/List;)V

    return-void
.end method
