.class public Lcom/neusoft/qdrivezeusbase/view/xrefreshview/view/XWebView;
.super Landroid/webkit/WebView;
.source "XWebView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public computeVerticalScrollRange()I
    .locals 1

    .line 31
    invoke-super {p0}, Landroid/webkit/WebView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public isBottom()Z
    .locals 3

    .line 26
    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/view/XWebView;->computeVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/view/XWebView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/neusoft/qdrivezeusbase/view/xrefreshview/view/XWebView;->getScrollY()I

    move-result v2

    add-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
