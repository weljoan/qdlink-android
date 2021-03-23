.class public Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;
.super Ljava/lang/Object;
.source "BTInfo.java"


# instance fields
.field private btmac:Ljava/lang/String;

.field private btstate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBtmac()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->btmac:Ljava/lang/String;

    return-object v0
.end method

.method public getBtstate()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->btstate:I

    return v0
.end method

.method public setBtmac(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->btmac:Ljava/lang/String;

    return-void
.end method

.method public setBtstate(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/neusoft/interconnection/linkconnection/newmessage/bean/BTInfo;->btstate:I

    return-void
.end method
