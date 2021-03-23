.class public Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;
.super Ljava/lang/Object;
.source "BaseBean.java"


# instance fields
.field private code:I

.field private data:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 8
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->code:I

    return v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->data:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->code:I

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/BaseBean;->data:Ljava/lang/String;

    return-void
.end method
