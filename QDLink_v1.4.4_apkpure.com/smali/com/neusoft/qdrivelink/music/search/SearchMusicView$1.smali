.class Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;
.super Ljava/lang/Object;
.source "SearchMusicView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->initView(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

.field final synthetic val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 220
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const v2, 0x7f0d003b

    if-eq v0, v1, :cond_3

    const/16 v1, 0x105

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 261
    :cond_0
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 268
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$900(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$800(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->showToastShort(Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_3
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$000(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->dismissCustomDialog()V

    .line 224
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-nez p1, :cond_4

    .line 226
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    new-instance v0, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$200(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {v2}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$300(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {p1, v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$102(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;

    .line 227
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$400(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$100(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 230
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->val$gridLayoutManagerlocal:Landroidx/recyclerview/widget/GridLayoutManager;

    new-instance v0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$1;-><init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 241
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$100(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;

    move-result-object p1

    new-instance v0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1$2;-><init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->setOnItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V

    goto :goto_0

    .line 255
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;->this$0:Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-static {p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->access$700(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->showToastShort(Ljava/lang/String;)V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
