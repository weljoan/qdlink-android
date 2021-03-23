.class public Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "BaseLayoutView.java"


# static fields
.field public static mDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout; = null

.field public static mToastLayout:Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView; = null

.field private static final showToastLong:I = 0xbb8

.field private static final showToastShort:I = 0x708

.field private static volatile showToastTime:J


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mParam:Landroid/os/Bundle;

.field private mResultParam:Landroid/os/Bundle;

.field private mToast:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 53
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mResultParam:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToast:Landroid/widget/Toast;

    .line 54
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mResultParam:Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToast:Landroid/widget/Toast;

    .line 59
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_0

    .line 61
    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mParam:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mResultParam:Landroid/os/Bundle;

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToast:Landroid/widget/Toast;

    .line 67
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mResultParam:Landroid/os/Bundle;

    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToast:Landroid/widget/Toast;

    .line 72
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .line 33
    sget-wide v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToastTime:J

    return-wide v0
.end method

.method public static cancelToast()V
    .locals 2

    .line 106
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToastLayout:Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainShowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainShowView()Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToastLayout:Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private getAppearingAnimation()Landroid/animation/Animator;
    .locals 5

    .line 423
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 424
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const-string v4, "Alpha"

    .line 425
    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 424
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getDisappearingAnimation()Landroid/animation/Animator;
    .locals 5

    .line 434
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 435
    fill-array-data v2, :array_0

    const/4 v3, 0x0

    const-string v4, "Alpha"

    .line 436
    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 435
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data
.end method

