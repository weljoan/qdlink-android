.class Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;
.super Ljava/lang/Object;
.source "StickyListHeadersListView.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->setMultiChoiceModeListenerWrapper()V
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

    .line 558
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 587
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 588
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 578
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 571
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    :cond_0
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7

    .line 597
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$400(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->translateListViewPosition(I)I

    move-result v3

    .line 599
    iget-object p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {p2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v1

    move-object v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView$4;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;->access$700(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListView;)Landroid/widget/AbsListView$MultiChoiceModeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
