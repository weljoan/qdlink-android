.class public Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;
.super Ljava/lang/Object;
.source "SSongs.java"


# instance fields
.field private al:Lcom/neusoft/sdk/wangyilibinter/bean/Al;

.field private ar:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/Ar;",
            ">;"
        }
    .end annotation
.end field

.field private cd:Ljava/lang/String;

.field private cf:Ljava/lang/String;

.field private copyright:I

.field private cp:I

.field private djId:I

.field private dt:I

.field private fee:I

.field private ftype:I

.field private h:Lcom/neusoft/sdk/wangyilibinter/bean/H;

.field private id:Ljava/lang/String;

.field private l:Lcom/neusoft/sdk/wangyilibinter/bean/L;

.field private m:Lcom/neusoft/sdk/wangyilibinter/bean/M;

.field private mst:I

.field private mv:I

.field private name:Ljava/lang/String;

.field private no:I

.field private pop:D

.field private privilege:Lcom/neusoft/sdk/wangyilibinter/bean/Privileges;

.field private pst:I

.field private publishTime:Ljava/lang/String;

.field private rt:Ljava/lang/String;

.field private rtype:I

.field private s_id:I

.field private st:I

.field private t:I

.field private v:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAl()Lcom/neusoft/sdk/wangyilibinter/bean/Al;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->al:Lcom/neusoft/sdk/wangyilibinter/bean/Al;

    return-object v0
.end method

.method public getAr()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/Ar;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->ar:Ljava/util/List;

    return-object v0
.end method

.method public getCd()Ljava/lang/String;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->cd:Ljava/lang/String;

    return-object v0
.end method

.method public getCf()Ljava/lang/String;
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->cf:Ljava/lang/String;

    return-object v0
.end method

.method public getCopyright()I
    .locals 1

    .line 101
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->copyright:I

    return v0
.end method

.method public getCp()I
    .locals 1

    .line 109
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->cp:I

    return v0
.end method

.method public getDjId()I
    .locals 1

    .line 117
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->djId:I

    return v0
.end method

.method public getDt()I
    .locals 1

    .line 125
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->dt:I

    return v0
.end method

.method public getFee()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->fee:I

    return v0
.end method

.method public getFtype()I
    .locals 1

    .line 141
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->ftype:I

    return v0
.end method

.method public getH()Lcom/neusoft/sdk/wangyilibinter/bean/H;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->h:Lcom/neusoft/sdk/wangyilibinter/bean/H;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getL()Lcom/neusoft/sdk/wangyilibinter/bean/L;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->l:Lcom/neusoft/sdk/wangyilibinter/bean/L;

    return-object v0
.end method

.method public getM()Lcom/neusoft/sdk/wangyilibinter/bean/M;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->m:Lcom/neusoft/sdk/wangyilibinter/bean/M;

    return-object v0
.end method

.method public getMst()I
    .locals 1

    .line 157
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->mst:I

    return v0
.end method

.method public getMv()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->mv:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNo()I
    .locals 1

    .line 181
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->no:I

    return v0
.end method

.method public getPop()D
    .locals 2

    .line 189
    iget-wide v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->pop:D

    return-wide v0
.end method

.method public getPrivilege()Lcom/neusoft/sdk/wangyilibinter/bean/Privileges;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->privilege:Lcom/neusoft/sdk/wangyilibinter/bean/Privileges;

    return-object v0
.end method

.method public getPst()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->pst:I

    return v0
.end method

.method public getPublishTime()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->publishTime:Ljava/lang/String;

    return-object v0
.end method

.method public getRt()Ljava/lang/String;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->rt:Ljava/lang/String;

    return-object v0
.end method

.method public getRtype()I
    .locals 1

    .line 221
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->rtype:I

    return v0
.end method

.method public getS_id()I
    .locals 1

    .line 229
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->s_id:I

    return v0
.end method

.method public getSt()I
    .locals 1

    .line 237
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->st:I

    return v0
.end method

.method public getT()I
    .locals 1

    .line 245
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->t:I

    return v0
.end method

.method public getV()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->v:I

    return v0
.end method

.method public setAl(Lcom/neusoft/sdk/wangyilibinter/bean/Al;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->al:Lcom/neusoft/sdk/wangyilibinter/bean/Al;

    return-void
.end method

.method public setAr(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/Ar;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->ar:Ljava/util/List;

    return-void
.end method

.method public setCd(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->cd:Ljava/lang/String;

    return-void
.end method

.method public setCf(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->cf:Ljava/lang/String;

    return-void
.end method

.method public setCopyright(I)V
    .locals 0

    .line 105
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->copyright:I

    return-void
.end method

.method public setCp(I)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->cp:I

    return-void
.end method

.method public setDjId(I)V
    .locals 0

    .line 121
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->djId:I

    return-void
.end method

.method public setDt(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->dt:I

    return-void
.end method

.method public setFee(I)V
    .locals 0

    .line 137
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->fee:I

    return-void
.end method

.method public setFtype(I)V
    .locals 0

    .line 145
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->ftype:I

    return-void
.end method

.method public setH(Lcom/neusoft/sdk/wangyilibinter/bean/H;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->h:Lcom/neusoft/sdk/wangyilibinter/bean/H;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 153
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->id:Ljava/lang/String;

    return-void
.end method

.method public setL(Lcom/neusoft/sdk/wangyilibinter/bean/L;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->l:Lcom/neusoft/sdk/wangyilibinter/bean/L;

    return-void
.end method

.method public setM(Lcom/neusoft/sdk/wangyilibinter/bean/M;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->m:Lcom/neusoft/sdk/wangyilibinter/bean/M;

    return-void
.end method

.method public setMst(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->mst:I

    return-void
.end method

.method public setMv(I)V
    .locals 0

    .line 169
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->mv:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->name:Ljava/lang/String;

    return-void
.end method

.method public setNo(I)V
    .locals 0

    .line 185
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->no:I

    return-void
.end method

.method public setPop(D)V
    .locals 0

    .line 193
    iput-wide p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->pop:D

    return-void
.end method

.method public setPrivilege(Lcom/neusoft/sdk/wangyilibinter/bean/Privileges;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->privilege:Lcom/neusoft/sdk/wangyilibinter/bean/Privileges;

    return-void
.end method

.method public setPst(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->pst:I

    return-void
.end method

.method public setPublishTime(Ljava/lang/String;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->publishTime:Ljava/lang/String;

    return-void
.end method

.method public setRt(Ljava/lang/String;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->rt:Ljava/lang/String;

    return-void
.end method

.method public setRtype(I)V
    .locals 0

    .line 225
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->rtype:I

    return-void
.end method

.method public setS_id(I)V
    .locals 0

    .line 233
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->s_id:I

    return-void
.end method

.method public setSt(I)V
    .locals 0

    .line 241
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->st:I

    return-void
.end method

.method public setT(I)V
    .locals 0

    .line 249
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->t:I

    return-void
.end method

.method public setV(I)V
    .locals 0

    .line 257
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SSongs;->v:I

    return-void
.end method
