.class public Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "MusicPlayView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayContract$View;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final MIN_DELAY_TIME:I = 0x320

.field private static lastClickTime:J

.field public static lastI:I


# instance fields
.field private alltime:J

.field private animationRightIn:Landroid/view/animation/Animation;

.field private animationRightOut:Landroid/view/animation/Animation;

.field private flagSeekBar:Z

.field private iii:I

.field private imageLoaderUrl:Ljava/lang/String;

.field private linearlayout_anim:Landroid/widget/LinearLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700de
    .end annotation
.end field

.field private linearlayout_close:Landroid/widget/LinearLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700e1
    .end annotation
.end field

.field private linearlayout_currentlist:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700e2
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mPresenter:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayContract$Presenter;

.field private max:I

.field private menu_back_info:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ec
    .end annotation
.end field

.field private newmusic_title:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700f2
    .end annotation
.end field

.field private newmusicframelayout:Landroid/widget/LinearLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700f3
    .end annotation
.end field

.field private playListMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

.field private qd_frag_music_menu_iv:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070111
    .end annotation
.end field

.field private qd_frag_music_mode_iv:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070112
    .end annotation
.end field

.field private qd_frag_music_name_tv:Lcom/neusoft/qdrivelink/music/customview/MarqueeText;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070113
    .end annotation
.end field

.field private qd_frag_music_next_iv:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070114
    .end annotation
.end field

.field private qd_frag_music_pic_iv:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070115
    .end annotation
.end field

.field private qd_frag_music_play_iv:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070116
    .end annotation
.end field

.field private qd_frag_music_pre_iv:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070117
    .end annotation
.end field

.field private qd_frag_music_singer_tv:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070118
    .end annotation
.end field

.field private recyclerview_playlist_music_list:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070122
    .end annotation
.end field

.field private roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

.field private seekbar:Landroid/widget/SeekBar;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070141
    .end annotation
.end field

.field private txt_alltime:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070198
    .end annotation
.end field

.field private txt_nodata:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07019b
    .end annotation
.end field

.field private txt_nowtime:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07019c
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 251
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    const-string v1, ""

    .line 173
    iput-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->imageLoaderUrl:Ljava/lang/String;

    .line 229
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mHandler:Landroid/os/Handler;

    .line 233
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightIn:Landroid/view/animation/Animation;

    .line 234
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightOut:Landroid/view/animation/Animation;

    const/16 v0, 0x3e8

    .line 236
    iput v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    const/4 v0, 0x0

    .line 564
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->flagSeekBar:Z

    .line 252
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 256
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 66
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    const-string v0, ""

    .line 173
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->imageLoaderUrl:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mHandler:Landroid/os/Handler;

    .line 233
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightIn:Landroid/view/animation/Animation;

    .line 234
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightOut:Landroid/view/animation/Animation;

    const/16 p2, 0x3e8

    .line 236
    iput p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    const/4 p2, 0x0

    .line 564
    iput-boolean p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->flagSeekBar:Z

    .line 257
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 261
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 66
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    const-string v0, ""

    .line 173
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->imageLoaderUrl:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mHandler:Landroid/os/Handler;

    .line 233
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightIn:Landroid/view/animation/Animation;

    .line 234
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightOut:Landroid/view/animation/Animation;

    const/16 p2, 0x3e8

    .line 236
    iput p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    const/4 p2, 0x0

    .line 564
    iput-boolean p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->flagSeekBar:Z

    .line 262
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 266
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 66
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    const-string p3, ""

    .line 173
    iput-object p3, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->imageLoaderUrl:Ljava/lang/String;

    .line 229
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mHandler:Landroid/os/Handler;

    .line 233
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightIn:Landroid/view/animation/Animation;

    .line 234
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightOut:Landroid/view/animation/Animation;

    const/16 p2, 0x3e8

    .line 236
    iput p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    const/4 p2, 0x0

    .line 564
    iput-boolean p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->flagSeekBar:Z

    .line 267
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->playListMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->txt_nowtime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/customview/MarqueeText;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_name_tv:Lcom/neusoft/qdrivelink/music/customview/MarqueeText;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_singer_tv:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)J
    .locals 2

    .line 43
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->alltime:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;J)J
    .locals 0

    .line 43
    iput-wide p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->alltime:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->txt_alltime:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->imageLoaderUrl:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/content/Context;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1700(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/content/Context;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    return p0
.end method

.method static synthetic access$202(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;I)I
    .locals 0

    .line 43
    iput p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    return p1
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)I
    .locals 0

    .line 43
    iget p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->iii:I

    return p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Z
    .locals 0

    .line 43
    iget-boolean p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->flagSeekBar:Z

    return p0
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/SeekBar;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->seekbar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_pic_iv:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Lcom/neusoft/qdrivelink/music/customview/RoundTransform;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    return-object p0
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)Landroid/widget/TextView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->newmusic_title:Landroid/widget/TextView;

    return-object p0
