.class final Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils$2;
.super Ljava/lang/Object;
.source "MyXUtils.java"

# interfaces
.implements Lorg/xutils/DbManager$TableCreateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initDB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTableCreated(Lorg/xutils/DbManager;Lorg/xutils/db/table/TableEntity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xutils/DbManager;",
            "Lorg/xutils/db/table/TableEntity<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
