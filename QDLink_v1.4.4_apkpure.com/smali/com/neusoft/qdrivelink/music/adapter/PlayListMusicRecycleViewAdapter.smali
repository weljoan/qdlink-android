.class public Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PlayListMusicRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$HeaderViewHolder;,
        Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;
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

.field private myRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private onItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

.field private playAllonItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

.field private selPosition:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 46
    iput v0, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mHeader:I

    .line 47
    iput v0, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mFoot:I

    const/4 v0, -0x1

    .line 130
    iput v0, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->selPosition:I

    .line 50
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    .line 51
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->list:Ljava/util/List;

    .line 52
    iput-object p3, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->myRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->onItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mHeader:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 121
    iget v0, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mHeader:I

    if-eqz v0, :cond_0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 74
    instance-of v0, p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;

    if-eqz v0, :cond_1

    .line 75
    check-cast p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;

    iget-object v0, p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->list:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mHeader:I

    sub-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getSongName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->tv_songer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->list:Ljava/util/List;

    iget v2, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mHeader:I

    sub-int v2, p2, v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getArtistName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget v0, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->selPosition:I

    if-ne p2, v0, :cond_0

    .line 79
    iget-object v0, p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f04002c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    iget-object v0, p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->tv_songer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 82
    :cond_0
    iget-object v0, p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->tv_name:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0400bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 83
    iget-object v0, p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->tv_songer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0400b8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    :goto_0
    iget-object p1, p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->linearlayout_playmusic:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$1;-><init>(Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 60
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0a004b

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;-><init>(Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_0
    if-nez p2, :cond_1

    .line 66
    iget-object p2, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->mContext:Landroid/content/Context;

    const v0, 0x7f0a003c

    invoke-static {p2, v0, p1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$HeaderViewHolder;-><init>(Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;Landroid/view/View;)V

    return-object p2

    :cond_1
    return-object p1
.end method

.method public setOnItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->onItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-void
.end method

.method public setPlayAllonItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->playAllonItemClickListener:Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    return-void
.end method

.method public setSelectedPosition(I)V
    .locals 1

    .line 132
    iput p1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->selPosition:I

    .line 133
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->myRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget v0, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->selPosition:I

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 134
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->notifyDataSetChanged()V

    return-void
.end method
