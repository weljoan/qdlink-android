.class public Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "OnLineMusicRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$FooterViewHolder;,
        Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$HeaderViewHolder;,
        Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final ITEM_CONTENT:I = 0x1

.field private static final ITEM_FOOT:I = 0x2

.field private static final ITEM_HEADER:I


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mFoot:I

.field private mHeader:I

.field private onItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

.field private onItemLongClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemLongClickListener;

.field private qqonItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

.field private roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    const/4 v0, 0x1

    .line 40
    iput v0, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mHeader:I

    .line 41
    iput v0, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mFoot:I

    .line 45
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->list:Ljava/util/List;

    .line 47
    new-instance p1, Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/neusoft/qdrivelink/music/customview/RoundTransform;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->onItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->qqonItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 150
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mHeader:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 158
    iget v0, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mHeader:I

    if-eqz v0, :cond_0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 104
    instance-of v0, p1, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;

    if-eqz v0, :cond_0

    .line 105
    move-object v0, p1

    check-cast v0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;->txtview_newmusic_onlinealbumtxt:Lcom/neusoft/qdrivelink/music/customview/MarqueeText;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->list:Ljava/util/List;

    iget v3, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mHeader:I

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;

    invoke-virtual {v2}, Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/neusoft/qdrivelink/music/customview/MarqueeText;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->list:Ljava/util/List;

    add-int/lit8 v3, p2, -0x1

    .line 109
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;

    invoke-virtual {v2}, Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;->getIcon()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    const/high16 v3, 0x42480000    # 50.0f

    .line 110
    invoke-static {v3, v2}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->dip2px(FLandroid/content/Context;)I

    move-result v2

    iget-object v4, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->dip2px(FLandroid/content/Context;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    .line 111
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->transform(Lcom/squareup/picasso/Transformation;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    sget-object v2, Lcom/squareup/picasso/MemoryPolicy;->NO_CACHE:Lcom/squareup/picasso/MemoryPolicy;

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/squareup/picasso/MemoryPolicy;

    const/4 v4, 0x0

    sget-object v5, Lcom/squareup/picasso/MemoryPolicy;->NO_STORE:Lcom/squareup/picasso/MemoryPolicy;

    aput-object v5, v3, v4

    .line 112
    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/RequestCreator;->memoryPolicy(Lcom/squareup/picasso/MemoryPolicy;[Lcom/squareup/picasso/MemoryPolicy;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    const v2, 0x7f0b002d

    .line 113
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->error(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v1

    iget-object v2, v0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;->btn_newmusic_onlinealbum:Landroid/widget/ImageView;

    .line 115
    invoke-virtual {v1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 117
    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;->linearlayout_online_item:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$1;-><init>(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    :cond_0
    instance-of v0, p1, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$HeaderViewHolder;

    if-eqz v0, :cond_1

    .line 128
    check-cast p1, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$HeaderViewHolder;

    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$HeaderViewHolder;->qqmusic_releativelayout:Landroid/widget/RelativeLayout;

    new-instance v0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$2;

    invoke-direct {v0, p0, p2}, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$2;-><init>(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 81
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0043

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 82
    new-instance p2, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;-><init>(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 87
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0035

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 88
    new-instance p2, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$HeaderViewHolder;-><init>(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method public setOnItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->onItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-void
.end method

.method public setOnItemLongClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemLongClickListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->onItemLongClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemLongClickListener;

    return-void
.end method

.method public setOnItemQQMusicClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->qqonItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-void
.end method
