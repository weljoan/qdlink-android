.class Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$1;
.super Landroid/database/DataSetObserver;
.source "StickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)V
    .locals 0

    .line 70
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$002(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;Z)Z

    .line 75
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$102(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;Ljava/lang/Long;)Ljava/lang/Long;

    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$102(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;Ljava/lang/Long;)Ljava/lang/Long;

    .line 81
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$1;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$200(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->removeHeader()Landroid/view/View;

    return-void
.end method
