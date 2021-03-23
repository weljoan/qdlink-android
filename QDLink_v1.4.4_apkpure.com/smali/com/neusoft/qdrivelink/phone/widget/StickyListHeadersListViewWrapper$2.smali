.class Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;
.super Ljava/lang/Object;
.source "StickyListHeadersListViewWrapper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 62
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$400(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 64
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->removeViewAt(I)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$500(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$500(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->addView(Landroid/view/View;)V

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper$2;->this$0:Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;->access$402(Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersListViewWrapper;Z)Z

    return-void
.end method
