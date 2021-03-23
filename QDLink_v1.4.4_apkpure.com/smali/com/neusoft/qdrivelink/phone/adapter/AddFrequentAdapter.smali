.class public Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;
.super Landroid/widget/BaseAdapter;
.source "AddFrequentAdapter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;,
        Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$HeaderViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation
.end field

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tempdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->tempdatas:Ljava/util/ArrayList;

    .line 39
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->context:Landroid/content/Context;

    .line 40
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->sections:Ljava/util/ArrayList;

    return-void
.end method

.method private getbg(I)I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/high16 p1, -0x1000000

    return p1

    :cond_0
    const p1, 0x7f0b0075

    return p1

    :cond_1
    const p1, 0x7f0b0076

    return p1

    :cond_2
    const p1, 0x7f0b007f

    return p1
.end method


# virtual methods
.method public addCheckCount(Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V
    .locals 2

    .line 178
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getTitle_icon()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getTitle_icon()Landroid/graphics/Bitmap;

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/phone/Utils/BitmapUtil;->bitmaptoString(Landroid/graphics/Bitmap;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->setTitle_icon_str(Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->tempdatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearTempdatas()V
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->tempdatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public deCheckCount(Lcom/neusoft/qdrivelink/phone/bean/SortBean;)V
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->tempdatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHeaderId(I)J
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    int-to-long v0, p1

    return-wide v0
.end method

.method public getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 123
    new-instance p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$HeaderViewHolder;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$HeaderViewHolder;-><init>(Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;)V

    .line 124
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a002a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f07010e

    .line 125
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$HeaderViewHolder;->text:Landroid/widget/TextView;

    .line 126
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 128
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$HeaderViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 132
    iget-object p2, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$HeaderViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p3
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 149
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 155
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    .line 156
    :goto_1
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 157
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object v2

    if-ne p1, v2, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_2
    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 168
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 173
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->sections:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTempdatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->tempdatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 76
    new-instance p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;-><init>()V

    .line 77
    iget-object p3, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0a002b

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f07011b

    .line 78
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;->phone_list_name:Landroid/widget/TextView;

    const v0, 0x7f07011c

    .line 79
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;->phone_list_number:Landroid/widget/TextView;

    const v0, 0x7f070119

    .line 80
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;->phone_check:Landroid/widget/ImageView;

    const v0, 0x7f07011a

    .line 81
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;->phone_icon:Landroid/widget/ImageView;

    .line 82
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 84
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 86
    :goto_0
    iget-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;->phone_check:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    iget-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;->phone_icon:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;->phone_list_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;->phone_list_number:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/neusoft/qdrivelink/phone/PhoneModel;->frequentList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    .line 95
    :cond_1
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->tempdatas:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 103
    :cond_2
    :goto_1
    iget-object p1, p2, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter$ViewHolder;->phone_check:Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->getbg(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-object p3
.end method

.method public setData(Ljava/util/List;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->sections:Ljava/util/ArrayList;

    .line 46
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->datas:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 47
    :cond_0
    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/adapter/AddFrequentAdapter;->sections:Ljava/util/ArrayList;

    return-void
.end method
