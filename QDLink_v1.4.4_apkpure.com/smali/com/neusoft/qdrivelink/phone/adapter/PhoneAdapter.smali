.class public Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;
.super Landroid/widget/BaseAdapter;
.source "PhoneAdapter.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/phone/adapter/StickyListHeadersAdapter;
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;,
        Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;
    }
.end annotation


# instance fields
.field private contactPhoto:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

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

.field private headHeight:I

.field private sections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->context:Landroid/content/Context;

    .line 37
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->sections:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getHeadViewHeight()I
    .locals 1

    .line 138
    iget v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->headHeight:I

    return v0
.end method

.method public getHeaderId(I)J
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

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

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 104
    new-instance p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;-><init>(Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;)V

    .line 105
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0a002a

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p3

    const v1, 0x7f07010e

    .line 106
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;->text:Landroid/widget/TextView;

    const v1, 0x7f070064

    .line 107
    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v1, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;->cl_contact_list_header:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 108
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;

    .line 112
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->headHeight:I

    .line 113
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getSortKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 115
    iget-object v1, p3, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;->text:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p1, v1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    goto :goto_1

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 123
    :goto_1
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 132
    iget-object p1, p3, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;->text:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 133
    iget-object p1, p3, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$HeaderViewHolder;->cl_contact_list_header:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

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

    .line 152
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lt p1, v0, :cond_0

    .line 153
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 159
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x0

    .line 160
    :goto_1
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 161
    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

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

    .line 171
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    .line 172
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 177
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->sections:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

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

    .line 147
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->sections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_0

    .line 74
    new-instance p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;

    invoke-direct {p2}, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;-><init>()V

    .line 75
    iget-object p3, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->context:Landroid/content/Context;

    const v0, 0x7f0a002b

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    const v0, 0x7f07011b

    .line 76
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;->phone_list_name:Landroid/widget/TextView;

    const v0, 0x7f07011c

    .line 77
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;->phone_list_number:Landroid/widget/TextView;

    const v0, 0x7f07011a

    .line 78
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;->phone_list_icon:Landroid/widget/ImageView;

    const v0, 0x7f070119

    .line 79
    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;->phone_list_check:Landroid/widget/ImageView;

    .line 80
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 82
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;

    move-object v3, p3

    move-object p3, p2

    move-object p2, v3

    .line 84
    :goto_0
    iget-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;->phone_list_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;->phone_list_number:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v0, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;->phone_list_check:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->contactPhoto:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 89
    iget-object v1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/phone/bean/SortBean;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/phone/bean/SortBean;->getIcon_id()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    .line 93
    :cond_1
    iget-object p1, p2, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter$ViewHolder;->phone_list_icon:Landroid/widget/ImageView;

    const p2, 0x7f0b0093

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    return-object p3
.end method

.method public setData(Ljava/util/List;Ljava/util/ArrayList;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/phone/bean/SortBean;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->sections:Ljava/util/ArrayList;

    .line 43
    iput-object p3, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->contactPhoto:Ljava/util/HashMap;

    .line 44
    iget-object p1, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->datas:Ljava/util/List;

    if-nez p1, :cond_0

    return-void

    .line 45
    :cond_0
    iput-object p2, p0, Lcom/neusoft/qdrivelink/phone/adapter/PhoneAdapter;->sections:Ljava/util/ArrayList;

    return-void
.end method
