.class public Lcom/neusoft/qdrivelink/music/playlist/PlayListView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "PlayListView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/playlist/PlayListContract$View;


# instance fields
.field private menu_back_info:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ec
    .end annotation
.end field

.field private myHandler:Landroid/os/Handler;

.field private onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

.field presenter:Lcom/neusoft/qdrivelink/music/playlist/PlayListContract$Presenter;

.field private recyclerview_online_music_list:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070121
    .end annotation
.end field

.field private txt_title:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0701a4
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 61
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->myHandler:Landroid/os/Handler;

    .line 62
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 54
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->myHandler:Landroid/os/Handler;

    .line 67
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 54
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->myHandler:Landroid/os/Handler;

    .line 72
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 54
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->myHandler:Landroid/os/Handler;

    .line 77
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)Landroid/content/Context;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)Landroid/content/Context;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->myHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private backOnClick(Landroid/widget/ImageView;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700ec
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->pageBack()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0a0038

    .line 86
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 87
    new-instance p1, Lcom/neusoft/qdrivelink/music/playlist/PlayListPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListPresenter;-><init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)V

    .line 88
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 90
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->txt_title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    new-instance p1, Landroid/os/Handler;

    new-instance v0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$1;-><init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)V

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->myHandler:Landroid/os/Handler;

    .line 119
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 121
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->recyclerview_online_music_list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 123
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x41b00000    # 22.0f

    invoke-static {v1, v0}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->dip2px(FLandroid/content/Context;)I

    move-result v0

    .line 124
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v2, v1}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->dip2px(FLandroid/content/Context;)I

    move-result v1

    .line 125
    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->recyclerview_online_music_list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;

    invoke-direct {v3, v0, v1}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;-><init>(II)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 127
    new-instance v0, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    .line 128
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->recyclerview_online_music_list:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 134
    new-instance v0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$2;

    invoke-direct {v0, p0, p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$2;-><init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 145
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    new-instance v0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$3;-><init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setOnItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V

    .line 155
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    new-instance v0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$4;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$4;-><init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setPlayAllonItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V

    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/neusoft/qdrivelink/music/playlist/PlayListContract$Presenter;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->presenter:Lcom/neusoft/qdrivelink/music/playlist/PlayListContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 28
    check-cast p1, Lcom/neusoft/qdrivelink/music/playlist/PlayListContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->setPresenter(Lcom/neusoft/qdrivelink/music/playlist/PlayListContract$Presenter;)V

    return-void
.end method

.method public viewResume()V
    .locals 2

    .line 168
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 170
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v1, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$5;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$5;-><init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setPlayState(Lcom/neusoft/qdrivelink/music/service/PlayState;)V

    .line 180
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/playlist/PlayListView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;->setSelectedPosition(I)V

    .line 182
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v1, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$6;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/music/playlist/PlayListView$6;-><init>(Lcom/neusoft/qdrivelink/music/playlist/PlayListView;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setPlayListRefrsh(Lcom/neusoft/qdrivelink/music/service/PlayListRefrsh;)V

    :cond_0
    return-void
.end method
