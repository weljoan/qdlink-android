.class Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2$1;
.super Ljava/lang/Object;
.source "OtherAppView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2$1;->this$1:Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2$1;->this$1:Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$100(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)V

    .line 146
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2$1;->this$1:Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$500(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2$1;->this$1:Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;

    iget-object v0, v0, Lcom/neusoft/qdrivelink/otherapp/OtherAppView$2;->this$0:Lcom/neusoft/qdrivelink/otherapp/OtherAppView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/otherapp/OtherAppView;->access$500(Lcom/neusoft/qdrivelink/otherapp/OtherAppView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->dismissCustomDialog()V

    :cond_0
    return-void
.end method
