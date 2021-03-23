.class public Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;
.super Landroid/widget/LinearLayout;
.source "XRefreshViewFooter.java"

# interfaces
.implements Lcom/neusoft/qdrivezeusbase/view/xrefreshview/callback/IFooterCallBack;


# instance fields
.field private mClickView:Landroid/widget/TextView;

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mHintView:Landroid/widget/TextView;

.field private mProgressBar:Landroid/view/View;

.field private showing:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->showing:Z

    .line 25
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x1

    .line 21
    iput-boolean p2, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->showing:Z

    .line 30
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 3

    .line 111
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mContext:Landroid/content/Context;

    .line 112
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/neusoft/qdrivezeusbase/R$layout;->xrefreshview_footer:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 113
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    sget v0, Lcom/neusoft/qdrivezeusbase/R$id;->x_refresh_view_footer_content:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mContentView:Landroid/view/View;

    .line 116
    sget v0, Lcom/neusoft/qdrivezeusbase/R$id;->x_refresh_view_footer_progressbar:I

    .line 117
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mProgressBar:Landroid/view/View;

    .line 118
    sget v0, Lcom/neusoft/qdrivezeusbase/R$id;->x_refresh_view_footer_hint_text_view:I

    .line 119
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mHintView:Landroid/widget/TextView;

    .line 120
    sget v0, Lcom/neusoft/qdrivezeusbase/R$id;->x_refresh_view_footer_click_text_view:I

    .line 121
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public callWhenNotAutoLoadMore(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    sget v1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_footer_hint_click:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 36
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter$1;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getFooterHeight()I
    .locals 1

    .line 126
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->showing:Z

    return v0
.end method

.method public onReleaseToLoadMore()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mHintView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    sget v1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_footer_hint_release:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 67
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onStateComplete()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mHintView:Landroid/widget/TextView;

    sget v1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_footer_hint_complete:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 86
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mHintView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mProgressBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onStateFinish(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 73
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mHintView:Landroid/widget/TextView;

    sget v0, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_footer_hint_normal:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mHintView:Landroid/widget/TextView;

    sget v0, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_footer_hint_fail:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 78
    :goto_0
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mHintView:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mProgressBar:Landroid/view/View;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 80
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onStateReady()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mHintView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 48
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mProgressBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 49
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    sget v1, Lcom/neusoft/qdrivezeusbase/R$string;->x_refresh_view_footer_hint_click:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 50
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public onStateRefreshing()V
    .locals 3

    .line 56
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mHintView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mProgressBar:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 58
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mClickView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->show(Z)V

    return-void
.end method

.method public show(Z)V
    .locals 1

    .line 93
    iget-boolean v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->showing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 96
    :cond_0
    iput-boolean p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->showing:Z

    .line 97
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mContentView:Landroid/view/View;

    .line 98
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz p1, :cond_1

    const/4 p1, -0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 99
    :goto_0
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 100
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewFooter;->mContentView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
