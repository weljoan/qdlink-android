.class Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OnLineMusicRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyViewHolder"
.end annotation


# instance fields
.field btn_newmusic_onlinealbum:Landroid/widget/ImageView;

.field linearlayout_online_item:Landroidx/constraintlayout/widget/ConstraintLayout;

.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

.field txtview_newmusic_onlinealbumtxt:Lcom/neusoft/qdrivelink/music/customview/MarqueeText;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;->this$0:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    .line 175
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0701a6

    .line 176
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/music/customview/MarqueeText;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;->txtview_newmusic_onlinealbumtxt:Lcom/neusoft/qdrivelink/music/customview/MarqueeText;

    const p1, 0x7f070051

    .line 177
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;->btn_newmusic_onlinealbum:Landroid/widget/ImageView;

    const p1, 0x7f0700e4

    .line 178
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$MyViewHolder;->linearlayout_online_item:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-void
.end method