.end method

.method private animRightIn()V
    .locals 3

    .line 240
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010018

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightIn:Landroid/view/animation/Animation;

    .line 241
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightIn:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method private animRightOut()V
    .locals 3

    .line 245
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f010019

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightOut:Landroid/view/animation/Animation;

    .line 246
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightOut:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method private backOnClick(Landroid/widget/ImageView;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700ec
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->pageBack()V

    return-void
.end method

.method private changeModeOnClick(Landroid/widget/ImageView;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070112
        }
    .end annotation

    .line 113
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getPlayMode()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p1, 0x0

    .line 118
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {v0, p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->changeMode(I)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->changeModeImageView(I)V

    return-void
.end method

.method private closeCurrentListOnClick(Landroid/widget/LinearLayout;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f0700e1
        }
    .end annotation

    .line 219
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->linearlayout_anim:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightOut:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->linearlayout_currentlist:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 6

    const v0, 0x7f0a004a

    .line 277
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 278
    new-instance p1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayPresenter;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V

    .line 279
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 281
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->seekbar:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 282
    sget p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->localCountSur:I

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-nez p1, :cond_6

    .line 283
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->newmusicframelayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 284
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->txt_nodata:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 290
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->linearlayout_currentlist:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 292
    new-instance p1, Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/neusoft/qdrivelink/music/customview/RoundTransform;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->roundTransform:Lcom/neusoft/qdrivelink/music/customview/RoundTransform;

    .line 295
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animRightIn()V

    .line 296
    invoke-direct {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animRightOut()V

    .line 299
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-direct {p1, v1, v3, v2, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 300
    new-instance p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 303
    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->recyclerview_playlist_music_list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/high16 p1, 0x41200000    # 10.0f

    .line 305
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->dip2px(FLandroid/content/Context;)I

    move-result p1

    const/4 v1, 0x0

    .line 306
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->dip2px(FLandroid/content/Context;)I

    move-result v1

    .line 307
    iget-object v4, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->recyclerview_playlist_music_list:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;

    invoke-direct {v5, p1, v1}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;-><init>(II)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 309
    new-instance p1, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    sget-object v4, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    iget-object v5, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->recyclerview_playlist_music_list:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p1, v1, v4, v5}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->playListMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    .line 310
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->recyclerview_playlist_music_list:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->playListMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 314
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->playListMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    new-instance v1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$1;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$1;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V

    invoke-virtual {p1, v1}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->setOnItemClickListener(Lcom/neusoft/qdrivelink/music/adapter/OnItemClickListener;)V

    .line 326
    new-instance p1, Landroid/os/Handler;

    new-instance v1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$2;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V

    invoke-direct {p1, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mHandler:Landroid/os/Handler;

    .line 427
    sput v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    .line 428
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    if-eqz p1, :cond_5

    .line 429
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->newmusic_title:Landroid/widget/TextView;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 430
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_name_tv:Lcom/neusoft/qdrivelink/music/customview/MarqueeText;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getSongName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/customview/MarqueeText;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_singer_tv:Landroid/widget/TextView;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getArtistName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 432
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->alltime:J

    .line 433
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->alltime:J

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->formatTimeMin(J)I

    move-result p1

    iput p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    .line 434
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->seekbar:Landroid/widget/SeekBar;

    iget v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    .line 435
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->txt_alltime:Landroid/widget/TextView;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 436
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->txt_nowtime:Landroid/widget/TextView;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getCurrentPositon()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->formatTime(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 438
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getCurrentPositon()J

    move-result-wide v0

    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v4, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v4

    cmp-long p1, v0, v4

    if-gez p1, :cond_0

    .line 439
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getCurrentPositon()J

    move-result-wide v0

    iget p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    int-to-long v4, p1

    mul-long v0, v0, v4

    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v4, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v4}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v4

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getDuration()J

    move-result-wide v4

    div-long/2addr v0, v4

    .line 444
    :cond_0
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x102

    .line 445
    iput v0, p1, Landroid/os/Message;->what:I

    .line 446
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->currentPlayMusicList:Ljava/util/List;

    sget-object v1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivelink/music/bean/AudioItem;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/bean/AudioItem;->getAlbumImage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->imageLoaderUrl:Ljava/lang/String;

    .line 447
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 453
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getPlayMode()I

    move-result p1

    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v3, :cond_1

    goto :goto_0

    .line 461
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_mode_iv:Landroid/widget/ImageView;

    const v0, 0x7f060084

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 458
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_mode_iv:Landroid/widget/ImageView;

    const v0, 0x7f060085

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 455
    :cond_3
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_mode_iv:Landroid/widget/ImageView;

    const v0, 0x7f06007f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 465
    :goto_0
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result p1

    if-nez p1, :cond_4

    .line 466
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_play_iv:Landroid/widget/ImageView;

    const v0, 0x7f060086

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 469
    :cond_4
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_play_iv:Landroid/widget/ImageView;

    const v0, 0x7f060082

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 475
    :cond_5
    :goto_1
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$3;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setSeekChanged(Lcom/neusoft/qdrivelink/music/service/SeekChanged;)V

    .line 490
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$4;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$4;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setPlayMessage(Lcom/neusoft/qdrivelink/music/service/PlayMessage;)V

    .line 504
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$5;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$5;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setPlayOrPauseCallback(Lcom/neusoft/qdrivelink/music/service/PlayOrPauseCallback;)V

    .line 514
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$6;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView$6;-><init>(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;)V

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setPlayState(Lcom/neusoft/qdrivelink/music/service/PlayState;)V

    goto :goto_2

    .line 528
    :cond_6
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->linearlayout_currentlist:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 529
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->newmusicframelayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 530
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->txt_nodata:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    return-void
.end method

.method public static isFastClick()Z
    .locals 7

    .line 631
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 632
    sget-wide v2, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x320

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 635
    :goto_0
    sput-wide v0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastClickTime:J

    return v2
.end method

.method private nextMusicOnClick(Landroid/widget/ImageView;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070114
        }
    .end annotation

    const/4 p1, 0x0

    .line 168
    sput p1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    .line 169
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->nextMusic()V

    return-void
.end method

.method private playListOnClick(Landroid/widget/ImageView;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070111
        }
    .end annotation

    .line 185
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->linearlayout_currentlist:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 186
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->linearlayout_anim:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->animationRightIn:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 187
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->playListMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;

    if-eqz p1, :cond_0

    .line 188
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getCurrentPlayIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/neusoft/qdrivelink/music/adapter/PlayListMusicRecycleViewAdapter;->setSelectedPosition(I)V

    :cond_0
    return-void
.end method

.method private playOrPauseMusicOnClick(Landroid/widget/ImageView;)V
    .locals 1
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070116
        }
    .end annotation

    .line 146
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 147
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playLocalMusic()V

    goto :goto_0

    .line 148
    :cond_0
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result p1

    if-nez p1, :cond_1

    .line 150
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->pauseMusic()V

    goto :goto_0

    .line 151
    :cond_1
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 153
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->startMusice()V

    :cond_2
    :goto_0
    return-void
.end method

.method private preMusicOnClick(Landroid/widget/ImageView;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070117
        }
    .end annotation

    const/4 p1, 0x0

    .line 133
    sput p1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    .line 134
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->preMusic()V

    return-void
.end method


# virtual methods
.method public changeModeImageView(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 559
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_mode_iv:Landroid/widget/ImageView;

    const v0, 0x7f060084

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 556
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_mode_iv:Landroid/widget/ImageView;

    const v0, 0x7f060085

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 553
    :cond_2
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_mode_iv:Landroid/widget/ImageView;

    const v0, 0x7f06007f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 575
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onProgressChanged: i:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "seekbar"

    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iput p2, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->iii:I

    .line 577
    iget-wide v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->alltime:J

    int-to-long p1, p2

    mul-long v0, v0, p1

    iget p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    int-to-long p1, p1

    div-long/2addr v0, p1

    .line 578
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->txt_nowtime:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->formatTime(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    const-string p1, "seekbar"

    const-string v0, "onStartTrackingTouch"

    .line 591
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 593
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->playLocalMusic()V

    :cond_0
    const/4 p1, 0x1

    .line 595
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->flagSeekBar:Z

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .line 604
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onStopTrackingTouch MusicConstant.musicPlayService.getIsPlayMusic():"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {v0}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ",max:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "seekbar"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->getIsPlayMusic()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 608
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->startMusice()V

    .line 611
    :cond_0
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    if-eqz p1, :cond_1

    .line 612
    sget-object p1, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayBinder:Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;

    iget v0, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->iii:I

    iget v1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->max:I

    invoke-virtual {p1, v0, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService$MusicPlayBinder;->seekTo(II)V

    .line 619
    :cond_1
    iget p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->iii:I

    sput p1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->lastI:I

    const/4 p1, 0x0

    .line 622
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->flagSeekBar:Z

    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayContract$Presenter;)V
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->mPresenter:Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->setPresenter(Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayContract$Presenter;)V

    return-void
.end method

.method public showPlayOrPause(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_play_iv:Landroid/widget/ImageView;

    const v0, 0x7f060082

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 540
    :cond_1
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/onlinemusic/MusicPlayView;->qd_frag_music_play_iv:Landroid/widget/ImageView;

    const v0, 0x7f060086

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method
