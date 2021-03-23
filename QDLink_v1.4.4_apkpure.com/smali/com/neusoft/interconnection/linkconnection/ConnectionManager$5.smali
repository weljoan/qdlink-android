.class Lcom/neusoft/interconnection/linkconnection/ConnectionManager$5;
.super Ljava/lang/Object;
.source "ConnectionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V
    .locals 0

    .line 2382
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$5;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2385
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$5;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    iget-object v1, v0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a:Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;

    invoke-virtual {v1}, Lcom/neusoft/interconnection/linkconnection/newmessage/CommonHeader;->getBuffer()[B

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$5;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    iget-object v2, v2, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->b:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->a(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;[B[B)V

    return-void
.end method
