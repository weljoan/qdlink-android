.class public Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "CustomLoadingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$DialogLoadingClickListener;
    }
.end annotation


# instance fields
.field private iv_close:Landroid/widget/ImageView;

.field private tv_loading:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 53
    sget v0, Lcom/neusoft/qdrivezeusbase/R$layout;->custom_loading_dialog_layout:I

    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 55
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->tv_loading:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->tv_loading:Landroid/widget/TextView;

    .line 56
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->iv_close:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->iv_close:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public dismissCustomDialog()V
    .locals 0

    .line 97
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->dismissDialog()V

    return-void
.end method

.method public setDialogCloseBtnOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$DialogLoadingClickListener;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->iv_close:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->iv_close:Landroid/widget/ImageView;

    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog$DialogLoadingClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->tv_loading:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showCustomDialog()V
    .locals 0

    .line 93
    invoke-virtual {p0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomLoadingDialog;->showDialog(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
