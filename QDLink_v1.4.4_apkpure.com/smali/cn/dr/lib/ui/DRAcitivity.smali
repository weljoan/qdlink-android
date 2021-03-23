.class public abstract Lcn/dr/lib/ui/DRAcitivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "DRAcitivity.java"


# static fields
.field protected static log:Lorg/apache/log4j/Logger;


# instance fields
.field private mDRActionBar:Landroidx/appcompat/app/ActionBar;

.field private mDRActionBarBgDrawableId:I

.field private mDRActionBarClearElevation:Z

.field private mDRActionBarTintDefaultDrawable:Z

.field protected mDRApplication:Lcn/dr/lib/app/DRApplication;

.field private mDRApplyGlobalTheme:Z

.field protected mDRContext:Landroid/content/Context;

.field private mDRGloableThemeId:I

.field private mDRNavigationColorId:I

.field private mDRNavigationTranslucent:Z

.field private mDRStatusColorId:I

.field private mDRStatusTranslucent:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRApplyGlobalTheme:Z

    .line 42
    sget v0, Lcn/dr/lib/R$style;->DRAppTheme:I

    iput v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRGloableThemeId:I

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarTintDefaultDrawable:Z

    .line 57
    sget v1, Lcn/dr/lib/R$drawable;->bg_actionbar_dr:I

    iput v1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarBgDrawableId:I

    .line 62
    iput-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarClearElevation:Z

    .line 65
    iput-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRStatusTranslucent:Z

    .line 68
    sget v1, Lcn/dr/lib/R$color;->default_bg_status:I

    iput v1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRStatusColorId:I

    .line 71
    iput-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRNavigationTranslucent:Z

    .line 74
    sget v0, Lcn/dr/lib/R$color;->default_bg_navigation:I

    iput v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRNavigationColorId:I

    return-void
.end method

.method private addActivity()V
    .locals 1

    .line 122
    iget-object v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRApplication:Lcn/dr/lib/app/DRApplication;

    invoke-virtual {v0, p0}, Lcn/dr/lib/app/DRApplication;->addActivity(Landroid/app/Activity;)V

    return-void
.end method

.method private configLog4j()V
    .locals 1

    .line 101
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/Logger;->getLogger(Ljava/lang/Class;)Lorg/apache/log4j/Logger;

    move-result-object v0

    sput-object v0, Lcn/dr/lib/ui/DRAcitivity;->log:Lorg/apache/log4j/Logger;

    return-void
.end method

.method private initAppTheme()V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRApplyGlobalTheme:Z

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRApplication:Lcn/dr/lib/app/DRApplication;

    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getDRGloableThemeId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/dr/lib/app/DRApplication;->setTheme(I)V

    :cond_0
    return-void
.end method

.method private initApplication()V
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/dr/lib/app/DRApplication;

    iput-object v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRApplication:Lcn/dr/lib/app/DRApplication;

    .line 111
    iget-object v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRApplication:Lcn/dr/lib/app/DRApplication;

    invoke-virtual {v0}, Lcn/dr/lib/app/DRApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRContext:Landroid/content/Context;

    .line 114
    invoke-direct {p0}, Lcn/dr/lib/ui/DRAcitivity;->addActivity()V

    return-void
.end method

.method private initSystemBarTranslucent()V
    .locals 4

    .line 200
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 202
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRStatusTranslucent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 208
    new-instance v0, Lcn/dr/lib/ui/systembar/SystemBarTintManager;

    invoke-direct {v0, p0}, Lcn/dr/lib/ui/systembar/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    .line 209
    invoke-virtual {v0, v1}, Lcn/dr/lib/ui/systembar/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 211
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getDRStatusColorId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 212
    invoke-virtual {v0, v2}, Lcn/dr/lib/ui/systembar/SystemBarTintManager;->setStatusBarTintColor(I)V

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRNavigationTranslucent:Z

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v2, 0x8000000

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 220
    new-instance v0, Lcn/dr/lib/ui/systembar/SystemBarTintManager;

    invoke-direct {v0, p0}, Lcn/dr/lib/ui/systembar/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    .line 221
    invoke-virtual {v0, v1}, Lcn/dr/lib/ui/systembar/SystemBarTintManager;->setNavigationBarTintEnabled(Z)V

    .line 222
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getDRNavigationColorId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 223
    invoke-virtual {v0, v1}, Lcn/dr/lib/ui/systembar/SystemBarTintManager;->setNavigationBarTintColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getDRActionBarBgDrawableId()I
    .locals 1

    .line 273
    iget v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarBgDrawableId:I

    return v0
