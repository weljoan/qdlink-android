.class Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$2;
.super Ljava/lang/Object;
.source "XRefreshView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->stopRefresh(Z)V
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

    .line 865
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 869
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->mPullRefreshing:Z

    .line 870
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$700(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 871
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$800(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    .line 873
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView$2;->this$0:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;->access$902(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;J)J

    return-void
.end method
