.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$4;
.super Ljava/lang/Object;
.source "XRefreshContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->loadCompleted()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 579
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$600(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)V

    .line 580
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$4;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->access$800(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;Z)V

    :cond_0
    return-void
.end method
