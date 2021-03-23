.class Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LocalMusicRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field relativeLayout_musicone:Landroid/widget/LinearLayout;

.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter$HeaderViewHolder;->this$0:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    .line 150
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f070125

    .line 151
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter$HeaderViewHolder;->relativeLayout_musicone:Landroid/widget/LinearLayout;

    return-void
.end method
