.class public Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "CustomDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;
    }
.end annotation


# instance fields
.field private cl_button:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mClickListener:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;

.field private tv_cancel:Landroid/widget/TextView;

.field private tv_confirm:Landroid/widget/TextView;

.field private tv_confirm_single:Landroid/widget/TextView;

.field private tv_title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->initView(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->mClickListener:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;

    return-object p0
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 73
    sget v0, Lcom/neusoft/qdrivezeusbase/R$layout;->custom_dialog_layout:I

    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 74
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 75
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->tv_dialog_title:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_title:Landroid/widget/TextView;

    .line 76
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->cl_button:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->cl_button:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 77
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->tv_confirm:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_confirm:Landroid/widget/TextView;

    .line 78
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->tv_cancel:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_cancel:Landroid/widget/TextView;

    .line 79
    sget p1, Lcom/neusoft/qdrivezeusbase/R$id;->tv_confirm_single:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_confirm_single:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public dismissCustomDialog()V
    .locals 0

    .line 163
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->dismissDialog()V

    return-void
.end method

.method public setCancelText(Ljava/lang/String;)V
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_cancel:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setConfirmSingle()V
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->cl_button:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_confirm_single:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setConfirmText(Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_confirm:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_confirm_single:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDialogOnClickListener(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;)V
    .locals 1

    .line 98
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->mClickListener:Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$DialogClickListener;

    .line 100
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_confirm:Landroid/widget/TextView;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$1;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_cancel:Landroid/widget/TextView;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$2;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$2;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_confirm_single:Landroid/widget/TextView;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$3;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog$3;-><init>(Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->tv_title:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showCustomDialog()V
    .locals 0

    .line 159
    invoke-virtual {p0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomDialog;->showDialog(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
