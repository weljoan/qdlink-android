.class synthetic Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$6;
.super Ljava/lang/Object;
.source "XRefreshContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$neusoft$qdrivezeusbase$view$xrefreshview$XRefreshContentView$LAYOUT_MANAGER_TYPE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 521
    invoke-static {}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->values()[Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$6;->$SwitchMap$com$neusoft$qdrivezeusbase$view$xrefreshview$XRefreshContentView$LAYOUT_MANAGER_TYPE:[I

    :try_start_0
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$6;->$SwitchMap$com$neusoft$qdrivezeusbase$view$xrefreshview$XRefreshContentView$LAYOUT_MANAGER_TYPE:[I

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$6;->$SwitchMap$com$neusoft$qdrivezeusbase$view$xrefreshview$XRefreshContentView$LAYOUT_MANAGER_TYPE:[I

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$6;->$SwitchMap$com$neusoft$qdrivezeusbase$view$xrefreshview$XRefreshContentView$LAYOUT_MANAGER_TYPE:[I

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    invoke-virtual {v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    return-void
.end method
