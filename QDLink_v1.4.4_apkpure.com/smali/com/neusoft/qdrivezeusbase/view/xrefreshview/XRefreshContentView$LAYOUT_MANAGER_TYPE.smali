.class public final enum Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;
.super Ljava/lang/Enum;
.source "XRefreshContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LAYOUT_MANAGER_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

.field public static final enum GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

.field public static final enum LINEAR:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

.field public static final enum STAGGERED_GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 883
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    const/4 v1, 0x0

    const-string v2, "LINEAR"

    invoke-direct {v0, v2, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    const/4 v2, 0x1

    const-string v3, "GRID"

    invoke-direct {v0, v3, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    const/4 v3, 0x2

    const-string v4, "STAGGERED_GRID"

    invoke-direct {v0, v4, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    .line 882
    sget-object v4, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->LINEAR:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    aput-object v4, v0, v1

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->STAGGERED_GRID:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->$VALUES:[Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 882
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;
    .locals 1

    .line 882
    const-class v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;
    .locals 1

    .line 882
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->$VALUES:[Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    invoke-virtual {v0}, [Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshContentView$LAYOUT_MANAGER_TYPE;

    return-object v0
.end method
