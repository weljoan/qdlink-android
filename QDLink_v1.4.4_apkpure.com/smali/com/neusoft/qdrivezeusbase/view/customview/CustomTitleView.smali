.class public Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "CustomTitleView.java"


# instance fields
.field private iv_back:Landroid/widget/ImageView;

.field private iv_right:Landroid/widget/ImageView;

.field private tv_right:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;)V
    .locals 0

    .line 21
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->pageBack()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 64
    sget v0, Lcom/neusoft/qdrivezeusbase/R$layout;->custom_title_view:I

    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 65
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 67
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->iv_back:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->iv_back:Landroid/widget/ImageView;

    .line 68
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->tv_title:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_title:Landroid/widget/TextView;

    .line 69
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->tv_right:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    .line 70
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->iv_right:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->iv_right:Landroid/widget/ImageView;

    .line 71
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->iv_back:Landroid/widget/ImageView;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public setBackHidden()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->iv_back:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public setRightImage(Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 2

    if-nez p1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->iv_right:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->iv_right:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->iv_right:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 145
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->iv_right:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightText(Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 121
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 127
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setRightText(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 2

    .line 102
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_right:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomTitleView;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
