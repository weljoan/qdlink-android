.class public Lcom/neusoft/interconnection/linkconnection/newmessage/ExtendHeader;
.super Ljava/lang/Object;
.source "ExtendHeader.java"


# instance fields
.field private a:S

.field private b:B

.field private c:B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExtendHeaderSize()S
    .locals 1

    .line 17
    iget-short v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ExtendHeader;->a:S

    return v0
.end method

.method public getExtendHeaderType()B
    .locals 1

    .line 25
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ExtendHeader;->b:B

    return v0
.end method

.method public getReserved()B
    .locals 1

    .line 33
    iget-byte v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ExtendHeader;->c:B

    return v0
.end method

.method public setExtendHeaderSize(S)V
    .locals 0

    .line 21
    iput-short p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ExtendHeader;->a:S

    return-void
.end method

.method public setExtendHeaderType(B)V
    .locals 0

    .line 29
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ExtendHeader;->b:B

    return-void
.end method

.method public setReserved(B)V
    .locals 0

    .line 37
    iput-byte p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/ExtendHeader;->c:B

    return-void
.end method
