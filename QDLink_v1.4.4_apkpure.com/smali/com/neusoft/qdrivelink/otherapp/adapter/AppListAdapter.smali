.class public Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "AppListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;
    }
.end annotation


# instance fields
.field private clickListener:Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;

.field private dataList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;"
        }
    .end annotation
.end field

.field private inflater:Landroid/view/LayoutInflater;

.field private isEditFlag:Z

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;)V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->clickListener:Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->isEditFlag:Z

    .line 58
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->mContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->dataList:Ljava/util/ArrayList;

    .line 60
    iget-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->inflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->isEditFlag:Z

    return p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;)Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->clickListener:Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;

    return-object p0
.end method

.method private initHolder(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;I)V
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->dataList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;

    .line 86
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->getAppType()I

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$000(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$100(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->getAppName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$200(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$500(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    new-instance v2, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$1;-><init>(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;I)V

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;->isSelected()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 104
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$000(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/ImageView;

    move-result-object p2

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 105
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$100(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 107
    :cond_0
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$000(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/ImageView;

    move-result-object p2

    const v0, 0x3e99999a    # 0.3f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 108
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$100(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/TextView;

    move-result-object p1

    const p2, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$000(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/ImageView;

    move-result-object p2

    const v0, 0x7f06008f

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$100(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/TextView;

    move-result-object p2

    const v0, 0x7f0d0064

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(I)V

    .line 114
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$200(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/ImageView;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 115
    invoke-static {p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;->access$200(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;)Landroid/widget/ImageView;

    move-result-object p1

    new-instance p2, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$2;

    invoke-direct {p2, p0}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$2;-><init>(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->dataList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 131
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public isEditFlag()Z
    .locals 1

    .line 180
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->isEditFlag:Z

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1

    .line 74
    instance-of v0, p1, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;

    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->initHolder(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;I)V

    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 67
    iget-object p2, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0a0027

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;

    invoke-direct {p2, p0, p1}, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter$TypeHolder;-><init>(Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public setAppClickListener(Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->clickListener:Lcom/neusoft/qdrivelink/otherapp/inter/AppClickListener;

    return-void
.end method

.method public setDataList(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivelink/otherapp/bean/MyAppInformationBean;",
            ">;)V"
        }
    .end annotation

    .line 172
    iput-object p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->dataList:Ljava/util/ArrayList;

    return-void
.end method

.method public setEditFlag(Z)V
    .locals 0

    .line 176
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/otherapp/adapter/AppListAdapter;->isEditFlag:Z

    return-void
.end method
