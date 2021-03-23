.class public Lcom/neusoft/interconnection/linkconnection/message/AppMessage$Buffer;
.super Ljava/lang/Object;
.source "AppMessage.java"


# instance fields
.field a:[B

.field private b:I

.field private synthetic c:Lcom/neusoft/interconnection/linkconnection/message/AppMessage;


# direct methods
.method public constructor <init>(Lcom/neusoft/interconnection/linkconnection/message/AppMessage;[BI)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage$Buffer;->c:Lcom/neusoft/interconnection/linkconnection/message/AppMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p2, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage$Buffer;->a:[B

    .line 150
    iput p3, p0, Lcom/neusoft/interconnection/linkconnection/message/AppMessage$Buffer;->b:I

    return-void
.end method
