.class public Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersSectionIndexerAdapterWrapper;
.super Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;
.source "StickyListHeadersSectionIndexerAdapterWrapper.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private final delegate:Landroid/widget/SectionIndexer;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;-><init>(Landroid/content/Context;Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;)V

    .line 15
    check-cast p2, Landroid/widget/SectionIndexer;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersSectionIndexerAdapterWrapper;->delegate:Landroid/widget/SectionIndexer;

    return-void
.end method


# virtual methods
.method public bridge synthetic areAllItemsEnabled()Z
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->areAllItemsEnabled()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic getCount()I
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getHeaderId(I)J
    .locals 2

    .line 8
    invoke-super {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getHeaderId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getItemId(I)J
    .locals 2

    .line 8
    invoke-super {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemId(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getItemViewType(I)I
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getItemViewType(I)I

    move-result p1

    return p1
.end method

.method public getPositionForSection(I)I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersSectionIndexerAdapterWrapper;->delegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result p1

    .line 21
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersSectionIndexerAdapterWrapper;->translateAdapterPosition(I)I

    move-result p1

    return p1
.end method

.method public getSectionForPosition(I)I
    .locals 1

    .line 27
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersSectionIndexerAdapterWrapper;->translateListViewPosition(I)I

    move-result p1

    .line 28
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersSectionIndexerAdapterWrapper;->delegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersSectionIndexerAdapterWrapper;->delegate:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getViewTypeCount()I
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->getViewTypeCount()I

    move-result v0

    return v0
.end method

.method public bridge synthetic hasStableIds()Z
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->hasStableIds()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isEnabled(I)Z
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->isEnabled(I)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic notifyDataSetChanged()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->notifyDataSetChanged()V

    return-void
.end method

.method public bridge synthetic notifyDataSetInvalidated()V
    .locals 0

    .line 8
    invoke-super {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->notifyDataSetInvalidated()V

    return-void
.end method

.method public bridge synthetic registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 0

    .line 8
    invoke-super {p0, p1}, Lcom/neusoft/qdrivelink/phone/widget/StickyListHeadersAdapterWrapper;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    return-void
.end method
