.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter$1;
.super Ljava/lang/Object;
.source "XRefreshViewFooter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->callWhenNotAutoLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;

.field final synthetic val$xRefreshView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter$1;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter$1;->val$xRefreshView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 40
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter$1;->val$xRefreshView:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->notifyLoadMore()V

    return-void
.end method