.end method

.method public getDRActionBarClearElevation()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarClearElevation:Z

    return v0
.end method

.method public getDRActionBarTintDefaultDrawable()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarTintDefaultDrawable:Z

    return v0
.end method

.method public getDRApplyGlobalTheme()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRApplyGlobalTheme:Z

    return v0
.end method

.method public getDRGloableThemeId()I
    .locals 1

    .line 243
    iget v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRGloableThemeId:I

    return v0
.end method

.method public getDRNavigationColorId()I
    .locals 1

    .line 334
    iget v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRNavigationColorId:I

    return v0
.end method

.method public getDRNavigationTranslucent()Z
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRNavigationTranslucent:Z

    return v0
.end method

.method public getDRStatusColorId()I
    .locals 1

    .line 308
    iget v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRStatusColorId:I

    return v0
.end method

.method public getDRStatusTranslucent()Z
    .locals 1

    .line 295
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRStatusTranslucent:Z

    return v0
.end method

.method protected initActionBar()V
    .locals 3

    .line 163
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBar:Landroidx/appcompat/app/ActionBar;

    .line 165
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarClearElevation:Z

    if-eqz v0, :cond_0

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setElevation(F)V

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarTintDefaultDrawable:Z

    if-eqz v0, :cond_1

    .line 174
    iget-object v0, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBar:Landroidx/appcompat/app/ActionBar;

    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->getDRActionBarBgDrawableId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method protected abstract initActionBarParams()V
.end method

.method protected abstract initAppThemeParams()V
.end method

.method protected abstract initSystemBarParams()V
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 78
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-direct {p0}, Lcn/dr/lib/ui/DRAcitivity;->configLog4j()V

    .line 82
    invoke-direct {p0}, Lcn/dr/lib/ui/DRAcitivity;->initApplication()V

    .line 84
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->initAppThemeParams()V

    .line 86
    invoke-direct {p0}, Lcn/dr/lib/ui/DRAcitivity;->initAppTheme()V

    .line 88
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->initActionBarParams()V

    .line 90
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->initActionBar()V

    .line 92
    invoke-virtual {p0}, Lcn/dr/lib/ui/DRAcitivity;->initSystemBarParams()V

    .line 94
    invoke-direct {p0}, Lcn/dr/lib/ui/DRAcitivity;->initSystemBarTranslucent()V

    return-void
.end method

.method public setDRActionBarBgDrawableId(I)V
    .locals 0

    .line 282
    iput p1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarBgDrawableId:I

    return-void
.end method

.method public setDRActionBarClearElevation(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarClearElevation:Z

    return-void
.end method

.method public setDRActionBarTintDefaultDrawable(Z)V
    .locals 0

    .line 265
    iput-boolean p1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRActionBarTintDefaultDrawable:Z

    return-void
.end method

.method public setDRApplyGlobalTheme(Z)V
    .locals 0

    .line 239
    iput-boolean p1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRApplyGlobalTheme:Z

    return-void
.end method

.method public setDRGloableThemeId(I)V
    .locals 0

    .line 252
    iput p1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRGloableThemeId:I

    return-void
.end method

.method public setDRNavigationColorId(I)V
    .locals 0

    .line 343
    iput p1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRNavigationColorId:I

    return-void
.end method

.method public setDRNavigationTranslucent(Z)V
    .locals 0

    .line 330
    iput-boolean p1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRNavigationTranslucent:Z

    return-void
.end method

.method public setDRStatusColorId(I)V
    .locals 0

    .line 317
    iput p1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRStatusColorId:I

    return-void
.end method

.method public setDRStatusTranslucent(Z)V
    .locals 0

    .line 304
    iput-boolean p1, p0, Lcn/dr/lib/ui/DRAcitivity;->mDRStatusTranslucent:Z

    return-void
.end method
