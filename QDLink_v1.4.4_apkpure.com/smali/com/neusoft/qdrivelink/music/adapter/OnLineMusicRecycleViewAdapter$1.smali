.class Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$1;
.super Ljava/lang/Object;
.source "OnLineMusicRecycleViewAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;I)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$1;->this$0:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    iput p2, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$1;->this$0:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->access$000(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$1;->this$0:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;->access$000(Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter$1;->val$position:I

    invoke-interface {v0, p1, v1}, Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
