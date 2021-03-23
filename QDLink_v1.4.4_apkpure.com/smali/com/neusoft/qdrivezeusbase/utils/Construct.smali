.class public Lcom/neusoft/qdrivezeusbase/utils/Construct;
.super Ljava/lang/Object;
.source "Construct.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/neusoft/qdrivezeusbase/utils/Construct$VoiceTypeValue;,
        Lcom/neusoft/qdrivezeusbase/utils/Construct$DayNightTypeValue;,
        Lcom/neusoft/qdrivezeusbase/utils/Construct$PageNumType;
    }
.end annotation


# static fields
.field public static final ITEM_PAGE_NUM:I = 0xa

.field public static final KEY_DISCLAIMER_READ:Ljava/lang/String; = "KEY_DISCLAIMER_READ"

.field public static final KEY_IS_FIRST_START:Ljava/lang/String; = "KEY_IS_FIRST_START"

.field public static final SCREEN_HEIGH_PERCENT:F = 0.4f

.field public static final SCREEN_WIDTH_PERCENT:F = 0.65f

.field private static currentView:Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView; = null

.field private static isTransitionFinish:Z = true

.field private static layoutPage:Landroid/view/ViewGroup; = null

.field private static layoutParent:Landroid/view/ViewGroup; = null

.field private static mainShowView:Landroid/view/ViewGroup; = null

.field private static mainView:Landroid/view/View; = null

.field private static pageNum:I = -0x1

.field private static viewHashTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addViewToList(ILcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V
    .locals 2

    .line 153
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    .line 158
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 161
    :cond_1
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 163
    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object p1, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static clearViewMap()V
    .locals 1

    .line 171
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    const/4 v0, 0x0

    .line 175
    sput-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    return-void
.end method

.method public static getCurrentView()Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
    .locals 1

    .line 126
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->currentView:Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    return-object v0
.end method

.method public static getLayoutPage()Landroid/view/ViewGroup;
    .locals 1

    .line 113
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->layoutPage:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getLayoutParent()Landroid/view/ViewGroup;
    .locals 1

    .line 100
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->layoutParent:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getMainShowView()Landroid/view/ViewGroup;
    .locals 1

    .line 87
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->mainShowView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static getMainView()Landroid/view/View;
    .locals 1

    .line 74
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->mainView:Landroid/view/View;

    return-object v0
.end method

.method public static getPageNum()I
    .locals 1

    .line 61
    sget v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->pageNum:I

    return v0
.end method

.method public static getViewList(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;",
            ">;"
        }
    .end annotation

    .line 139
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isIsTransitionFinish()Z
    .locals 1

    .line 26
    sget-boolean v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->isTransitionFinish:Z

    return v0
.end method

.method public static pageBack()Z
    .locals 1

    const/4 v0, 0x1

    .line 197
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->pageBack(Z)Z

    move-result v0

    return v0
.end method

.method public static pageBack(Ljava/lang/Class;)Z
    .locals 7

    .line 235
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 236
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v1

    invoke-static {v1}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    .line 237
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getResultParam()Landroid/os/Bundle;

    move-result-object v1

    .line 239
    invoke-virtual {p0, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 241
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 242
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 243
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 244
    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setCurrentView(Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V

    .line 246
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    return v2

    .line 250
    :cond_0
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_3

    .line 251
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_0
    if-lez v3, :cond_3

    .line 252
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v5

    invoke-static {v5}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v5

    add-int/lit8 v6, v3, -0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    .line 253
    invoke-virtual {p0, v5}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 255
    invoke-virtual {v1}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    .line 256
    invoke-virtual {v5}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getParam()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getResultParam()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_1
    return v2

    .line 261
    :cond_2
    invoke-static {v4}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->pageBack(Z)Z

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method public static pageBack(Z)Z
    .locals 5

    .line 200
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 202
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v0

    invoke-static {v0}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 203
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v2

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v2

    sub-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    .line 204
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewPause()V

    .line 205
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewDestroy()V

    .line 208
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v2

    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 209
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getPageNum()I

    move-result v3

    invoke-static {v3}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getViewList(I)Ljava/util/ArrayList;

    move-result-object v3

    sub-int/2addr v2, v1

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    .line 212
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 213
    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 214
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->getLayoutPage()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 215
    invoke-static {v2}, Lcom/neusoft/qdrivezeusbase/utils/Construct;->setCurrentView(Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V

    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getResultParam()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Bundle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    .line 218
    invoke-virtual {v2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getParam()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->getResultParam()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 220
    :cond_0
    invoke-virtual {v2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewResume()V

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static removeViewMapWithNum(I)V
    .locals 2

    .line 179
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 184
    sget-object v0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->viewHashTable:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 186
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    .line 187
    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewPause()V

    .line 188
    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;->viewDestroy()V

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method public static setCurrentView(Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;)V
    .locals 0

    .line 130
    sput-object p0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->currentView:Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;

    return-void
.end method

.method public static setIsTransitionFinish(Z)V
    .locals 0

    .line 30
    sput-boolean p0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->isTransitionFinish:Z

    return-void
.end method

.method public static setLayoutPage(Landroid/view/ViewGroup;)V
    .locals 0

    .line 117
    sput-object p0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->layoutPage:Landroid/view/ViewGroup;

    return-void
.end method

.method public static setLayoutParent(Landroid/view/ViewGroup;)V
    .locals 0

    .line 104
    sput-object p0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->layoutParent:Landroid/view/ViewGroup;

    return-void
.end method

.method public static setMainShowView(Landroid/view/ViewGroup;)V
    .locals 0

    .line 91
    sput-object p0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->mainShowView:Landroid/view/ViewGroup;

    return-void
.end method

.method public static setMainView(Landroid/view/View;)V
    .locals 0

    .line 78
    sput-object p0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->mainView:Landroid/view/View;

    return-void
.end method

.method public static setPageNum(I)V
    .locals 0

    .line 65
    sput p0, Lcom/neusoft/qdrivezeusbase/utils/Construct;->pageNum:I

    return-void
.end method
