.class public Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;
.super Landroid/widget/LinearLayout;
.source "XRefreshViewHeader.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IHeaderCallBack;


# instance fields
.field private final ROTATE_ANIM_DURATION:I

.field private mArrowImageView:Landroid/widget/ImageView;

.field private mContent:Landroid/view/ViewGroup;

.field private mHeaderTimeTextView:Landroid/widget/TextView;

.field private mHintTextView:Landroid/widget/TextView;

.field private mOkImageView:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRotateDownAnim:Landroid/view/animation/Animation;

.field private mRotateUpAnim:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0xb4

    .line 31
    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->ROTATE_ANIM_DURATION:I

    .line 35
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p2, 0xb4

    .line 31
    iput p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->ROTATE_ANIM_DURATION:I

    .line 44
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 8

    .line 48
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/neusoft/qdrivezeusbase/R$layout;->xrefreshview_header:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mContent:Landroid/view/ViewGroup;

    .line 50
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->x_refresh_view_header_arrow:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    .line 51
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->x_refresh_view_header_ok:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mOkImageView:Landroid/widget/ImageView;

    .line 52
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->x_refresh_view_header_hint_text_view:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mHintTextView:Landroid/widget/TextView;

    .line 53
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->x_refresh_view_header_time:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mHeaderTimeTextView:Landroid/widget/TextView;

    .line 54
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->x_refresh_view_header_progressbar:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    .line 56
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, -0x3ccc0000    # -180.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    .line 58
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    const-wide/16 v0, 0xb4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 59
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 60
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x1

    const/high16 v7, 0x3f000000    # 0.5f

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    .line 63
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 64
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {p1, v0}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method


# virtual methods
.method public getHeaderHeight()I
    .locals 1

    .line 150
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public hide()V
    .locals 1

    const/16 v0, 0x8

    .line 98
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->setVisibility(I)V

    return-void
.end method

.method public onHeaderMove(DII)V
    .locals 0

    return-void
.end method

.method public onStateFinish(Z)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mOkImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 138
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mHintTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    sget p1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_header_hint_loaded:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_header_hint_loaded_fail:I

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 140
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mHeaderTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onStateNormal()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mOkImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mRotateDownAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 111
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mHintTextView:Landroid/widget/TextView;

    sget v1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_header_hint_normal:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onStateReady()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mOkImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 118
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 120
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mRotateUpAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 121
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mHintTextView:Landroid/widget/TextView;

    sget v1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_header_hint_ready:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onStateRefreshing()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 128
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mArrowImageView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mOkImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 131
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mHintTextView:Landroid/widget/TextView;

    sget v1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_header_hint_loading:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setRefreshTime(J)V
    .locals 2

    .line 69
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    .line 72
    div-long/2addr v0, p1

    const-wide/16 p1, 0x3c

    div-long/2addr v0, p1

    long-to-int p1, v0

    .line 74
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 76
    sget p1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_refresh_just_now:I

    .line 77
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/16 v0, 0x3c

    if-ge p1, v0, :cond_1

    .line 79
    sget v0, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_refresh_minutes_ago:I

    .line 80
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 81
    invoke-static {p2, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/16 v1, 0x5a0

    if-ge p1, v1, :cond_2

    .line 83
    sget v1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_refresh_hours_ago:I

    .line 84
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 85
    div-int/2addr p1, v0

    invoke-static {p2, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 87
    :cond_2
    sget v1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_refresh_days_ago:I

    .line 88
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 89
    div-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x18

    invoke-static {p2, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/utils/RefreshUtils;->format(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    .line 91
    :goto_0
    iget-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->mHeaderTimeTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public show()V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewHeader;->setVisibility(I)V

    return-void
.end method
