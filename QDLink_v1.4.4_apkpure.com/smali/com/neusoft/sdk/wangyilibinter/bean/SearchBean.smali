.class public Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;
.super Ljava/lang/Object;
.source "SearchBean.java"


# instance fields
.field private code:I

.field private result:Lcom/neusoft/sdk/wangyilibinter/bean/Result;


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
    iget v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;->code:I

    return v0
.end method

.method public getResult()Lcom/neusoft/sdk/wangyilibinter/bean/Result;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;->result:Lcom/neusoft/sdk/wangyilibinter/bean/Result;

    return-object v0
.end method

.method public setCode(I)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;->code:I

    return-void
.end method

.method public setResult(Lcom/neusoft/sdk/wangyilibinter/bean/Result;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/neusoft/sdk/wangyilibinter/bean/SearchBean;->result:Lcom/neusoft/sdk/wangyilibinter/bean/Result;

    return-void
.end method
