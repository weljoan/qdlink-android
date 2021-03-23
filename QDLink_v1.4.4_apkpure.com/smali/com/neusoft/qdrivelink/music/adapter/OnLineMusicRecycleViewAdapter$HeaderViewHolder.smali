.class Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$HeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "OnLineMusicRecycleViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeaderViewHolder"
.end annotation


# instance fields
.field qqmusic_releativelayout:Landroid/widget/RelativeLayout;

.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;


# direct methods
.method public constructor <init>(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;Landroid/view/View;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$HeaderViewHolder;->this$0:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    .line 186
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f07011d

    .line 187
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/RelativeLayout;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$HeaderViewHolder;->qqmusic_releativelayout:Landroid/widget/RelativeLayout;

    return-void
.end method
