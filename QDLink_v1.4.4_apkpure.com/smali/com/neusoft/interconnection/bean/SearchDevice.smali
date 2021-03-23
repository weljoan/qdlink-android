.class public Lcom/neusoft/interconnection/bean/SearchDevice;
.super Ljava/lang/Object;
.source "SearchDevice.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field public isOwner:Z

.field public status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDeviceIp()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceUUID()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()I
    .locals 1

    .line 63
    iget v0, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->a:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 71
    iget v0, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->status:I

    return v0
.end method

.method public isOwner()Z
    .locals 1

    .line 79
    iget-boolean v0, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->isOwner:Z

    return v0
.end method

.method public setDeviceIp(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->d:Ljava/lang/String;

    return-void
.end method

.method public setDeviceName(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->c:Ljava/lang/String;

    return-void
.end method

.method public setDeviceUUID(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->b:Ljava/lang/String;

    return-void
.end method

.method public setOwner(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->isOwner:Z

    return-void
.end method

.method public setResourceId(I)V
    .locals 0

    .line 67
    iput p1, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->a:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 75
    iput p1, p0, Lcom/neusoft/interconnection/bean/SearchDevice;->status:I

    return-void
.end method
