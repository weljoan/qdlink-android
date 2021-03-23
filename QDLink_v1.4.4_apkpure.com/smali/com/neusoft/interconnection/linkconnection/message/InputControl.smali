.class public Lcom/neusoft/interconnection/linkconnection/message/InputControl;
.super Ljava/lang/Object;
.source "InputControl.java"


# instance fields
.field private a:Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

.field private b:Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

.field private c:Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;-><init>(Lcom/neusoft/interconnection/linkconnection/message/InputControl;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl;->b:Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    .line 139
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;-><init>(Lcom/neusoft/interconnection/linkconnection/message/InputControl;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl;->c:Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    .line 142
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl;->b:Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    const/4 v1, 0x1

    iput v1, v0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->action:I

    .line 143
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl;->c:Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    const/16 v1, 0x8

    iput v1, v0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;->action:I

    .line 144
    new-instance v0, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    invoke-direct {v0, p0}, Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;-><init>(Lcom/neusoft/interconnection/linkconnection/message/InputControl;)V

    iput-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl;->a:Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    return-void
.end method


# virtual methods
.method public getHeader()Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/message/InputControl;->a:Lcom/neusoft/interconnection/linkconnection/message/InputControl$Header;

    return-object v0
.end method
