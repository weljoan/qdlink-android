.class Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "PlayListMusicRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field linearlayout_playmusic:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

.field tv_name:Landroid/widget/TextView;

.field tv_songer:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->this$0:Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    .line 143
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f070174

    .line 144
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->tv_name:Landroid/widget/TextView;

    const p1, 0x7f070189

    .line 145
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->tv_songer:Landroid/widget/TextView;

    const p1, 0x7f0700e6

    .line 146
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter$MyViewHolder;->linearlayout_playmusic:Landroid/widget/LinearLayout;

    return-void
.end method
