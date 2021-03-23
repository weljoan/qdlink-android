.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;
.super Ljava/lang/Object;
.source "LandModeRspPara.java"


# instance fields
.field private Authority:I

.field private Orientation:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAuthority()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;->Authority:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;->Orientation:I

    return v0
.end method

.method public setAuthority(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;->Authority:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/LandModeRspPara;->Orientation:I

    return-void
.end method
