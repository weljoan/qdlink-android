.class public Lcom/neusoft/qdrivelink/music/MusicView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "MusicView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/MusicContract$View;


# instance fields
.field private animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

.field audioItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private bundle:Landroid/os/Bundle;

.field private constraintLayouts:[Landroidx/constraintlayout/widget/ConstraintLayout;

.field private count:J

.field private img_music_play:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700a2
    .end annotation
.end field

.field private img_music_search:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700a3
    .end annotation
.end field

.field private intent:Ljava/lang/String;

.field private layout_local:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700c9
    .end annotation
.end field

.field private layout_music_local:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700cb
    .end annotation
.end field

.field private layout_music_online:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700cc
    .end annotation
.end field

.field private layout_online:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ce
    .end annotation
.end field

.field private limit:I

.field private localMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

.field private mHandler:Landroid/os/Handler;

.field mPresenter:Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;

.field private myBundle:Landroid/os/Bundle;

.field private offset:I

.field private onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

.field private random:Ljava/util/Random;

.field private ranklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;",
            ">;"
        }
    .end annotation
.end field

.field private recyclerview_local_music:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07011f
    .end annotation
.end field

.field private recyclerview_online_music:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070120
    .end annotation
.end field

.field private searchList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field public searchString:[Ljava/lang/String;

.field private selectedpage:I

.field private singger:Ljava/lang/String;

.field private song_name:Ljava/lang/String;

.field private textMusicType:[Landroid/widget/TextView;

.field private timer:Ljava/util/Timer;

.field private timerTask:Ljava/util/TimerTask;

.field private total:I

.field private txt_music_local:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070199
    .end annotation
.end field

.field private txt_music_online:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07019a
    .end annotation
.end field

.field private txt_nodata:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07019b
    .end annotation
.end field

.field private txt_reloaddata:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0701a1
    .end annotation
.end field

.field private type:Ljava/lang/String;

.field private types:I

.field private viewTypes:[Landroid/view/View;

.field private view_group_line_local:Landroid/view/View;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0701ac
    .end annotation
.end field

.field private view_group_line_online:Landroid/view/View;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0701ad
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 211
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    .line 54
    iput v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    .line 505
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->myBundle:Landroid/os/Bundle;

    const-string v0, ""

    .line 506
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->singger:Ljava/lang/String;

    .line 507
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->intent:Ljava/lang/String;

    .line 508
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->song_name:Ljava/lang/String;

    .line 509
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->type:Ljava/lang/String;

    const/16 v0, 0x14

    .line 511
    iput v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->total:I

    .line 512
    iput v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->limit:I

    const/4 v0, 0x0

    .line 513
    iput v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->offset:I

    const/4 v0, 0x1

    .line 514
    iput v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->types:I

    const-wide/16 v0, 0x0

    .line 636
    iput-wide v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->count:J

    .line 655
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->audioItems:Ljava/util/List;

    .line 212
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/MusicView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 2

    .line 217
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p2, -0x1

    .line 54
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    const/4 p2, 0x0

    .line 237
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    .line 505
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->myBundle:Landroid/os/Bundle;

    const-string p2, ""

    .line 506
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->singger:Ljava/lang/String;

    .line 507
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->intent:Ljava/lang/String;

    .line 508
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->song_name:Ljava/lang/String;

    .line 509
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->type:Ljava/lang/String;

    const/16 p2, 0x14

    .line 511
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->total:I

    .line 512
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->limit:I

    const/4 p2, 0x0

    .line 513
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->offset:I

    const/4 p2, 0x1

    .line 514
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->types:I

    const-wide/16 v0, 0x0

    .line 636
    iput-wide v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->count:J

    .line 655
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->audioItems:Ljava/util/List;

    .line 218
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/MusicView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 223
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, -0x1

    .line 54
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    const/4 p2, 0x0

    .line 237
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    .line 505
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->myBundle:Landroid/os/Bundle;

    const-string p2, ""

    .line 506
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->singger:Ljava/lang/String;

    .line 507
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->intent:Ljava/lang/String;

    .line 508
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->song_name:Ljava/lang/String;

    .line 509
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->type:Ljava/lang/String;

    const/16 p2, 0x14

    .line 511
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->total:I

    .line 512
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->limit:I

    const/4 p2, 0x0

    .line 513
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->offset:I

    const/4 p2, 0x1

    .line 514
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->types:I

    const-wide/16 v0, 0x0

    .line 636
    iput-wide v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->count:J

    .line 655
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->audioItems:Ljava/util/List;

    .line 224
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/MusicView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, -0x1

    .line 54
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    const/4 p2, 0x0

    .line 237
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    .line 505
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->myBundle:Landroid/os/Bundle;

    const-string p2, ""

    .line 506
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->singger:Ljava/lang/String;

    .line 507
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->intent:Ljava/lang/String;

    .line 508
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->song_name:Ljava/lang/String;

    .line 509
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->type:Ljava/lang/String;

    const/16 p2, 0x14

    .line 511
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->total:I

    .line 512
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->limit:I

    const/4 p2, 0x0

    .line 513
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->offset:I

    const/4 p2, 0x1

    .line 514
    iput p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->types:I

    const-wide/16 p2, 0x0

    .line 636
    iput-wide p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->count:J

    .line 655
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->audioItems:Ljava/util/List;

    .line 229
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/MusicView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->txt_reloaddata:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/music/MusicView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->recyclerview_online_music:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/widget/TextView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->txt_nodata:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivelink/music/MusicView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->recyclerview_local_music:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/neusoft/qdrivelink/music/MusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/MusicView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/neusoft/qdrivelink/music/MusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/MusicView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->localMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/LocalMusicRecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/music/MusicView;)Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/neusoft/qdrivelink/music/MusicView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->startPlay()V

    return-void
.end method

.method static synthetic access$202(Lcom/neusoft/qdrivelink/music/MusicView;Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->onLineMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/OnLineMusicRecycleViewAdapter;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/neusoft/qdrivelink/music/MusicView;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->stopPlay()V

    return-void
.end method

.method static synthetic access$2200(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->singger:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->song_name:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/util/Random;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->random:Ljava/util/Random;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/neusoft/qdrivelink/music/MusicView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->types:I

    return p0
.end method

.method static synthetic access$2600(Lcom/neusoft/qdrivelink/music/MusicView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->offset:I

    return p0
.end method

.method static synthetic access$2700(Lcom/neusoft/qdrivelink/music/MusicView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->total:I

    return p0
.end method

.method static synthetic access$2800(Lcom/neusoft/qdrivelink/music/MusicView;)I
    .locals 0

    .line 52
    iget p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->limit:I

    return p0
.end method

.method static synthetic access$2900(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/os/Handler;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/music/MusicView;)Ljava/util/List;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->ranklist:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/os/Bundle;
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->bundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/music/MusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/MusicView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/music/MusicView;)Landroid/content/Context;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/music/MusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 0

    .line 52
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/MusicView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 7

    const v0, 0x7f0a0034

    .line 242
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/music/MusicView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 243
    new-instance p1, Lcom/neusoft/qdrivelink/music/MusicPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/music/MusicPresenter;-><init>(Lcom/neusoft/qdrivelink/music/MusicView;)V

    .line 244
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 246
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->bundle:Landroid/os/Bundle;

    .line 249
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->random:Ljava/util/Random;

    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/String;

    .line 250
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    .line 251
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 252
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0052

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, p1, v2

    .line 253
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0d0053

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, p1, v3

    .line 254
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d0054

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x3

    aput-object v0, p1, v4

    .line 255
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0d0055

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x4

    aput-object v0, p1, v4

    .line 256
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d0056

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x5

    aput-object v0, p1, v5

    .line 257
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d0057

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x6

    aput-object v0, p1, v5

    .line 258
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d0058

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x7

    aput-object v0, p1, v5

    .line 259
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f0d0059

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x8

    aput-object v0, p1, v5

    .line 260
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchString:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0d005a

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v6, 0x9

    aput-object v0, p1, v6

    new-array p1, v3, [Landroid/widget/TextView;

    .line 262
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->txt_music_online:Landroid/widget/TextView;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->txt_music_local:Landroid/widget/TextView;

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->textMusicType:[Landroid/widget/TextView;

    new-array p1, v3, [Landroid/view/View;

    .line 263
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->view_group_line_online:Landroid/view/View;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->view_group_line_local:Landroid/view/View;

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->viewTypes:[Landroid/view/View;

    new-array p1, v3, [Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 264
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->layout_music_online:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v0, p1, v1

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->layout_music_local:Landroidx/constraintlayout/widget/ConstraintLayout;

    aput-object v0, p1, v2

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->constraintLayouts:[Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 266
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->txt_reloaddata:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->txt_nodata:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 268
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->img_music_play:Landroid/widget/ImageView;

    const v0, 0x7f06006f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 269
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->img_music_play:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AnimationDrawable;

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 284
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0, v4, v2, v1}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 286
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->recyclerview_online_music:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/high16 v0, 0x420c0000    # 35.0f

    .line 289
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/music/MusicView;->dip2px(F)I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    .line 290
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivelink/music/MusicView;->dip2px(F)I

    move-result v1

    .line 291
    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->recyclerview_online_music:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;

    invoke-direct {v3, v0, v1}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;-><init>(II)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 294
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/neusoft/qdrivelink/music/MusicView$1;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/qdrivelink/music/MusicView$1;-><init>(Lcom/neusoft/qdrivelink/music/MusicView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    .line 499
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->requestLocalMusicData()V

    return-void
.end method

.method private localLayoutOnClick(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700c9
        }
    .end annotation

    .line 136
    iget p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 138
    iput v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    .line 139
    iget p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->textMusicType:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->viewTypes:[Landroid/view/View;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->constraintLayouts:[Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/neusoft/qdrivelink/music/MusicView;->selectedTabMusicPage(I[Landroid/widget/TextView;[Landroid/view/View;[Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-void
.end method

.method private musicPlayOnClick(Landroid/widget/ImageView;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700a2
        }
    .end annotation

    .line 80
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 81
    new-instance p1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/neusoft/qdrivelink/music/MusicView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0d0031

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/MusicView;->showToastShort(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private musicSearchOnClick(Landroid/widget/ImageView;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700a3
        }
    .end annotation

    .line 68
    new-instance p1, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, v0}, Lcom/neusoft/qdrivelink/music/MusicView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method private onlineLayoutOnClick(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 3
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700ce
        }
    .end annotation

    .line 101
    iget p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 103
    iput p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    .line 104
    iget p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->selectedpage:I

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->textMusicType:[Landroid/widget/TextView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->viewTypes:[Landroid/view/View;

    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->constraintLayouts:[Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/neusoft/qdrivelink/music/MusicView;->selectedTabMusicPage(I[Landroid/widget/TextView;[Landroid/view/View;[Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_0
    return-void
.end method

.method private reloaddataOnClick(Landroid/widget/TextView;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0701a1
        }
    .end annotation

    .line 176
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->requestMusicRankData()V

    return-void
.end method

.method private requestLocalMusicData()V
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mPresenter:Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;->requestLocalMusicData(Landroid/content/Context;)V

    return-void
.end method

.method private requestMusicRankData()V
    .locals 1

    .line 626
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mPresenter:Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;

    invoke-interface {v0}, Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;->requestMusicRankData()V

    return-void
.end method

.method private selectedTabMusicPage(I[Landroid/widget/TextView;[Landroid/view/View;[Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6

    .line 619
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mPresenter:Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getViewContext()Landroid/content/Context;

    move-result-object v4

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;->changeMusicType(I[Landroid/widget/TextView;[Landroid/view/View;Landroid/content/Context;[Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private startPlay()V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 680
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->img_music_play:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    .line 681
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    return-void
.end method

.method private stopPlay()V
    .locals 2

    .line 689
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->animationDrawable:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 691
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->img_music_play:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 692
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->img_music_play:Landroid/widget/ImageView;

    const v1, 0x7f06006f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .locals 2

    .line 596
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public requestSearchMusic(Ljava/lang/String;IIII)V
    .locals 6

    .line 521
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mPresenter:Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;->requestSearchMusic(Ljava/lang/String;IIII)V

    return-void
.end method

.method public responseLocalMusicData(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;)V"
        }
    .end annotation

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseLocalMusicData iii:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "musicwang"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sput-object p2, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localMusicList:Ljava/util/List;

    .line 660
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->audioItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 661
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 662
    iput v1, v0, Landroid/os/Message;->what:I

    .line 663
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 664
    iput p1, v0, Landroid/os/Message;->arg1:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 666
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 668
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public responseMusicRankData(ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/sdk/wangyilibinter/bean/RankListBean;",
            ">;)V"
        }
    .end annotation

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseMusicRankData iii:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "musicwang"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->count:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/neusoft/qdrivelink/music/MusicView;->count:J

    .line 647
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->ranklist:Ljava/util/List;

    .line 648
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x1

    .line 649
    iput v0, p2, Landroid/os/Message;->what:I

    .line 650
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 651
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public responseSearchMusicList(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;)V"
        }
    .end annotation

    .line 527
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/MusicView;->searchList:Ljava/util/List;

    .line 528
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x6

    .line 529
    iput v0, p2, Landroid/os/Message;->what:I

    .line 530
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 531
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public selectedPlayAnim(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->stopPlay()V

    goto :goto_0

    .line 603
    :cond_1
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/MusicView;->startPlay()V

    :goto_0
    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mPresenter:Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/MusicView;->setPresenter(Lcom/neusoft/qdrivelink/music/MusicContract$Presenter;)V

    return-void
.end method

.method public viewResume()V
    .locals 2

    .line 535
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    const-string v0, "textwang"

    const-string v1, "viewResume MusicView"

    .line 536
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    .line 542
    iput v1, v0, Landroid/os/Message;->what:I

    .line 543
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 544
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 549
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    if-eqz v0, :cond_1

    .line 551
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    .line 552
    iput v1, v0, Landroid/os/Message;->what:I

    .line 553
    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayType()I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 554
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/MusicView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 560
    :cond_1
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    if-eqz v0, :cond_2

    .line 561
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v1, Lcom/neusoft/qdrivelink/music/MusicView$2;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/music/MusicView$2;-><init>(Lcom/neusoft/qdrivelink/music/MusicView;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setPlayMessage(Lcom/neusoft/qdrivelink/music/service/PlayMessage;)V

    :cond_2
    return-void
.end method
