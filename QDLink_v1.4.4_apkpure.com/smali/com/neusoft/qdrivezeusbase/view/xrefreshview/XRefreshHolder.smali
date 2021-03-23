.class public Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;
.super Ljava/lang/Object;
.source "XRefreshHolder.java"


# instance fields
.field public mOffsetY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFooterPullUp()Z
    .locals 1

    .line 16
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasHeaderPullDown()Z
    .locals 1

    .line 12
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOverHeader(I)Z
    .locals 1

    .line 19
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    neg-int p1, p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public move(I)V
    .locals 1

    .line 8
    iget v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/XRefreshHolder;->mOffsetY:I

    return-void
.end method
