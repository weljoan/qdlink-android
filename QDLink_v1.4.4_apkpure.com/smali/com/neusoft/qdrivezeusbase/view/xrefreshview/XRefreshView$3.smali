.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$3;
.super Ljava/lang/Object;
.source "XRefreshView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->stopLoadMore(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

.field final synthetic val$hideFooter:Z

.field final synthetic val$scrollBackDuration:I


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;ZI)V
    .locals 0

    .line 936
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$3;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$3;->val$hideFooter:Z

    iput p3, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$3;->val$scrollBackDuration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 940
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$3;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    iget-boolean v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$3;->val$hideFooter:Z

    iget v2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$3;->val$scrollBackDuration:I

    invoke-static {v0, v1, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$1000(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;ZI)V

    return-void
.end method
