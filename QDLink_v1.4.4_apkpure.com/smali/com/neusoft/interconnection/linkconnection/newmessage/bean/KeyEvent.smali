.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;
.super Ljava/lang/Object;
.source "KeyEvent.java"


# instance fields
.field private ACTION:I

.field private FINGERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEventPara;",
            ">;"
        }
    .end annotation
.end field

.field private FINGER_COUNT:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getACTION()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;->ACTION:I

    return v0
.end method

.method public getFINGERS()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEventPara;",
            ">;"
        }
    .end annotation

    .line 28
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;->FINGERS:Ljava/util/List;

    return-object v0
.end method

.method public getFINGER_COUNT()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;->FINGER_COUNT:I

    return v0
.end method

.method public setACTION(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;->ACTION:I

    return-void
.end method

.method public setFINGERS(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEventPara;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;->FINGERS:Ljava/util/List;

    return-void
.end method

.method public setFINGER_COUNT(I)V
    .locals 0

    .line 24
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/KeyEvent;->FINGER_COUNT:I

    return-void
.end method
