.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$3;
.super Ljava/lang/Object;
.source "XRefreshContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->doRecyclerViewloadComplete(Z)V
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

    .line 412
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$3;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$3;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;->loadCompleted()V

    return-void
.end method
