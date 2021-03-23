.class public Lcom/neusoft/qdrivelink/friend/FriendView;
.super Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;
.source "FriendView.java"

# interfaces
.implements Lcom/neusoft/qdrivelink/friend/FriendContract$View;


# instance fields
.field private mPresenter:Lcom/neusoft/qdrivelink/friend/FriendContract$Presenter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;)V

    .line 28
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/friend/FriendView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 34
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/friend/FriendView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/friend/FriendView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3}, Lcom/neusoft/qdrivezeusbase/view/BaseLayoutView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    invoke-direct {p0, p1}, Lcom/neusoft/qdrivelink/friend/FriendView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    const v0, 0x7f0a002e

    .line 54
    invoke-static {p1, v0, p0}, Lcom/neusoft/qdrivelink/friend/FriendView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 55
    invoke-static {p0}, Lcom/neusoft/qdrivezeusbase/utils/xutils/MyXUtils;->initViewInject(Landroid/view/View;)V

    .line 56
    new-instance p1, Lcom/neusoft/qdrivelink/friend/FriendPresenter;

    invoke-direct {p1, p0}, Lcom/neusoft/qdrivelink/friend/FriendPresenter;-><init>(Lcom/neusoft/qdrivelink/friend/FriendView;)V

    return-void
.end method


# virtual methods
.method public setPresenter(Lcom/neusoft/qdrivelink/friend/FriendContract$Presenter;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/neusoft/qdrivelink/friend/FriendView;->mPresenter:Lcom/neusoft/qdrivelink/friend/FriendContract$Presenter;

    return-void
.end method

.method public bridge synthetic setPresenter(Ljava/lang/Object;)V
    .locals 0

    .line 19
    check-cast p1, Lcom/neusoft/qdrivelink/friend/FriendContract$Presenter;

    invoke-virtual {p0, p1}, Lcom/neusoft/qdrivelink/friend/FriendView;->setPresenter(Lcom/neusoft/qdrivelink/friend/FriendContract$Presenter;)V

    return-void
.end method
