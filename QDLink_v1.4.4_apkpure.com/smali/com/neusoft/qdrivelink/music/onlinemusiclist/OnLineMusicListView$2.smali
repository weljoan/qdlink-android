.class Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;
.super Ljava/lang/Object;
.source "OnLineMusicListView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

.field final synthetic val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    .line 178
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eq v0, v1, :cond_6

    const/16 v1, 0x11

    if-eq v0, v1, :cond_5

    const/16 v1, 0x13

    if-eq v0, v1, :cond_4

    const/16 v1, 0x106

    if-eq v0, v1, :cond_1

    const/16 v1, 0x109

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 246
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    goto/16 :goto_0

    .line 233
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_9

    const v0, 0x7f0d003b

    if-eq p1, v2, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    goto/16 :goto_0

    .line 240
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$1200(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 237
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$1100(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->showToastShort(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 255
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$200(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$1500(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$600(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 251
    :cond_5
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$1300(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$1400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 180
    :cond_6
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$100(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->dismissCustomDialog()V

    .line 182
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_8

    .line 183
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$200(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 184
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$300(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    new-instance v0, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$500(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;

    move-result-object v1

    sget-object v3, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->onLineMusicList:Ljava/util/List;

    invoke-direct {v0, v1, v3}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$402(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    .line 190
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$300(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 191
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentAlbumName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$600(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 192
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object p1

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    .line 196
    :cond_7
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$1;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 207
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$2;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setOnItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V

    .line 217
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2$3;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setPlayAllonItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V

    goto :goto_0

    .line 228
    :cond_8
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$200(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;->this$0:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->access$300(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    :cond_9
    :goto_0
    return v4
.end method
