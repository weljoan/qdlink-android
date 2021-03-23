.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;
.super Ljava/lang/Object;
.source "XRefreshView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->initWithContext(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 217
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$002(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;Z)Z

    .line 218
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$100(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$200(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->startRefresh()V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$300(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->setHeadMoveLargestDistence(I)V

    .line 222
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$400(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    .line 223
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$500(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    .line 224
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 225
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->enableCenterView(Z)V

    .line 226
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$602(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;I)I

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {v0, p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->removeViewTreeObserver(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
