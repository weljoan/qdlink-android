.class Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$2;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


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

    .line 84
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$300(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$300(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    .line 91
    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$400(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result v4

    move-object v2, p1

    move-object v3, p2

    move-wide v5, p4

    .line 90
    invoke-interface/range {v1 .. v6}, Landroid/widget/AdapterView$OnItemLongClickListener;->onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
