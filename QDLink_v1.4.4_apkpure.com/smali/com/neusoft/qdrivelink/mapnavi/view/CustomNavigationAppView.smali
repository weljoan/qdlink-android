.class public Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "CustomNavigationAppView.java"


# instance fields
.field private backgroundId:I

.field private iconId:I

.field private isExit:Z

.field private iv_app_icon:Landroid/widget/ImageView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f0700ad
    .end annotation
.end field

.field private strName:Ljava/lang/String;

.field private tv_app_name:Landroid/widget/TextView;
    .annotation runtime Lorg/xutils/view/annotation/ViewInject;
        value = 0x7f070168
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, p2, v0}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, ""

    .line 32
    iput-object p3, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->strName:Ljava/lang/String;

    const/4 p3, -0x1

    .line 37
    iput p3, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->iconId:I

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->isExit:Z

    .line 41
    iput p3, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->backgroundId:I

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->initCustomAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initCustomAttrs(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 68
    sget-object v0, Lcom/neusoft/qdrivelink/R$styleable;->CustomNavigationAppView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x3

    const v1, 0x7f0d0066

    .line 70
    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->strName:Ljava/lang/String;

    const/4 p1, 0x1

    const v0, 0x7f0b0019

    .line 74
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->iconId:I

    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 76
    invoke-virtual {p2, v0, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->isExit:Z

    const v0, 0x7f0600d6

    .line 78
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->backgroundId:I

    .line 80
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0a0022

    .line 91
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 92
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 94
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->iv_app_icon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->iconId:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 95
    iget-object p1, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->tv_app_name:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->strName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget p1, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->backgroundId:I

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setBackgroundResource(I)V

    .line 98
    iget-boolean p1, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->isExit:Z

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setCustomExist(Z)V

    return-void
.end method


# virtual methods
.method public isCustomExist()Z
    .locals 1

    .line 116
    iget-boolean v0, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->isExit:Z

    return v0
.end method

.method public setCustomExist(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->isExit:Z

    if-nez p1, :cond_0

    const p1, 0x3ecccccd    # 0.4f

    .line 109
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 111
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/mapnavi/view/CustomNavigationAppView;->setAlpha(F)V

    :goto_0
    return-void
.end method
