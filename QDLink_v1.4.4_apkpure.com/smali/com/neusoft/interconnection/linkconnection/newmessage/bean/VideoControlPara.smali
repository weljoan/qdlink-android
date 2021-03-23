.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;
.super Ljava/lang/Object;
.source "VideoControlPara.java"


# instance fields
.field private PlayStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPlayStatus()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;->PlayStatus:I

    return v0
.end method

.method public setPlayStatus(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoControlPara;->PlayStatus:I

    return-void
.end method
