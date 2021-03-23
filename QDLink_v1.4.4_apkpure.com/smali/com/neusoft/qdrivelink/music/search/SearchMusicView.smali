.class public Lcom/neusoft/qdrivelink/music/search/SearchMusicView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "SearchMusicView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$View;


# instance fields
.field private audioItemList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;"
        }
    .end annotation
.end field

.field private btn_land_delete:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f07004f
    .end annotation
.end field

.field private btn_return_searchback:Landroid/widget/RelativeLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070053
    .end annotation
.end field

.field private btn_search:Landroid/widget/Button;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070054
    .end annotation
.end field

.field private btn_speak:Landroid/widget/ImageButton;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070055
    .end annotation
.end field

.field private customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

.field private edit_songsearch:Landroid/widget/AutoCompleteTextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070080
    .end annotation
.end field

.field private limit:I

.field private linearlayout_nosearch:Landroid/widget/LinearLayout;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700e3
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field mPresenter:Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;

.field private offset:I

.field private recyclerview_searchsong:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070123
    .end annotation
.end field

.field private searchlMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;

.field private total:I

.field private txt_01:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070193
    .end annotation
.end field

.field private txt_02:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070194
    .end annotation
.end field

.field private txt_03:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070195
    .end annotation
.end field

.field private txt_04:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070196
    .end annotation
.end field

.field private txt_05:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070197
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 172
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x14

    .line 154
    iput v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    .line 155
    iput v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    const/4 v0, 0x0

    .line 156
    iput v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    const/4 v0, 0x1

    .line 157
    iput v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->audioItemList:Ljava/util/List;

    .line 165
    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->mHandler:Landroid/os/Handler;

    .line 173
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 177
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    const/16 p2, 0x14

    .line 154
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    .line 155
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    const/4 p2, 0x0

    .line 156
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    const/4 p2, 0x1

    .line 157
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    const/4 p2, 0x0

    .line 162
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->audioItemList:Ljava/util/List;

    .line 165
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->mHandler:Landroid/os/Handler;

    .line 178
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 182
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0x14

    .line 154
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    .line 155
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    const/4 p2, 0x0

    .line 156
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    const/4 p2, 0x1

    .line 157
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    const/4 p2, 0x0

    .line 162
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->audioItemList:Ljava/util/List;

    .line 165
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->mHandler:Landroid/os/Handler;

    .line 183
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p2, 0x14

    .line 154
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    .line 155
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    const/4 p2, 0x0

    .line 156
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    const/4 p2, 0x1

    .line 157
    iput p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    const/4 p2, 0x0

    .line 162
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->audioItemList:Ljava/util/List;

    .line 165
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->mHandler:Landroid/os/Handler;

    .line 188
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->searchlMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->linearlayout_nosearch:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$102(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;)Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->searchlMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/Button;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->btn_search:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/ImageView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->btn_land_delete:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/widget/ImageButton;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->btn_speak:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/os/Handler;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Ljava/util/List;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->audioItemList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->recyclerview_searchsong:Landroidx/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 0

    .line 43
    invoke-virtual {p0, p1, p2, p3}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)Landroid/content/Context;
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->getViewContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private deletedOnClick(Landroid/widget/ImageView;)V
    .locals 2
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f07004f
        }
    .end annotation

    .line 144
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->btn_land_delete:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 145
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 149
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->searchlMusicRecycleViewAdapter:Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;

    if-eqz p1, :cond_0

    .line 150
    invoke-virtual {p1}, Lcom/neusoft/qdrivelink/music/adapter/SearchlMusicRecycleViewAdapter;->setList()V

    :cond_0
    return-void
.end method

.method private initService()V
    .locals 0

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    const v0, 0x7f0a003f

    .line 204
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 205
    new-instance p1, Lcom/neusoft/qdrivelink/music/search/SearchMusicPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicPresenter;-><init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)V

    .line 206
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 208
    new-instance p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p1, v0, v1, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    .line 210
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->recyclerview_searchsong:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    const/high16 v0, 0x420c0000    # 35.0f

    .line 212
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->dip2px(F)I

    move-result v0

    const/high16 v1, 0x41600000    # 14.0f

    .line 213
    invoke-virtual {p0, v1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->dip2px(F)I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->recyclerview_searchsong:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;

    invoke-direct {v3, v0, v1}, Lcom/neusoft/qdrivelink/music/customview/SpacesItemDecoration;-><init>(II)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 215
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    .line 217
    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$1;-><init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->mHandler:Landroid/os/Handler;

    .line 278
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    new-instance v0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$2;-><init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)V

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private requestSearchMusic(Ljava/lang/String;IIII)V
    .locals 6

    .line 345
    iget-object v0, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->mPresenter:Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;->requestSearchMusic(Ljava/lang/String;IIII)V

    .line 346
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->customLoadingDialog:Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;

    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->showCustomDialog()V

    return-void
