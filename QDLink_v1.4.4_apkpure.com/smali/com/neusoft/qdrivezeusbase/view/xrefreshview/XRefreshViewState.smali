.class public final enum Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;
.super Ljava/lang/Enum;
.source "XRefreshViewState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

.field public static final enum STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

.field public static final enum STATE_FINISHED:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

.field public static final enum STATE_LOADING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

.field public static final enum STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

.field public static final enum STATE_READY:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

.field public static final enum STATE_REFRESHING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

.field public static final enum STATE_RELEASE_TO_LOADMORE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    const/4 v1, 0x0

    const-string v2, "STATE_READY"

    invoke-direct {v0, v2, v1}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_READY:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    const/4 v2, 0x1

    const-string v3, "STATE_REFRESHING"

    invoke-direct {v0, v3, v2}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_REFRESHING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    const/4 v3, 0x2

    const-string v4, "STATE_NORMAL"

    invoke-direct {v0, v4, v3}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    const/4 v4, 0x3

    const-string v5, "STATE_LOADING"

    invoke-direct {v0, v5, v4}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_LOADING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    const/4 v5, 0x4

    const-string v6, "STATE_COMPLETE"

    invoke-direct {v0, v6, v5}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    const/4 v6, 0x5

    const-string v7, "STATE_FINISHED"

    invoke-direct {v0, v7, v6}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_FINISHED:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    new-instance v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    const/4 v7, 0x6

    const-string v8, "STATE_RELEASE_TO_LOADMORE"

    invoke-direct {v0, v8, v7}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_RELEASE_TO_LOADMORE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    .line 3
    sget-object v8, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_READY:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    aput-object v8, v0, v1

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_REFRESHING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_NORMAL:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_LOADING:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_COMPLETE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_FINISHED:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->STATE_RELEASE_TO_LOADMORE:Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    aput-object v1, v0, v7

    sput-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->$VALUES:[Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;
    .locals 1

    .line 3
    const-class v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    return-object p0
.end method

.method public static values()[Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;
    .locals 1

    .line 3
    sget-object v0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->$VALUES:[Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    invoke-virtual {v0}, [Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshViewState;

    return-object v0
.end method
