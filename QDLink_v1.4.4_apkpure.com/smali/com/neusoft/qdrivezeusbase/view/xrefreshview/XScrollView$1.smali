.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;
.super Ljava/lang/Object;
.source "XScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 65
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$000(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)I

    move-result v0

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->getScrollY()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$300(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Z

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;->onScrollStateChanged(Landroid/widget/ScrollView;IZ)V

    .line 68
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;

    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;->access$200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView;)Z

    move-result v2

    invoke-interface {v0, v1, v3, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XScrollView$OnScrollListener;->onScrollStateChanged(Landroid/widget/ScrollView;IZ)V

    :cond_0
    return-void
.end method
