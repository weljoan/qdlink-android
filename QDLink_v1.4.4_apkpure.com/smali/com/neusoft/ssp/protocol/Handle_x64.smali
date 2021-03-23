.class public Lcom/neusoft/ssp/protocol/Handle_x64;
.super Ljava/lang/Object;
.source "Handle_x64.java"


# instance fields
.field protected address:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/neusoft/ssp/protocol/Handle_x64;->address:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/neusoft/ssp/protocol/Handle_x64;->address:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/neusoft/ssp/protocol/Handle_x64;->address:Ljava/lang/String;

    return-void
.end method
