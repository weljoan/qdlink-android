.class public Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SearchlMusicRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$HeaderViewHolder;,
        Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;
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
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field private mFoot:I

.field private mHeader:I

.field private onItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

.field private playAllonItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

.field private selPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;)V"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mHeader:I

    .line 45
    iput v0, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mFoot:I

    const/4 v0, -0x1

    .line 127
    iput v0, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->selPosition:I

    .line 48
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 49
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->onItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mHeader:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 118
    iget v0, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mHeader:I

    if-eqz v0, :cond_0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 4

    .line 71
    instance-of v0, p1, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;

    if-eqz v0, :cond_1

    .line 72
    move-object v0, p1

    check-cast v0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;

    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->list:Ljava/util/List;

    iget v3, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mHeader:I

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getSongName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;->tv_songer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->list:Ljava/util/List;

    iget v3, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mHeader:I

    sub-int v3, p2, v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v2}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getArtistName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    iget v1, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->selPosition:I

    if-ne p2, v1, :cond_0

    .line 76
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f04002c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;->tv_songer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0400bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v1, v0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;->tv_songer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0400b8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    :goto_0
    iget-object v0, v0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;->linearlayout_playmusic:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$1;-><init>(Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_1
    instance-of p1, p1, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$HeaderViewHolder;

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 57
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0a004b

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 58
    new-instance p2, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$MyViewHolder;-><init>(Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 63
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0a003e

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter$HeaderViewHolder;-><init>(Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method public setList()V
    .locals 1

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->list:Ljava/util/List;

    .line 160
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->onItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-void
.end method

.method public setPlayAllonItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->playAllonItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 0

    .line 129
    iput p1, p0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->selPosition:I

    .line 130
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
