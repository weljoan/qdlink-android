.class public Lcom/neusoft/sdk/wangyilibinter/bean/L;
.super Ljava/lang/Object;
.source "L.java"


# instance fields
.field private br:I

.field private fid:I

.field private size:I

.field private vd:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBr()I
    .locals 1

    .line 10
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/L;->br:I

    return v0
.end method

.method public getFid()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/L;->fid:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 26
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/L;->size:I

    return v0
.end method

.method public getVd()D
    .locals 2

    .line 34
    iget-wide v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/L;->vd:D

    return-wide v0
.end method

.method public setBr(I)V
    .locals 0

    .line 14
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/L;->br:I

    return-void
.end method

.method public setFid(I)V
    .locals 0

    .line 22
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/L;->fid:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 30
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/L;->size:I

    return-void
.end method

.method public setVd(D)V
    .locals 0

    .line 38
    iput-wide p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/L;->vd:D

    return-void
.end method
