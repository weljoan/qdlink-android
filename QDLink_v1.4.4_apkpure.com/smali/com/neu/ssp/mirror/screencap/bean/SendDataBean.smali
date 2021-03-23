.class public Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;
.super Ljava/lang/Object;
.source "SendDataBean.java"


# instance fields
.field private a:I

.field private b:[B

.field private c:Landroid/graphics/Bitmap;

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:J

.field private i:Z


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->h:J

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->i:Z

    .line 124
    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setId(I)V

    return-void
.end method

.method public constructor <init>([BIIIILandroid/graphics/Bitmap;J)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->h:J

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->i:Z

    .line 134
    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setData([B)V

    .line 135
    invoke-virtual {p0, p2}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setOffset(I)V

    .line 136
    invoke-virtual {p0, p3}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setSize(I)V

    .line 137
    invoke-virtual {p0, p4}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setOrientation(I)V

    .line 138
    invoke-virtual {p0, p5}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setAngle(I)V

    .line 139
    invoke-virtual {p0, p6}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setBitData(Landroid/graphics/Bitmap;)V

    .line 140
    invoke-virtual {p0, p7, p8}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setTimeFlag(J)V

    return-void
.end method


# virtual methods
.method public getAngle()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->g:I

    return v0
.end method

.method public getBitData()Landroid/graphics/Bitmap;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->c:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getData()[B
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->b:[B

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 108
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->a:I

    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 60
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->d:I

    return v0
.end method

.method public getOrientation()I
    .locals 1

    .line 76
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->f:I

    return v0
.end method

.method public getSize()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->e:I

    return v0
.end method

.method public getTimeFlag()J
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->h:J

    return-wide v0
.end method

.method public isLockFlag()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->i:Z

    return v0
.end method

.method public releaseDataBean()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setLockFlag(Z)V

    return-void
.end method

.method public resetDataBean(Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;)V
    .locals 2

    const/4 v0, 0x1

    .line 149
    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setLockFlag(Z)V

    .line 150
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->getData()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setData([B)V

    .line 151
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->getOffset()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setOffset(I)V

    .line 152
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->getSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setSize(I)V

    .line 153
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->getOrientation()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setOrientation(I)V

    .line 154
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->getAngle()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setAngle(I)V

    .line 155
    invoke-virtual {p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->getTimeFlag()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setTimeFlag(J)V

    .line 156
    iget-object p1, p1, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->c:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setBitData(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 157
    invoke-virtual {p0, p1}, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->setLockFlag(Z)V

    return-void
.end method

.method public setAngle(I)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->g:I

    return-void
.end method

.method public setBitData(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->c:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setData([B)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->b:[B

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->a:I

    return-void
.end method

.method public setLockFlag(Z)V
    .locals 0

    .line 104
    iput-boolean p1, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->i:Z

    return-void
.end method

.method public setOffset(I)V
    .locals 0

    .line 64
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->d:I

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 80
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->f:I

    return-void
.end method

.method public setSize(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->e:I

    return-void
.end method

.method public setTimeFlag(J)V
    .locals 0

    .line 96
    iput-wide p1, p0, Lcom/neu/ssp/mirror/screencap/bean/SendDataBean;->h:J

    return-void
.end method
