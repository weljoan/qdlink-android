.class Lcom/tbruyelle/rxpermissions/RxPermissions$1;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lrx/Observable$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions/RxPermissions;->ensure([Ljava/lang/String;)Lrx/Observable$Transformer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/Observable$Transformer<",
        "Ljava/lang/Object;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->call(Lrx/Observable;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method

.method public call(Lrx/Observable;)Lrx/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable<",
            "Ljava/lang/Object;",
            ">;)",
            "Lrx/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->val$permissions:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$1;->val$permissions:[Ljava/lang/String;

    array-length v0, v0

    .line 78
    invoke-virtual {p1, v0}, Lrx/Observable;->buffer(I)Lrx/Observable;

    move-result-object p1

    new-instance v0, Lcom/tbruyelle/rxpermissions/RxPermissions$1$1;

    invoke-direct {v0, p0}, Lcom/tbruyelle/rxpermissions/RxPermissions$1$1;-><init>(Lcom/tbruyelle/rxpermissions/RxPermissions$1;)V

    .line 79
    invoke-virtual {p1, v0}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
