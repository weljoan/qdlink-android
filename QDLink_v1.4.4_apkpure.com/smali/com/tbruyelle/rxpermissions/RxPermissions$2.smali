.class Lcom/tbruyelle/rxpermissions/RxPermissions$2;
.super Ljava/lang/Object;
.source "RxPermissions.java"

# interfaces
.implements Lrx/Observable$Transformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tbruyelle/rxpermissions/RxPermissions;->ensureEach([Ljava/lang/String;)Lrx/Observable$Transformer;
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
        "Lcom/tbruyelle/rxpermissions/Permission;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

.field final synthetic val$permissions:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/tbruyelle/rxpermissions/RxPermissions;[Ljava/lang/String;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$2;->this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

    iput-object p2, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$2;->val$permissions:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 110
    check-cast p1, Lrx/Observable;

    invoke-virtual {p0, p1}, Lcom/tbruyelle/rxpermissions/RxPermissions$2;->call(Lrx/Observable;)Lrx/Observable;

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
            "Lcom/tbruyelle/rxpermissions/Permission;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$2;->this$0:Lcom/tbruyelle/rxpermissions/RxPermissions;

    iget-object v1, p0, Lcom/tbruyelle/rxpermissions/RxPermissions$2;->val$permissions:[Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/tbruyelle/rxpermissions/RxPermissions;->request(Lrx/Observable;[Ljava/lang/String;)Lrx/Observable;

    move-result-object p1

    return-object p1
.end method
