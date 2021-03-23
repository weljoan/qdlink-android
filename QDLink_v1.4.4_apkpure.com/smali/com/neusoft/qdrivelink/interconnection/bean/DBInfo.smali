.class public Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;
.super Ljava/lang/Object;
.source "DBInfo.java"


# instance fields
.field private extrajson:Ljava/lang/String;

.field private fac:Ljava/lang/String;

.field private facID:Ljava/lang/String;

.field private huID:Ljava/lang/String;

.field private iconurl:Ljava/lang/String;

.field private isAndroid:Z

.field private linkandroidver:Ljava/lang/String;

.field private linkappid:Ljava/lang/String;

.field private linkappidtest:Ljava/lang/String;

.field private linkiosver:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private noiconurl:Ljava/lang/String;

.field private port:I

.field private scankey:Ljava/lang/String;

.field private type:Ljava/lang/String;

.field private typeID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->fac:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->facID:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->typeID:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->huID:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkappid:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkappidtest:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->scankey:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->iconurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->noiconurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkiosver:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkandroidver:Ljava/lang/String;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->extrajson:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->isAndroid:Z

    .line 9
    iput v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->port:I

    return-void
.end method


# virtual methods
.method public getExtrajson()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->extrajson:Ljava/lang/String;

    return-object v0
.end method

.method public getFac()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->fac:Ljava/lang/String;

    return-object v0
.end method

.method public getFacID()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->facID:Ljava/lang/String;

    return-object v0
.end method

.method public getHuID()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->huID:Ljava/lang/String;

    return-object v0
.end method

.method public getIconurl()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->iconurl:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkandroidver()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkandroidver:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkappid()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkappid:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkappidtest()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkappidtest:Ljava/lang/String;

    return-object v0
.end method

.method public getLinkiosver()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkiosver:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNoiconurl()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->noiconurl:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->port:I

    return v0
.end method

.method public getScankey()Ljava/lang/String;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->scankey:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeID()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->typeID:Ljava/lang/String;

    return-object v0
.end method

.method public isAndroid()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->isAndroid:Z

    return v0
.end method

.method public setAndroid(Z)V
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->isAndroid:Z

    return-void
.end method

.method public setExtrajson(Ljava/lang/String;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->extrajson:Ljava/lang/String;

    return-void
.end method

.method public setFac(Ljava/lang/String;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->fac:Ljava/lang/String;

    return-void
.end method

.method public setFacID(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->facID:Ljava/lang/String;

    return-void
.end method

.method public setHuID(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->huID:Ljava/lang/String;

    return-void
.end method

.method public setIconurl(Ljava/lang/String;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->iconurl:Ljava/lang/String;

    return-void
.end method

.method public setLinkandroidver(Ljava/lang/String;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkandroidver:Ljava/lang/String;

    return-void
.end method

.method public setLinkappid(Ljava/lang/String;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkappid:Ljava/lang/String;

    return-void
.end method

.method public setLinkappidtest(Ljava/lang/String;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkappidtest:Ljava/lang/String;

    return-void
.end method

.method public setLinkiosver(Ljava/lang/String;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkiosver:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setNoiconurl(Ljava/lang/String;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->noiconurl:Ljava/lang/String;

    return-void
.end method

.method public setPort(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->port:I

    return-void
.end method

.method public setScankey(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->scankey:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->type:Ljava/lang/String;

    return-void
.end method

.method public setTypeID(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->typeID:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DBInfo [fac="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->fac:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", facID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->facID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", typeID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->typeID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", huID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->huID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkappid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkappid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkappidtest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkappidtest:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", scankey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->scankey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", iconurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->iconurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", noiconurl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->noiconurl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkiosver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkiosver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", linkandroidver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->linkandroidver:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", extrajson="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->extrajson:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isAndroid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->isAndroid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", port="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/neusoft/qdrivelink/interconnection/bean/DBInfo;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