.end method

.method private returnBackOnClick(Landroid/widget/RelativeLayout;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070053
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->pageBack()V

    return-void
.end method

.method private searchOnClick(Landroid/widget/Button;)V
    .locals 6
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070054
        }
    .end annotation

    .line 125
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    iget v3, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    iget v4, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    iget v5, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->requestSearchMusic(Ljava/lang/String;IIII)V

    :cond_0
    return-void
.end method

.method private speakOnClick(Landroid/widget/ImageButton;)V
    .locals 0
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070055
        }
    .end annotation

    return-void
.end method

.method private txt01OnClick(Landroid/widget/TextView;)V
    .locals 6
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070193
        }
    .end annotation

    .line 71
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0d004c

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(I)V

    .line 72
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    iget v3, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    iget v4, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    iget v5, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->requestSearchMusic(Ljava/lang/String;IIII)V

    return-void
.end method

.method private txt02OnClick(Landroid/widget/TextView;)V
    .locals 6
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070194
        }
    .end annotation

    .line 82
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0d004d

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(I)V

    .line 83
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    iget v3, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    iget v4, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    iget v5, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->requestSearchMusic(Ljava/lang/String;IIII)V

    return-void
.end method

.method private txt03OnClick(Landroid/widget/TextView;)V
    .locals 6
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070195
        }
    .end annotation

    .line 93
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0d004e

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(I)V

    .line 94
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    iget v3, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    iget v4, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    iget v5, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->requestSearchMusic(Ljava/lang/String;IIII)V

    return-void
.end method

.method private txt04OnClick(Landroid/widget/TextView;)V
    .locals 6
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070196
        }
    .end annotation

    .line 104
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0d004f

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(I)V

    .line 105
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    iget v3, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    iget v4, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    iget v5, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->requestSearchMusic(Ljava/lang/String;IIII)V

    return-void
.end method

.method private txt05OnClick(Landroid/widget/TextView;)V
    .locals 6
    .annotation runtime Lorg/xutils/view/annotation/Event;
        value = {
            0x7f070197
        }
    .end annotation

    .line 115
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    const v0, 0x7f0d0050

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setText(I)V

    .line 116
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->edit_songsearch:Landroid/widget/AutoCompleteTextView;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->type:I

    iget v3, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->offset:I

    iget v4, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->total:I

    iget v5, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->limit:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->requestSearchMusic(Ljava/lang/String;IIII)V

    return-void
.end method


# virtual methods
.method public dip2px(F)I
    .locals 2

    .line 368
    invoke-virtual {p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method

.method public responseSearchMusicList(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/neusoft/qdrivelink/music/bean/AudioItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "textwang"

    const-string v1, "searchMusicView responseSearchMusicList"

    .line 352
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iput-object p2, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->audioItemList:Ljava/util/List;

    .line 354
    new-instance p2, Landroid/os/Message;

    invoke-direct {p2}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x4

    .line 355
    iput v0, p2, Landroid/os/Message;->what:I

    .line 356
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 357
    iget-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPresenter(Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;)V
    .locals 0

    .line 194
    iput-object p1, p0, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->mPresenter:Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 43
    check-cast p1, Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView;->setPresenter(Lcom/neusoft/qdrivelink/music/search/SearchMusicContract$Presenter;)V

    return-void
.end method

.method public viewResume()V
    .locals 2

    .line 321
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 325
    sget-object v0, Lcom/neusoft/qdrivelink/music/customview/MusicConstant;->musicPlayService:Lcom/neusoft/qdrivelink/music/service/MusicPlayService;

    new-instance v1, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$3;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivelink/music/search/SearchMusicView$3;-><init>(Lcom/neusoft/qdrivelink/music/search/SearchMusicView;)V

    invoke-virtual {v0, v1}, Lcom/neusoft/qdrivelink/music/service/MusicPlayService;->setPlayState(Lcom/neusoft/qdrivelink/music/service/PlayState;)V

    return-void
.end method
