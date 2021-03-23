.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportRspPara;
.super Ljava/lang/Object;
.source "VideoSupportRspPara.java"


# instance fields
.field private VideoFormat:I

.field private VideoSupport:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getVideoFormat()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportRspPara;->VideoFormat:I

    return v0
.end method

.method public getVideoSupport()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportRspPara;->VideoSupport:I

    return v0
.end method

.method public setVideoFormat(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportRspPara;->VideoFormat:I

    return-void
.end method

.method public setVideoSupport(I)V
    .locals 0

    .line 20
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportRspPara;->VideoSupport:I

    return-void
.end method
