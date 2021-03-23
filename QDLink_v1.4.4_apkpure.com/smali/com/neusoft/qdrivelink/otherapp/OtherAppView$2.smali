.class Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;
.super Ljava/lang/Object;
.source "OtherAppView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->initAppList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 138
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$300(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;

    move-result-object v1

    invoke-interface {v1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppContract$Presenter;->getAllAppData()Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$402(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 139
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$400(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "KEY_ALL_APP"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$002(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 140
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$400(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "KEY_SELECT_APP"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$202(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 141
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$600(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/MainActivity;

    new-instance v1, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2$1;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2$1;-><init>(Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
