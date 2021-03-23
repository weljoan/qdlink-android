.class public Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/XSpanSizeLookup;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "XSpanSizeLookup.java"


# instance fields
.field private adapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

.field private mSpanSize:I


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;I)V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    const/4 v0, 0x1

    .line 11
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/XSpanSizeLookup;->mSpanSize:I

    .line 14
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/XSpanSizeLookup;->adapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    .line 15
    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/XSpanSizeLookup;->mSpanSize:I

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/XSpanSizeLookup;->adapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isFooter(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/XSpanSizeLookup;->adapter:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/BaseRecyclerAdapter;->isHeader(I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_2

    .line 21
    iget v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/recyclerview/XSpanSizeLookup;->mSpanSize:I

    :cond_2
    return v1
.end method
