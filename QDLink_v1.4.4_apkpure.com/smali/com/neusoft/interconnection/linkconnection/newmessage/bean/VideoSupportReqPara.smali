.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportReqPara;
.super Ljava/lang/Object;
.source "VideoSupportReqPara.java"


# instance fields
.field private VideoFormat:I


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

    .line 7
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportReqPara;->VideoFormat:I

    return v0
.end method

.method public setVideoFormat(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/VideoSupportReqPara;->VideoFormat:I

    return-void
.end method
