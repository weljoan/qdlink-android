.class public Lcom/neusoft/qdrivezeusbase/view/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/neusoft/qdrivezeusbase/view/BaseActivity;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->systemCtrlButtonHidden()V

    return-void
.end method

.method private systemCtrlButtonHidden()V
    .locals 2

    .line 157
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected addSoftInputListener()V
    .locals 3

    .line 137
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/neusoft/qdrivezeusbase/view/BaseActivity$1;

    invoke-direct {v2, p0, v0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity$1;-><init>(Lcom/neusoft/qdrivezeusbase/view/BaseActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method protected clearPage()V
    .locals 1

    const/4 v0, 0x0

    .line 73
    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToastLayout:Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;

    .line 74
    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 75
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->removeViewMapWithNum(I)V

    const/4 v0, 0x1

    .line 76
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->removeViewMapWithNum(I)V

    const/4 v0, 0x2

    .line 77
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->removeViewMapWithNum(I)V

    const/4 v0, 0x3

    .line 78
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->removeViewMapWithNum(I)V

    const/4 v0, 0x4

    .line 79
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->removeViewMapWithNum(I)V

    const/4 v0, 0x5

    .line 80
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->removeViewMapWithNum(I)V

    const/4 v0, 0x6

    .line 81
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->removeViewMapWithNum(I)V

    return-void
.end method

.method protected destroyPage()V
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->clearPage()V

    const/4 v0, 0x0

    .line 66
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setMainView(Landroid/view/View;)V

    .line 67
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setLayoutPage(Landroid/view/ViewGroup;)V

    .line 68
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setLayoutParent(Landroid/view/ViewGroup;)V

    .line 69
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->clearViewMap()V

    return-void
.end method

.method protected getLayoutParent()Landroid/view/ViewGroup;
    .locals 1

    .line 112
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutParent()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 3

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 173
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 175
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 177
    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 179
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    :cond_0
    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 186
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->getResources()Landroid/content/res/Resources;

    .line 188
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 29
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 30
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->enableLog(Z)V

    .line 31
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/PermissionUtil;->getInstance(Landroid/app/Activity;)Lcom/tbruyelle/rxpermissions/RxPermissions;

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 58
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->cancelToast()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 36
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 37
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->cancelToast()V

    .line 38
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    .line 42
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getCurrentView()Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 43
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getCurrentView()Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    :cond_1
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 127
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->systemCtrlButtonHidden()V

    :cond_0
    return-void
.end method

.method protected resetMainView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public resetView()V
    .locals 1

    .line 120
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 121
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/neusoft/qdrivezeusbase/view/BaseActivity;->resetMainView(Landroid/view/View;)V

    return-void
.end method

.method protected setMainLayout(Landroid/view/ViewGroup;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutParent()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    return-void

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setLayoutParent(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected setMainView(Landroid/view/View;)V
    .locals 0

    .line 90
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setMainView(Landroid/view/View;)V

    return-void
.end method
