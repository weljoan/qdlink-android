.class Lcom/neusoft/interconnection/linkconnection/ConnectionManager$2;
.super Ljava/util/TimerTask;
.source "ConnectionManager.java"


# instance fields
.field private synthetic a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;


# direct methods
.method constructor <init>(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V
    .locals 0

    .line 349
    iput-object p1, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$2;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/neusoft/interconnection/linkconnection/ConnectionManager$2;->a:Lcom/neusoft/interconnection/linkconnection/ConnectionManager;

    invoke-static {v0}, Lcom/neusoft/interconnection/linkconnection/ConnectionManager;->b(Lcom/neusoft/interconnection/linkconnection/ConnectionManager;)V

    return-void
.end method
