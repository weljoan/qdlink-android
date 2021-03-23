.class public Lcom/neusoft/ssp/protocol/Handle;
.super Ljava/lang/Object;
.source "Handle.java"


# instance fields
.field protected address:I


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/neusoft/ssp/protocol/Handle;->address:I

    return-void
.end method


# virtual methods
.method public getAddress()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/neusoft/ssp/protocol/Handle;->address:I

    return v0
.end method

.method protected setAddress(I)V
    .locals 0

    .line 16
    iput p1, p0, Lcom/neusoft/ssp/protocol/Handle;->address:I

    return-void
.end method
