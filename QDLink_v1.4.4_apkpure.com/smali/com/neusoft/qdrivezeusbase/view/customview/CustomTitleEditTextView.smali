.class public Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "CustomTitleEditTextView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;
    }
.end annotation


# instance fields
.field private et_search_key:Landroid/widget/EditText;

.field private exitFlag:Z

.field private iv_back:Landroid/widget/ImageView;

.field private iv_del:Landroid/widget/ImageView;

.field private iv_mic:Landroid/widget/ImageView;

.field private mSearchClickListener:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;

.field private tv_search:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 103
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 65
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->exitFlag:Z

    .line 104
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->exitFlag:Z

    .line 109
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 65
    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->exitFlag:Z

    .line 114
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)V
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->pageBack()V

    return-void
.end method

.method static synthetic access$100(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/EditText;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->et_search_key:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$200(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/ImageView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->iv_del:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Landroid/widget/TextView;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->tv_search:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->mSearchClickListener:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;

    return-object p0
.end method

.method private initListener()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->iv_back:Landroid/widget/ImageView;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$1;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->et_search_key:Landroid/widget/EditText;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$2;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$2;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->et_search_key:Landroid/widget/EditText;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$3;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$3;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 181
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->et_search_key:Landroid/widget/EditText;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$4;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 209
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->iv_del:Landroid/widget/ImageView;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$5;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$5;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->tv_search:Landroid/widget/TextView;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$6;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$6;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->iv_mic:Landroid/widget/ImageView;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$7;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$7;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initService()V
    .locals 0

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 123
    sget v0, Lcom/neusoft/qdrivezeusbase/R$layout;->custom_title_edit_text_view:I

    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 124
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 126
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->iv_back:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->iv_back:Landroid/widget/ImageView;

    .line 127
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->et_search_key:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->et_search_key:Landroid/widget/EditText;

    .line 128
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->iv_del:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->iv_del:Landroid/widget/ImageView;

    .line 129
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->tv_search:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->tv_search:Landroid/widget/TextView;

    .line 130
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->iv_mic:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->iv_mic:Landroid/widget/ImageView;

    .line 132
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->initListener()V

    .line 133
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->initService()V

    return-void
.end method

.method private registerVoiceListener()V
    .locals 0

    return-void
.end method


# virtual methods
.method public hideMic()V
    .locals 2

    .line 265
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->iv_mic:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setEditTextHintStr(Ljava/lang/String;)V
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->et_search_key:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSearchClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->mSearchClickListener:Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView$SearchClickListener;

    return-void
.end method

.method public showMic()V
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->iv_mic:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public viewDestroy()V
    .locals 1

    .line 339
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewDestroy()V

    const/4 v0, 0x1

    .line 340
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->exitFlag:Z

    return-void
.end method

.method public viewPause()V
    .locals 0

    .line 351
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewPause()V

    .line 357
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->showMic()V

    return-void
.end method

.method public viewResume()V
    .locals 0

    .line 362
    invoke-super {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 363
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleEditTextView;->registerVoiceListener()V

    return-void
.end method
