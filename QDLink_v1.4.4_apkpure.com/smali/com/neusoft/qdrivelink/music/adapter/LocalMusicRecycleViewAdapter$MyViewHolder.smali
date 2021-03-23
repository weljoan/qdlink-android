.class Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LocalMusicRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field linearlayout_playmusic:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

.field tv_name:Landroid/widget/TextView;

.field tv_songer:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter$MyViewHolder;->this$0:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    .line 139
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f070174

    .line 140
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter$MyViewHolder;->tv_name:Landroid/widget/TextView;

    const p1, 0x7f070189

    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter$MyViewHolder;->tv_songer:Landroid/widget/TextView;

    const p1, 0x7f0700e6

    .line 142
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter$MyViewHolder;->linearlayout_playmusic:Landroid/widget/LinearLayout;

    return-void
.end method