.method public static isDialogShow()Z
    .locals 1

    .line 504
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static showToast(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 139
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->cancelToast()V

    .line 141
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 146
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainShowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 149
    :cond_1
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToastLayout:Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;

    if-nez v0, :cond_2

    .line 150
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;

    invoke-direct {v0, p0}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToastLayout:Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;

    .line 153
    :cond_2
    sget-object p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToastLayout:Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;->setToast(Ljava/lang/String;)V

    .line 155
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 p1, -0x1

    invoke-direct {p0, p1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 156
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainShowView()Landroid/view/ViewGroup;

    move-result-object p1

    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mToastLayout:Lcom/neusoft/qdrivezeusbase/view/customview/CustomToastView;

    invoke-virtual {p1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    sput-wide p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToastTime:J

    .line 159
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 160
    new-instance p1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView$1;

    invoke-direct {p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView$1;-><init>()V

    add-int/lit8 p2, p2, 0x64

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static showToastLong(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0xbb8

    .line 122
    invoke-static {p0, p1, v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static showToastShort(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x708

    .line 132
    invoke-static {p0, p1, v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    .line 181
    invoke-virtual/range {v0 .. v5}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;ZZ)V

    return-void
.end method

.method protected addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZ)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v6, p5

    .line 194
    invoke-virtual/range {v0 .. v6}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;ZZZ)V

    return-void
.end method

.method protected addOrResumeMainViewToPage(ILjava/lang/Class;Landroid/os/Bundle;ZZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "ZZZ)V"
        }
    .end annotation

    .line 207
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 212
    :cond_0
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 213
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v1

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    if-nez p4, :cond_1

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    .line 216
    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewReClick()V

    :cond_1
    return-void

    .line 221
    :cond_2
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->isIsTransitionFinish()Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 225
    :cond_3
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setPageNum(I)V

    .line 227
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getCurrentView()Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 229
    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewPause()V

    :cond_4
    const/4 v1, 0x0

    if-nez p4, :cond_6

    if-eqz v0, :cond_6

    .line 232
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_6

    if-eqz p5, :cond_5

    .line 235
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    .line 236
    invoke-virtual {p1, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->setParam(Landroid/os/Bundle;)V

    .line 237
    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->pageBack(Ljava/lang/Class;)Z

    return-void

    .line 240
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    .line 241
    invoke-virtual {p1, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->setParam(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    const/4 p4, 0x2

    :try_start_0
    new-array p5, p4, [Ljava/lang/Class;

    .line 245
    const-class v0, Landroid/content/Context;

    aput-object v0, p5, v1

    const-class v0, Landroid/os/Bundle;

    aput-object v0, p5, v2

    .line 247
    invoke-virtual {p2, p5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array p4, p4, [Ljava/lang/Object;

    .line 249
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getViewContext()Landroid/content/Context;

    move-result-object p5

    aput-object p5, p4, v1

    aput-object p3, p4, v2

    .line 251
    invoke-virtual {p2, p4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p6, :cond_7

    .line 260
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->removeViewMapWithNum(I)V

    .line 261
    invoke-static {p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->addViewToList(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V

    :cond_7
    move-object p1, p2

    .line 266
    :goto_0
    :try_start_1
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 267
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 268
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setCurrentView(Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V

    .line 272
    invoke-virtual {p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-void

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    goto :goto_1

    :catch_3
    move-exception p1

    goto :goto_1

    :catch_4
    move-exception p1

    .line 254
    :goto_1
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 255
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    const-string p1, "System Error!"

    .line 256
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method protected addViewToPage(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;Z)V
    .locals 1

    .line 284
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 288
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->isIsTransitionFinish()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 292
    :cond_1
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setPageNum(I)V

    .line 294
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getCurrentView()Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 296
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewPause()V

    :cond_2
    if-eqz p3, :cond_3

    .line 300
    invoke-static {p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->addViewToList(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V

    .line 303
    :cond_3
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 304
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 305
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 307
    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setCurrentView(Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V

    .line 309
    invoke-virtual {p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    return-void
.end method

.method protected addViewToPage(ILjava/lang/Class;Landroid/os/Bundle;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/os/Bundle;",
            "Z)V"
        }
    .end annotation

    .line 321
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->isIsTransitionFinish()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 329
    :cond_1
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setPageNum(I)V

    .line 331
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getCurrentView()Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewPause()V

    :cond_2
    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Class;

    .line 338
    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-class v2, Landroid/os/Bundle;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    .line 340
    invoke-virtual {p2, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    .line 342
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getViewContext()Landroid/content/Context;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p3, v0, v4

    .line 344
    invoke-virtual {p2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p4, :cond_3

    .line 354
    invoke-static {p1, p2}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->addViewToList(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V

    .line 357
    :cond_3
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 358
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 359
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 361
    invoke-static {p2}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setCurrentView(Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V

    .line 363
    invoke-virtual {p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    .line 347
    :goto_0
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 348
    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/LogUtils;->e(Ljava/lang/String;)V

    const-string p1, "System Error!"

    .line 349
    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToastLong(Ljava/lang/String;)V

    return-void
.end method

.method public dismissDialog()V
    .locals 2

    .line 493
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_0

    .line 494
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainShowView()Landroid/view/ViewGroup;

    move-result-object v0

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 495
    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    :cond_0
    return-void
.end method

.method public getMainView()Landroid/view/View;
    .locals 1

    .line 560
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getParam()Landroid/os/Bundle;
    .locals 2

    .line 513
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mParam:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 515
    invoke-virtual {v0}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    .line 516
    iput-object v1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mParam:Landroid/os/Bundle;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getResultParam()Landroid/os/Bundle;
    .locals 1

    .line 535
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mResultParam:Landroid/os/Bundle;

    return-object v0
.end method

.method protected getViewContext()Landroid/content/Context;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public isCurrentView(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 552
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getCurrentView()Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected pageBack()V
    .locals 0

    .line 408
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->pageBack()Z

    return-void
.end method

.method protected pageBack(Ljava/lang/Class;)V
    .locals 0

    .line 415
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->pageBack(Ljava/lang/Class;)Z

    return-void
.end method

.method protected setLayoutView(Landroid/view/ViewGroup;)V
    .locals 7

    .line 371
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 372
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getAppearingAnimation()Landroid/animation/Animator;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const-wide/16 v3, 0xc8

    .line 373
    invoke-virtual {v0, v2, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const-wide/16 v5, 0x0

    .line 374
    invoke-virtual {v0, v2, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 376
    invoke-direct {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getDisappearingAnimation()Landroid/animation/Animator;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 377
    invoke-virtual {v0, v2, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    const/4 v1, 0x1

    .line 379
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 380
    invoke-virtual {v0, v1, v5, v6}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 381
    new-instance v1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView$2;

    invoke-direct {v1, p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView$2;-><init>(Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 391
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 392
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setLayoutPage(Landroid/view/ViewGroup;)V

    return-void
.end method

.method protected setMainShowView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 401
    invoke-static {p1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setMainShowView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public setParam(Landroid/os/Bundle;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mParam:Landroid/os/Bundle;

    return-void
.end method

.method public setResultParam(Landroid/os/Bundle;)V
    .locals 0

    .line 543
    iput-object p1, p0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mResultParam:Landroid/os/Bundle;

    return-void
.end method

.method public showDialog(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 2

    .line 473
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainShowView()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 477
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->isIsTransitionFinish()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 481
    :cond_1
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_2

    .line 482
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->dismissDialog()V

    .line 484
    :cond_2
    sput-object p1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->mDialogLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 485
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 486
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getMainShowView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public showToastLong(Ljava/lang/String;)V
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToastLong(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showToastShort(Ljava/lang/String;)V
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->showToastShort(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public viewDestroy()V
    .locals 0

    return-void
.end method

.method public viewPause()V
    .locals 0

    return-void
.end method

.method public viewReClick()V
    .locals 0

    return-void
.end method

.method public viewResume()V
    .locals 0

    return-void
.end method
