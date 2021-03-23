.class public Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "OnLineMusicListView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$View;


# instance fields
.field private bundle:Landroid/os/Bundle;

.field private currentSongName:Ljava/lang/String;

.field private customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

.field private mHandler:Landroid/os/Handler;

.field private menu_back_info:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ec
    .end annotation
.end field

.field private onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

.field presenter:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$Presenter;

.field private recyclerview_online_music_list:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070121
    .end annotation
.end field

.field private songId:Ljava/lang/String;

.field private songName:Ljava/lang/String;

.field private txt_reloaddataonlinelist:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0701a2
    .end annotation
.end field

.field private txt_title:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0701a4
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 86
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 79
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->bundle:Landroid/os/Bundle;

    const-string v1, "-1"

    .line 80
    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songId:Ljava/lang/String;

    const-string v1, "\u840c\u9a7e\u97f3\u4e50"

    .line 81
    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songName:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    const-string v0, ""

    .line 110
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->currentSongName:Ljava/lang/String;

    .line 87
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 79
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->bundle:Landroid/os/Bundle;

    const-string v0, "-1"

    .line 80
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songId:Ljava/lang/String;

    const-string v0, "\u840c\u9a7e\u97f3\u4e50"

    .line 81
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songName:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    const-string p2, ""

    .line 110
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->currentSongName:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 96
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 79
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->bundle:Landroid/os/Bundle;

    const-string v0, "-1"

    .line 80
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songId:Ljava/lang/String;

    const-string v0, "\u840c\u9a7e\u97f3\u4e50"

    .line 81
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songName:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    const-string p2, ""

    .line 110
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->currentSongName:Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 101
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 79
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->bundle:Landroid/os/Bundle;

    const-string p3, "-1"

    .line 80
    iput-object p3, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songId:Ljava/lang/String;

    const-string p3, "\u840c\u9a7e\u97f3\u4e50"

    .line 81
    iput-object p3, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songName:Ljava/lang/String;

    .line 82
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    const-string p2, ""

    .line 110
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->currentSongName:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->requestOnLineMusicSongList(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->txt_title:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/widget/TextView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->txt_reloaddataonlinelist:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->recyclerview_online_music_list:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$402(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)Landroid/content/Context;
    .locals 0

    .line 36
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private imageBackOnClick(Landroid/widget/ImageView;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700ec
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->pageBack()V

    return-void
.end method

.method private reloadOnClick(Landroid/widget/TextView;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0701a2
        }
    .end annotation

    .line 70
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songId:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->requestOnLineMusicSongList(Ljava/lang/String;)V

    return-void
.end method

.method private requestOnLineMusicSongList(Ljava/lang/String;)V
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->presenter:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$Presenter;

    invoke-interface {v0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$Presenter;->requestOnLineMusicSongList(Ljava/lang/String;)V

    .line 306
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->showCustomDialog()V

    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .locals 2

    .line 297
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public initView(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0a0038

    .line 158
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 159
    new-instance p1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListPresenter;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V

    .line 160
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 165
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 167
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->recyclerview_online_music_list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/high16 v0, 0x420c0000    # 35.0f

    .line 169
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->dip2px(F)I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    .line 170
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->dip2px(F)I

    move-result v1

    .line 171
    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->recyclerview_online_music_list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;

    invoke-direct {v3, v0, v1}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;-><init>(II)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 173
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    .line 175
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$2;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    .line 267
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$3;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setPlayMessage(Lcom/neusoft/qdrivelink/music/service/PlayMessage;)V

    return-void
.end method

.method public responseOnLineMusicSongList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;)V"
        }
    .end annotation

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseOnLineMusicSongList iii:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onlinewang"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    sput-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->onLineMusicList:Ljava/util/List;

    .line 313
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x3

    .line 314
    iput v0, p2, Landroid/os/Message;->what:I

    .line 315
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 316
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$Presenter;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->presenter:Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->setPresenter(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListContract$Presenter;)V

    return-void
.end method

.method public viewResume()V
    .locals 3

    .line 113
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 115
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v1, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$1;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView$1;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setPlayState(Lcom/neusoft/qdrivelink/music/service/PlayState;)V

    .line 126
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->getParam()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->bundle:Landroid/os/Bundle;

    .line 127
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->bundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    const-string v1, "key_songid"

    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songId:Ljava/lang/String;

    .line 129
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songName:Ljava/lang/String;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->bundle:Landroid/os/Bundle;

    const-string v2, "key_aublmname"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->bundle:Landroid/os/Bundle;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songName:Ljava/lang/String;

    .line 133
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x11

    .line 134
    iput v1, v0, Landroid/os/Message;->what:I

    .line 135
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 138
    :goto_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x13

    .line 139
    iput v1, v0, Landroid/os/Message;->what:I

    .line 140
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 145
    :cond_1
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentAlbumName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 147
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x109

    .line 148
    iput v1, v0, Landroid/os/Message;->what:I

    .line 149
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 150
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusiclist/OnLineMusicListView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
